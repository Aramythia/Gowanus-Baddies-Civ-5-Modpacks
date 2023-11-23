-- TrollersTestLua
-- Author: Troller0001
-- DateCreated: 1/19/2017 2:58:52 PM
--------------------------------------------------------------
print("PiNewfoundlandLua.lua has been loaded!");

--Defines
local iCiv = GameInfoTypes.CIVILIZATION_PI_NEWFOUNDLAND
local iPromotionEmbarkation = GameInfoTypes.PROMOTION_EMBARKATION		
local iTechSailing = GameInfoTypes.TECH_SAILING
local iNormalEmbarkationTech = GameInfoTypes.TECH_OPTICS --I should probably use some SQL method to find the first tech that allows embarkation, in case someone edits the tech tree. Though this will suffice for now
local bMustBeInFriendlyTerritory = true;
local iDomainLand = DomainTypes.DOMAIN_LAND

local iNavalGarrisonDummy = GameInfoTypes.BUILDING_PI_NAVAL_GARRISON_PRODUCTION
local iDomainNaval = DomainTypes.DOMAIN_SEA
local iSeaResourceImprovedProduction = 15 --similair amount of production to chopping down forests

local bExpRequiresResourceWithinBorders = false; --if the nearby fish resources need to be inside your borders
local bExpResourceCanBeInEnemyBorders = true; --if the resource can be in another players's borders
local bExpRequiresResourceWorked = false; --if the nearby fish resources need to be worked
local bExpOnlyForNearestCity = true; --whether only one city can benefit from a fish resource
									 --[[
									 Priorities:
									 0: A city with a Fishing Stage
									 1) The Owner of the tile (civ-wise)
									 2) The city working the tile
									 3) The city which has the resource in its borders
									 4) The actual closest city (as the crow flies)
									 --]]
local tValidExpResources = {[GameInfoTypes.RESOURCE_FISH] = true}
local iExpResourceRange = 5; --range to check; bigger range means more lag
local iExpFromSeaResourceBuilding = GameInfoTypes.BUILDING_PI_FISHING_STAGE
local iExpDummy = GameInfoTypes.BUILDING_PI_FISHING_STAGE_EXP_DUMMY

local iBluePuttee = GameInfoTypes.UNIT_PI_BLUE_PUTTEE
local iPutteeEmbarkMoveCost = 1; --the movement cost of (dis)embarking with a Puttee
local tPutteeMoves = {}
local iPromotionEmbarked = GameInfoTypes.PROMOTION_PI_CHEAP_EMBARKATION_EMBARKED
local iPromotionDisembarked = GameInfoTypes.PROMOTION_PI_CHEAP_EMBARKATION_DISEMBARKED

--Modder's snippets
--===========================
--Whowards PlotIterators
include("PlotIterators");

---- whoward's IsCivInPlay
function IsCivInPlay(iCivType)
  for iSlot = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
    local iSlotStatus = PreGame.GetSlotStatus(iSlot)
    if (iSlotStatus == SlotStatus.SS_TAKEN or iSlotStatus == SlotStatus.SS_COMPUTER) then
      if (PreGame.GetCivilization(iSlot) == iCivType) then
        return true
      end
    end
  end
  
  return false
end

--Troller's IsCSUnitGift
--Loop through all the CSs to see if they will be able to gift the UU;
function IsCSUnitGift(iUnitType)
	print("Checking if a CS can gift ("..GameInfo.Units[iUnitType].Type..")!")						
	for i = GameDefines.MAX_MAJOR_CIVS, GameDefines.MAX_CIV_PLAYERS-1, 1 do
		local pMinor = Players[i];
		if pMinor ~= nil then
			if pMinor:IsEverAlive() then --IsEverAlive because the CS can be resurrected!
				local iTrait = pMinor:GetMinorCivTrait();
				if (iTrait == MinorCivTraitTypes.MINOR_CIV_TRAIT_MILITARISTIC) then
					if (pMinor:IsMinorCivHasUniqueUnit()) then
						local iUniqueUnit = pMinor:GetMinorCivUniqueUnit();
						if iUniqueUnit == iUnitType then
							print("A CS (ID="..i..") can gift that unit ("..GameInfo.Units[iUnitType].Type..")!")
							return true;
						end
					end
				end
			end
		end
	end
	print("No CS can gift that unit ("..GameInfo.Units[iUnitType].Type..")")
	return false;
end
--===========================

---------------------------------------------------------------
-------------------UA Lua---------------

--Embarkation at Sailing (shared across Newfoundland team)
function CheckForSailingUponTechDiscovery(iTeam,iTech,bAdopted)
	if bAdopted and iTech == iTechSailing then
		for i=0,GameDefines.MAX_MAJOR_CIVS-1 do
			local pPlayer = Players[i]
			if pPlayer:GetTeam() == iTeam and pPlayer:GetCivilizationType() == iCiv then
				print("Newfoundland researched sailing!")
				GiveAllUnitsEmbarkation(pPlayer,bMustBeInFriendlyTerritory)
			end
		end
	end
end

function GiveAllUnitsEmbarkation(pPlayer,bMustBeInFriendlyTerritory)
	local iPlayer = pPlayer:GetID()
	for pUnit in pPlayer:Units() do
		if pUnit:GetDomainType() == iDomainLand then
			local pPlot = pUnit:GetPlot()
			if (not bMustBeInFriendlyTerritory) or (pPlot:GetOwner() == iPlayer) then
				pUnit:SetHasPromotion(iPromotionEmbarkation,true)
			end
		end
	end
	print("All (appropriate) units received the Embarkation promotion")
end

--update every turn (for newly created units, etc.)
function CheckForSailingPerTurn(iPlayer)
	local pPlayer = Players[iPlayer]
	if pPlayer:GetCivilizationType() == iCiv then
		local pTeam = Teams[pPlayer:GetTeam()]
		if pTeam:IsHasTech(iTechSailing) and not pTeam:IsHasTech(iNormalEmbarkationTech) then
			print("Newfoundland researched sailing but not Optics!")
			GiveAllUnitsEmbarkation(pPlayer,bMustBeInFriendlyTerritory)
		end
	end
end

if IsCivInPlay(iCiv) then
	print("Newfoundland is in play!")
	GameEvents.TeamSetHasTech.Add(CheckForSailingUponTechDiscovery)
	GameEvents.PlayerDoTurn.Add(CheckForSailingPerTurn)
end

-------

--Grants production when a naval unit is inside a city; shortened to 'navalGarrison' in the code
--works for naval Combat Units, Work Boats, and Great Admirals
function NavalGarrisonIncreasesProduction(iPlayer)
	local pPlayer = Players[iPlayer]
	if pPlayer:GetCivilizationType() == iCiv then
		for pCity in pPlayer:Cities() do
			if pCity:IsCoastal() then
				print("Checking for naval units in "..pCity:GetName())
				local pPlot = pCity:Plot()
				if PlotContainsNavalUnit(pPlot) then
					print("Dummy is active in "..pCity:GetName())
					pCity:SetNumRealBuilding(iNavalGarrisonDummy,1)
				else
					print("Dummy is inactive in "..pCity:GetName())
					pCity:SetNumRealBuilding(iNavalGarrisonDummy,0)
				end
			end
		end
	end
end

--checks if a given plot contains a naval unit
function PlotContainsNavalUnit(pPlot)
	for i=0,pPlot:GetNumUnits()-1,1 do
		print("Looping through Layered-Unit "..i)
		print("Checking Plot ("..pPlot:GetX()..","..pPlot:GetY()..")")
		local pUnit = pPlot:GetLayerUnit(i)
		if pUnit and pUnit:GetDomainType() == iDomainNaval then
			print("("..pPlot:GetX()..","..pPlot:GetY()..") contains a Naval Unit")
			return true
		end
	end
	print("("..pPlot:GetX()..","..pPlot:GetY()..") does NOT contain a Naval Unit")
	return false
end

if IsCivInPlay(iCiv) then
	GameEvents.PlayerDoTurn.Add(NavalGarrisonIncreasesProduction)
end

-----

--Grants a burst of Production in all cities when improving a sea resource
function GrantProductionInAllCoastalCities(iPlayer,iX,iY,iImprovement)
	local pPlayer = Players[iPlayer]
	if pPlayer:GetCivilizationType() == iCiv then
		local pPlot = Map.GetPlot(iX,iY)
		if pPlot:IsWater() and pPlot:GetResourceType() ~= -1 then
			--instantaneous improvements fire this event twice! Think of workboats and Great People improvements
			if FireTwiceHandler() then
				print("A Sea Resource was improved")
				for pCity in pPlayer:Cities() do
					if pCity:IsCoastal() then
						print("Granting production in Coastal "..pCity:GetName())
						pCity:ChangeProduction(iSeaResourceImprovedProduction)
					end
				end
			end
		end
	end
end

if IsCivInPlay(iCiv) then
	GameEvents.BuildFinished.Add(GrantProductionInAllCoastalCities)
end

--makes sure the event above only fires once
local FirstFire = true
function FireTwiceHandler()
	print("FirstFire = "..tostring(FirstFire))
	FirstFire = not FirstFire
	return not FirstFire
end

-------------------------------------------------------
----------------UB Lua---------------------------------
--Grants +5 Exp for each nearby source of fish

function GrantExpForNearbyFish(iPlayer)
	local pPlayer = Players[iPlayer]
	if pPlayer:CountNumBuildings(iExpFromSeaResourceBuilding)>0 then
		for pCity in pPlayer:Cities() do
			if pCity:IsHasBuilding(iExpFromSeaResourceBuilding) then
				print(pCity:GetName().." has the ExpFromFish building!")
				local iNumResources = 0;
				for pPlot in PlotAreaSpiralIterator(pCity:Plot(), iExpResourceRange, SECTOR_NORTH, DIRECTION_CLOCKWISE, DIRECTION_OUTWARDS, CENTRE_EXCLUDE) do
					if tValidExpResources[pPlot:GetResourceType()] == true then
						print("A valid Experience resource was found on ("..pPlot:GetX()..","..pPlot:GetY()..")");
						if ShouldGrantExpForThisResource(iPlayer,pCity,pPlot) then
							print("This resource provides Exp for this city!")
							iNumResources = iNumResources + 1;
						end
					end
				end
				print(iNumResources.." copies of the Exp Dummy Building were placed in "..pCity:GetName());
				pCity:SetNumRealBuilding(iExpDummy,iNumResources);
			end
		end
	end
end

if IsCivInPlay(iCiv) then
	GameEvents.PlayerDoTurn.Add(GrantExpForNearbyFish)
end

--checks if a given city with a fishing stage should get a bonus from a given fish resource,
-- based on the booleans defined at the top of the code
--NOTE: I am aware that the following function can be condensed into one giant if-statement,
-- but that makes debugging more difficult
function ShouldGrantExpForThisResource(iPlayer,pCity,pPlot)
	local pPlayer = Players[iPlayer]
	if not bExpRequiresResourceWithinBorders or pPlot:GetOwner()==iPlayer then
		print("The plot is owned by iPlayer or a plot ownership is not required!")
		if not bExpRequiresResourceWorked or (pPlot:IsBeingWorked() and pPlot:GetWorkingCity() == pCity) then
			print("The plot is being worked by this city, or it is not required to work a tile")
			if pPlot:GetOwner() == iPlayer then
				--the plot is actually owned by the player + (working is not required/the plot is being worked by your city)
				if (not bExpOnlyForNearestCity) or (pPlot:IsBeingWorked() and (pPlot:GetWorkingCity()==pCity or (not (pPlot:GetWorkingCity():IsHasBuilding(iExpFromSeaResourceBuilding)) and GetNearestCity(pPlot,iPlayer,true,true,iExpResourceRange) == pCity))) or ((not pPlot:IsBeingWorked()) and GetNearestCity(pPlot,iPlayer,true,true,iExpResourceRange) == pCity)  then
					--[[return true if:
					Infinitely many cities can benefit from the same resource
					OR
					Your city is working the plot (priority 2)
					OR
					(
					The city working the plot has no Fishing Range (priority 0)
					AND
					Your city is the closest city (priority 4)
					)
					OR
					(
					No city is working the plot (priority 2)
					AND
					Your city is the closest one (priority 4)
					)
					--]]
					return true
				end
				return false
			elseif pPlot:GetOwner() == -1 then
				--the plot is neutral land + working a plot is not required (your city can't work neutral land) + plot ownership is not required (since it's neutral land)
				if (not bExpOnlyForNearestCity) or GetNearestCity(pPlot,-1,true,true,iExpResourceRange) == pCity then
					--[[return true if:
					Infinitely many cities can benefit from the same resource
					OR
					The nearest city (with a fishing stage) is your city
					--]]
					return true
				end
				return false
			else
				--the plot is in enemy lands + plot ownership is not required + workign a plot is not required
				if bExpResourceCanBeInEnemyBorders and ((not bExpOnlyForNearestCity) or (GetNearestCity(pPlot,pPlot:GetOwner(),true,true,iExpResourceRange))==nil) then
					--[[return true if:
					The resource can be in enemy borders
					AND (
					- Infinitely many cities can benefit from the same resource
					OR
					- The enemy has no city with a fishing stage that is in range of the resource
								otherwise he wins based on priority 1: resource in borders
					)
					--]]
					return true
				end
			end
		end
		--the plot is not being worked + working the plot is required
	end
	--plot ownership was required + the plot wasn't owned
	return false
end

--returns the nearest city (as the crow flies) with several requirements; nil if no such city exists
--use iPlayer=-1 to indicate all players
--use iRange=-1 to indicate an infinte range
function GetNearestCity(pPlot,iPlayer,bCoastal,bFishingStage,iRange)
	local iMinDistance = 99999999
	if iRange==-1 then
		iMinDistance = iRange+1 --iRange+1 as we keep checkign for distances SMALLER than iMinDistance
	end
	local pNearestCity = nil;
	if iPlayer and iPlayer == -1 then
		--if we need to check for a city of any player, we only check for nearby cities
		for pOtherPlot in PlotAreaSpiralIterator(pPlot, iRange, SECTOR_NORTH, DIRECTION_CLOCKWISE, DIRECTION_OUTWARDS, CENTRE_EXCLUDE) do
			if pOtherPlot and pOtherPlot:IsCity() and ((not bCoastal or pOtherPlot:GetPlotCity():IsCoastal()) and (not bFishingStage or pOtherPlot:GetPlotCity():IsHasBuilding(iExpFromSeaResourceBuilding))) then
				--print("Checking Plot ("..pPlot:GetX()..","..pPlot:GetY()..")")
				local iCurrentDistance = Map.PlotDistance(pPlot:GetX(),pPlot:GetY(),pOtherPlot:GetX(),pOtherPlot:GetY())
				if iCurrentDistance < iMinDistance then
					iMinDistance = iCurrentDistance
					pNearestCity = pOtherPlot:GetPlotCity()
				end
			end
		end
	else
		--if we need to check for a specific player, then we simply check all cities of that specific player
		local pPlayer = Players[iPlayer]
		if (pPlayer:CountNumBuildings(iExpFromSeaResourceBuilding)>0) or (not bFishingStage) then
			for pOtherCity in pPlayer:Cities() do
				if (not bCoastal or pOtherCity:IsCoastal()) and (not bFishingStage or pOtherCity:IsHasBuilding(iExpFromSeaResourceBuilding)) then
					local iCurrentDistance = Map.PlotDistance(pPlot:GetX(),pPlot:GetY(),pOtherCity:GetX(),pOtherCity:GetY())
					if iCurrentDistance < iMinDistance then
						iMinDistance = iCurrentDistance
						pNearestCity = pOtherCity
					end
				end
			end
		end
	end
	if pNearestCity then
		print(tostring(pNearestCity:GetName())..' was returned by GetNearestCity (iPlayer='..iPlayer..')')
	else
		print(tostring(pNearestCity)..' was returned by GetNearestCity (iPlayer='..iPlayer..')')
	end
	return pNearestCity
end



---------------------------------------------------------------
-------------------UU Lua---------------
--more strength when embarked -> give it the 'embarkation with defense' promotion just like the conquistador (or however you spell that)

local bReduceLag = false --reduces lag, but makes it so the UU does not function for other civs if they acquire it

function EmbarkationOnlyOneMovement(iPlayer,iUnit,iX,iY)
	local pPlayer = Players[iPlayer]
	if pPlayer:GetCivilizationType() == iCiv and (not bReduceLag) then
		local pUnit = pPlayer:GetUnitByID(iUnit)
		local pPlot = Map.GetPlot(iX,iY)
		if pUnit:GetUnitType() == iBluePuttee then
			if pUnit:IsHasPromotion(iPromotionEmbarked) and not pPlot:IsWater() then
				print("The unit was embarked and moved onto land!")
				pUnit:SetHasPromotion(iPromotionEmbarked,false)
				pUnit:SetHasPromotion(iPromotionDisembarked,true)
				SetCorrectMoves(iPlayer,iUnit)
			elseif pUnit:IsHasPromotion(iPromotionDisembarked) and pPlot:IsWater() then
				print("The unit was disembarked and moved onto the water!")
				pUnit:SetHasPromotion(iPromotionEmbarked,true)
				pUnit:SetHasPromotion(iPromotionDisembarked,false)
				SetCorrectMoves(iPlayer,iUnit)
			end
			if tPutteeMoves[iPlayer] then
				tPutteeMoves[iPlayer][iUnit] = pUnit:GetMoves()/60
				print('0) tPutteeMoves['..iPlayer..']['..iUnit..'] = '..tPutteeMoves[iPlayer][iUnit])
			end
		end
	end
end

function SetCorrectMoves(iPlayer,iUnit)
	local pPlayer = Players[iPlayer]
	local pUnit = pPlayer:GetUnitByID(iUnit)
	if tPutteeMoves[iPlayer] then
		local iMovesPreEmbark = tPutteeMoves[iPlayer][iUnit]
		if iMovesPreEmbark and iMovesPreEmbark > 0 then
			pUnit:SetMoves(60*(iMovesPreEmbark-iPutteeEmbarkMoveCost))
		else
			tPutteeMoves[iPlayer][iUnit] = pUnit:MaxMoves()/60
			print('1) tPutteeMoves['..iPlayer..']['..iUnit..'] = '..tPutteeMoves[iPlayer][iUnit])
			pUnit:SetMoves(math.max(pUnit:MaxMoves()-60*iPutteeEmbarkMoveCost,0))
		end
	end
end

--resets the table per turn. if tPutteeMoves[iPlayer][iUnit] = nil, then the amount of moves is the maximum amount of moves
function ResetTablePerTurn(iPlayer)
	tPutteeMoves[iPlayer]={}
end

--Initializes the moves-table, which contains the number of moves of every Blue Puttee
function InitialMovesTableLoad()
	for i=1,GameDefines.MAX_CIV_PLAYERS-1 do
		local pPlayer = Players[i]
		if pPlayer:GetCivilizationType() == iCiv or (not bReduceLag) then
			for pUnit in pPlayer:Units() do
				if pUnit:GetUnitType() == iBluePuttee then
					if tPutteeMoves[i] == nil then
						print('tPutteeMoves['..i..'] = {}')
						tPutteeMoves[i] = {}
					end
					print('tPutteeMoves['..i..']['..pUnit:GetID()..'] = '..pUnit:GetMoves())
					tPutteeMoves[i][pUnit:GetID()] = pUnit:GetMoves()
				end
			end
		end
	end
end

if IsCivInPlay(iCiv) or ((not bReduceLag) and IsCSUnitGift(iBluePuttee)) then
	InitialMovesTableLoad()
	GameEvents.PlayerDoTurn.Add(ResetTablePerTurn)
	GameEvents.UnitSetXY.Add(EmbarkationOnlyOneMovement)
end


