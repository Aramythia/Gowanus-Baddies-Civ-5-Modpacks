-- Lua Script1
-- Author: Qrow
-- DateCreated: 4/22/2022 9:48:19 PM
--------------------------------------------------------------



function print() end

local tLeaders = {} -- Table of Leaders who possess the specified Trait
for row in DB.Query("SELECT ID FROM Leaders WHERE Type IN (SELECT LeaderType FROM Leader_Traits WHERE TraitType = 'TRAIT_GOD_OF_CONTRACTS')") do
	tLeaders[row.ID] = true
end

local tEraDummies = {}
for row in DB.Query("SELECT a.ID EraID, b.ID BuildingID FROM Eras a, Buildings b WHERE b.Type = 'BUILDING_QROW_LIYUE_TRADE_DUMMY_'||a.Type") do
	tEraDummies[row.EraID] = row.BuildingID
end

local tTeamPlayers = {} -- Nested table: first level of Keys are TeamIDs who possess Players who are playing Leaders who have the Trait specified for tLeaders, corresponding Values are then tables with  linear integer Keys and the playerIDs of each tLeader-playing Player on the Team as Values

function C15_Teams_LoadScreen()
    for k, v in pairs(Players) do
        if v and v:IsEverAlive() and tLeaders[v:GetLeaderType()] then -- Find relevant Civs
            local iTeam = v:GetTeam()
            if tTeamPlayers[iTeam] then -- Add Teams with valid Leaders to table as keys, with their values being the relevant Players on said Team tabulated
                table.insert(tTeamPlayers[iTeam], k) -- As we all know table.insert is slower than tTeamPlayers[#tTeamPlayers+1] but fuku
            else
                tTeamPlayers[iTeam] = {k}
            end
        end
    end
end

Events.LoadScreenClose.Add(C15_Teams_LoadScreen) -- Event fires when DoM is closed

-- +1 Trade Route Slot per Era

local iTradeRouteDummyBuilding = GameInfoTypes["BUILDING_WE_HAVE_NO_MORA"] -- +1 Trade Route, see Petra/Colossus, make sure to define columns NeverCapture = 1 and NukeImmune = 1 to make sure that other Civs can't get their hands on the Building or destroy it.

function God_Of_Contracts_SetTradeLimitDummy(pPlayer)
	local iEra = pPlayer:GetCurrentEra() -- Eras count up from 0, which should correlate with our needs perfectly
	local iStartEra = Game.GetStartEra()
	print("iEra = ", iEra, "iStartEra = ", iStartEra)
	local iSumEra = iEra - iStartEra
	local bRecheck = false
	
	for i = iStartEra + 1, iEra do -- This could be an iterator, but I'm not writing that.
		local iBuilding = tEraDummies[i]
		print("i = ", i, "iBuilding = ", iBuilding)
		if pPlayer:CountNumBuildings(iBuilding) ~= 1 then
			bRecheck = true
			print("Recheck!")
			break
		end
	end
	
	if bRecheck then
		print("Dummy Count Incorrect")
		for pCity in pPlayer:Cities() do
			if pCity:IsCapital() then
				for i = iStartEra + 1, iEra do 
					local iBuilding = tEraDummies[i]
					pCity:SetNumRealBuilding(iBuilding, 1)
				end
			else
				for i = iStartEra + 1, iEra do 
					local iBuilding = tEraDummies[i]
					pCity:SetNumRealBuilding(iBuilding, 0)
				end
			end
		end
	end
end

function God_Of_Contracts_SetEra(teamID, iEra)
	if tTeamPlayers[teamID] then
		for k, playerID in ipairs(tTeamPlayers[teamID]) do -- This GameEvent provides us the Team as a parameter, so we need to iterate through the Team's relevant Players (who we've collated earlier) to reach the actual Player objects
			local pPlayer = Players[playerID]
			God_Of_Contracts_SetTradeLimitDummy(pPlayer)
		end
	end
end

GameEvents.TeamSetEra.Add(God_Of_Contracts_SetEra)

function God_Of_Contracts_CityCapture(oldID, bCap, iX, iY, newID) -- There are more parameters, but they're really not relevant to what we're doing here
	local tCapturePlayers = {oldID, newID} -- This looks complicated, but isn't; we want to run this code on both Players involved in the capture, but rather than write it out twice this way we just run the same code over the two different playerIDs
	for i = 1, #tCapturePlayers do
		local pPlayer = Players[tCapturePlayers[i]]
		if tLeaders[pPlayer:GetLeaderType()] then
			God_Of_Contracts_SetTradeLimitDummy(pPlayer)
		end
	end
end

GameEvents.CityCaptureComplete.Add(God_Of_Contracts_CityCapture)

-- Trade Route bonuses

local iUB = GameInfoTypes["BUILDING_FEIYUN_COMMERCE_GUILD"]
local iCultureModDummy = GameInfoTypes["BUILDING_GOD_OF_CONTRACTS"]
local iProdModDummy = GameInfoTypes["BUILDING_I_WILL_HAVE_ORDER"]

local iHappinessDummy = GameInfoTypes["BUILDING_REX_LAPIS"]

function God_Of_Contracts_DoTurn(playerID)
	local pPlayer = Players[playerID]
	local bLeader = tLeaders[pPlayer:GetLeaderType()]
	local bUB = (pPlayer:CountNumBuildings(iUB) > 0) or (pPlayer:CountNumBuildings(iProdModDummy) > 0) or (pPlayer:CountNumBuildings(iHappinessDummy) > 0) -- Check for whether the given Player has your UB, or whether they have the Dummies from your UB
	print("bLeader = ", bLeader, "bUB = ", bUB)
	if bLeader or bUB then
		local tCities = {} -- Cache Cities
		for k, v in ipairs(pPlayer:GetTradeRoutes()) do -- Iterate outgoing Trade Routes
			-- Various conditions can be checked here, I don't know what your design entails
			--if v.FromID ~= v.ToID then
			if Players[v.FromID]:GetTeam() ~= Players [v.ToID]:GetTeam() then -- Why haven't we just used this as the check?
				if not tCities[v.FromCity] then -- Our cache table is going to contain nested tables, which will be defined here each time a City is found to be associated with a Trade Route for the first time
					print("Creating Table Entry For ", v.FromCity:GetName())
					tCities[v.FromCity] = {UABonus = 0, UBBonus = 0, UBHappiness = 0}
				end
				
				if bLeader then -- If you have the Trait then add a Culture count
					tCities[v.FromCity].UABonus = tCities[v.FromCity].UABonus + 1
					print("UABonus = ", tCities[v.FromCity].UABonus)
					tCities[v.FromCity].UBHappiness = tCities[v.FromCity].UBHappiness + 1
				end
				
				if v.FromCity:IsHasBuilding(iUB) then -- If you have the UB then add a Production count
					tCities[v.FromCity].UBBonus = tCities[v.FromCity].UBBonus + 1 -- Going to assume that there's only one UB in the City, because there's a surprising number of complications to actually counting them
					print("UBBonus = ", tCities[v.FromCity].UBBonus)
				end
			end
		end -- Complete Trade Route iteration
		
		for k, v in ipairs(pPlayer:GetTradeRoutesToYou()) do
			--if v.FromID ~= v.ToID then -- Juus in case
			if Players[v.FromID]:GetTeam() ~= Players[v.ToID]:GetTeam() then				
				if not tCities[v.ToCity] then
					tCities[v.ToCity] = {UABonus = 0, UBBonus = 0, UBHappiness = 0}
				end
				
				if tLeaders[Players[v.FromID]:GetLeaderType()] then
					tCities[v.ToCity].UBHappiness = tCities[v.ToCity].UBHappiness + 1
				end
			end
		end
		
		for pCity in pPlayer:Cities() do -- Iterate Cities
			if tCities[pCity] then -- If the given City is associated with a Trade Route
				print("Iterating ", pCity:GetName())
				if tCities[pCity].UABonus > 0 then
					print("UABonus")
					pCity:SetNumRealBuilding(iCultureModDummy, tCities[pCity].UABonus)
				end
				if tCities[pCity].UBBonus > 0 then
					print("UBBonus")
					pCity:SetNumRealBuilding(iProdModDummy, tCities[pCity].UBBonus)
				end
				if tCities[pCity].UBHappiness > 0 then
					pCity:SetNumRealBuilding(iHappinessDummy, tCities[pCity].UBHappiness)
				end
			else -- Clear away Dummies from Cities that are no longer relevant
				pCity:SetNumRealBuilding(iCultureModDummy, 0)
				pCity:SetNumRealBuilding(iProdModDummy, 0)
				pCity:SetNumRealBuilding(iHappinessDummy, 0)
			end
		end
	end
end

GameEvents.PlayerDoTurn.Add(God_Of_Contracts_DoTurn)