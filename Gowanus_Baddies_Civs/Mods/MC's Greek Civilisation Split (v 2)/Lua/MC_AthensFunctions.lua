-- =====================
-- Athens: Yield from city states. By Sukritact. 
-- =====================
WARN_NOT_SHARED = false; include( "SaveUtils" ); MY_MOD_NAME = "BuildingYieldFromCityStates";

local iCulture = GameInfo.Yields["YIELD_CULTURE"].ID
local iFaith = GameInfo.Yields["YIELD_FAITH"].ID

function BuildingYieldFromCityStates(iPlayer, pPlayer, bIsTurnStart)
    --print(bIsTurnStart)
    for row in GameInfo.Building_YieldFromCityStates() do
        local iBuilding = GameInfo.Buildings[row.BuildingType].ID
        local iYield = YieldTypes[row.YieldType]
        local iDeltaModifier = row.Yield
        local bIncludeFriendly = row.IncludeFriendly
        local iNumCSs = 0
        local iLevel = 2
        if (bIncludeFriendly == true) then
            iLevel = 1
        end
        
        --Get Friendly or Allied CSs
        for i, pLoopPlayer in pairs(Players) do
            if pLoopPlayer:IsAlive() and pLoopPlayer:IsMinorCiv() then
                if pLoopPlayer:GetMinorCivFriendshipLevelWithMajor(iPlayer) >= iLevel then
                    iNumCSs = iNumCSs + 1
                end
            end
        end
        local iDelta = iNumCSs * iDeltaModifier

        --Change building yields in cities
        for pCity in pPlayer:Cities() do
            local iCity = pCity:GetID()
            if pCity:IsHasBuilding(iBuilding) then
                if iYield == iCulture then
                    local iOldDelta = load( pPlayer, iCity .. "B" .. iBuilding .. "Y" .. iCulture)
                    save( pPlayer, iCity .. "B" .. iBuilding .. "Y" .. iCulture, iDelta)
                    if iOldDelta == nil then
                        pCity:ChangeJONSCulturePerTurnFromBuildings(iDelta)
                    else
                        pCity:ChangeJONSCulturePerTurnFromBuildings(iDelta - iOldDelta)
                    end
                elseif iYield == iFaith then
                    if bIsTurnStart == true then
                        pPlayer:ChangeFaith(iDelta)
                    end
                else
                    local iOldDelta = load( pPlayer, iCity .. "B" .. iBuilding .. "Y" .. iYield)
                    save (pPlayer, iCity .. "B" .. iBuilding .. "Y" .. iYield, iDelta)
                    if iOldDelta == nil then
                        pCity:ChangeBaseYieldRateFromBuildings(iYield, iDelta)
                    else
                        pCity:ChangeBaseYieldRateFromBuildings(iYield, iDelta - iOldDelta)
                    end
                end
                
            -- Clear data if Building does not exist --
            
            else
                if iYield == iCulture then
                    local iOldDelta = load( pPlayer, iCity .. "B" .. iBuilding .. "Y" .. iCulture)
                    if iOldDelta == nil then
                    elseif iOldDelta > 0 then
                        save (pPlayer, iCity .. "B" .. iBuilding .. "Y" .. iCulture, 0)
                        pCity:ChangeJONSCulturePerTurnFromBuildings(-iOldDelta)
                    end
                elseif iYield == iFaith then
                else
                    local iOldDelta = load( pPlayer, iCity .. "B" .. iBuilding .. "Y" .. iYield)
                    if iOldDelta == nil then
                    elseif iOldDelta > 0 then
                        save (pPlayer, iCity .. "B" .. iBuilding .. "Y" .. iYield, 0)
                        pCity:ChangeBaseYieldRateFromBuildings(iYield, -iOldDelta)
                    end
                end
            end
        end    
    end
end

-- End of Main Code --

function BuildingYieldFromCityStatesTrigger1(iPlayer)
    --print("Trigger Type 1")
    local pPlayer = Players[iPlayer]
    local bIsTurnStart = true
    BuildingYieldFromCityStates(iPlayer, pPlayer, bIsTurnStart)
end

GameEvents.PlayerDoTurn.Add(BuildingYieldFromCityStatesTrigger1)

function BuildingYieldFromCityStatesTrigger2()
    local iPlayer = Game.GetActivePlayer()
    local pPlayer = Players[iPlayer]
    local bIsTurnStart = false
    if pPlayer:IsTurnActive() then
        --print ("Trigger Type 2")
        BuildingYieldFromCityStates(iPlayer, pPlayer, bIsTurnStart)
    end
end

Events.SerialEventGameDataDirty.Add(BuildingYieldFromCityStatesTrigger2)

-- =====================
-- Athens: Influence from adopting policies or completing techs when first. By Tomatekh. 
-- =====================

print("Athens Influence Bonus")

--This value is how much influence is awarded for being the first to discover a tech:
local TechCSBonus = 10;
--This value is how much influence is awarded for being the first to discover a policy:
local PolicyCSBonus = 10;

function AthensCSBonus(oTeam, oPlayer, oType)
	local oID = oPlayer:GetID();
	for i = GameDefines.MAX_MAJOR_CIVS, GameDefines.MAX_CIV_PLAYERS - 2 do 
		local tPlayer = Players[i];					
		local tTeam = tPlayer:GetTeam();
		if (Teams[oTeam]:IsHasMet(tTeam)) and not (Teams[oTeam]:IsAtWar(tTeam)) then
			if oType == 1 then	
				tPlayer:ChangeMinorCivFriendshipWithMajor(oID, TechCSBonus);
				--[[if tPlayer:IsHuman() then
					local sAlertMessage = Locale.ConvertTextKey("TXT_KEY_C15_ATHENS_INFLUENCE_TECH", GameInfo.Techs[iTech].Description, TechCSBonus)
					Events.GameplayAlertMessage(sAlertMessage)
				end]]
			elseif oType == 2 then	
				tPlayer:ChangeMinorCivFriendshipWithMajor(oID, PolicyCSBonus);
				--[[if tPlayer:IsHuman() then
					local sAlertMessage = Locale.ConvertTextKey("TXT_KEY_C15_ATHENS_INFLUENCE_POLICY", GameInfo.Policies[policyID].Description, PolicyCSBonus)
					Events.GameplayAlertMessage(sAlertMessage)
				end]]
			end
			print("Influence Increased")
		end
	end
end

function GetAthensTeam()	
	local oTeam = 999;
	for iPlayer=0, GameDefines.MAX_MAJOR_CIVS-1 do
		local pPlayer = Players[iPlayer];
		if pPlayer:IsEverAlive() then
			if (pPlayer:GetCivilizationType() == GameInfoTypes.CIVILIZATION_MC_ATHENS) then
				oTeam = pPlayer:GetTeam();
				break;
			end
		end
	end
	return oTeam;
end

function GetAthensPlayer()	
	local oPlayer = 0;
	for iPlayer=0, GameDefines.MAX_MAJOR_CIVS-1 do
		local pPlayer = Players[iPlayer];
		if pPlayer:IsEverAlive() then
			if (pPlayer:GetCivilizationType() == GameInfoTypes.CIVILIZATION_MC_ATHENS) then
				oPlayer = pPlayer;
				break;
			end
		end
	end
	return oPlayer;
end

function AthensTechInfluence(iTeam, iTech, bAdopted) 
	local oType = 1;
	local oTeam = GetAthensTeam();
	local oPlayer = GetAthensPlayer();
	if iTeam == oTeam then		
		local TechCheck = 0;
		for iPlayer=0, GameDefines.MAX_MAJOR_CIVS-1 do
			local pPlayer = Players[iPlayer];
			if pPlayer:IsEverAlive() then
				local pTeam = pPlayer:GetTeam();
				if (pTeam ~= oTeam) then
					if (Teams[pTeam]:IsHasTech(iTech)) then
						TechCheck = TechCheck + 1;
						break
					end
				end
			end
		end
		if TechCheck == 0 then
			AthensCSBonus(oTeam, oPlayer, oType)
			if oPlayer:IsHuman() then
				local sAlertMessage = Locale.ConvertTextKey("TXT_KEY_C15_ATHENS_INFLUENCE_TECH", GameInfo.Technologies[iTech].Description, TechCSBonus)
				Events.GameplayAlertMessage(sAlertMessage)
			end
		end
	end
end
GameEvents.TeamSetHasTech.Add(AthensTechInfluence)

function AthensPolicyInfluence(playerID, policyID)
	local oType = 2;
	local oPlayer = Players[playerID]
	local oTeam = oPlayer:GetTeam();
	if (oPlayer:IsAlive()) then
		if (oPlayer:GetCivilizationType() == GameInfoTypes.CIVILIZATION_MC_ATHENS) then
			local PolicyCheck = 0;
			for iPlayer=0, GameDefines.MAX_MAJOR_CIVS-1 do
				local pPlayer = Players[iPlayer];
				if pPlayer:IsEverAlive() then
					local pTeam = pPlayer:GetTeam();
					if (pPlayer ~= oPlayer) then
						if pPlayer:HasPolicy(policyID) then
							PolicyCheck = PolicyCheck + 1;
							break
						end
					end
				end
			end
			if PolicyCheck == 0 then
				AthensCSBonus(oTeam, oPlayer, oType)
				if oPlayer:IsHuman() then
					local sAlertMessage = Locale.ConvertTextKey("TXT_KEY_C15_ATHENS_INFLUENCE_POLICY", GameInfo.Policies[policyID].Description, PolicyCSBonus)
					Events.GameplayAlertMessage(sAlertMessage)
				end
			end
		end
	end
end
GameEvents.PlayerAdoptPolicy.Add(AthensPolicyInfluence)

-- =====================
-- Athens: UU may capture ships when adjacent to another Athenian ship. By Pouakai and JFD.
-- =====================

include("PlotIterators")

local civilizationAthensID = GameInfoTypes["CIVILIZATION_MC_ATHENS"]
local unitPromotionNoAthenianFleetID = GameInfoTypes["PROMOTION_MC_ATHENIAN_EPIBATAS_DUMMY"]
local unitPromotionAthenianFleetID = GameInfoTypes["PROMOTION_MC_ATHENIAN_EPIBATAS"]
--[[function MC_AthenianTrieres(playerID, unitID, plotX, plotY)
	local player = Players[playerID]
	if (player:IsAlive() and player:GetCivilizationType() == civilizationAthensID) then
		local unit = player:GetUnitByID(unitID)
		if (unit:GetPlot() and (unit:IsHasPromotion(unitPromotionNoAthenianFleetID) or unit:IsHasPromotion(unitPromotionAthenianFleetID))) then
			local plot = unit:GetPlot()
			local adjOther = false
			--for loopPlot in PlotAreaSpiralIterator(plot, 1, SECTOR_NORTH, DIRECTION_CLOCKWISE, DIRECTION_OUTWARDS, CENTRE_EXCLUDE) do
			for loopPlot in PlotRingIterator(plot, 1, SECTOR_NORTH, DIRECTION_CLOCKWISE) do
				if (loopPlot:IsUnit() and loopPlot:GetUnit():GetOwner() == playerID) then
					adjOther = true
					break
				end
			end
								
			if adjOther then
				unit:SetHasPromotion(unitPromotionAthenianFleetID, true)
				unit:SetHasPromotion(unitPromotionNoAthenianFleetID, false)
			else
				unit:SetHasPromotion(unitPromotionAthenianFleetID, false)
				unit:SetHasPromotion(unitPromotionNoAthenianFleetID, true)
			end
		end
		local pUnit = player:GetUnitByID(unitID)
		if pUnit:GetDomainType() == DomainTypes.DOMAIN_SEA then
			
	end
end
GameEvents.UnitSetXY.Add(MC_AthenianTrieres)]]

function C15_Epibatas_DoTurn(playerID)
	local pPlayer = Players[playerID]
	if pPlayer:IsAlive() then
		for pUnit in pPlayer:Units() do
			if pUnit:GetDomainType() == DomainTypes.DOMAIN_SEA then
				if pUnit:IsHasPromotion(unitPromotionNoAthenianFleetID) or pUnit:IsHasPromotion(unitPromotionAthenianFleetID) then
					local pPlot = pUnit:GetPlot()
					local adjOther = false
					for loopPlot in PlotRingIterator(pPlot, 1, SECTOR_NORTH, DIRECTION_CLOCKWISE) do
					--for loopPlot in PlotAreaSpiralIterator(pPlot, 1, SECTOR_NORTH, DIRECTION_CLOCKWISE, DIRECTION_OUTWARDS, CENTRE_EXCLUDE) do
						if (loopPlot:IsUnit() and loopPlot:GetUnit():GetOwner() == playerID) then
							adjOther = true
							break
						end
					end
					if adjOther then
						pUnit:SetHasPromotion(unitPromotionAthenianFleetID, true)
						pUnit:SetHasPromotion(unitPromotionNoAthenianFleetID, false)
					else
						pUnit:SetHasPromotion(unitPromotionAthenianFleetID, false)
						pUnit:SetHasPromotion(unitPromotionNoAthenianFleetID, true)
					end
				end
			end
		end
	end
end

GameEvents.PlayerDoTurn.Add(C15_Epibatas_DoTurn)