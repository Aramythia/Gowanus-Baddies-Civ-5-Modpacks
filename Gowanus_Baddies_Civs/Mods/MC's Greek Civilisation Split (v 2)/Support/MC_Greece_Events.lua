print("Greek Events")

function GetRandom(lower, upper)
    return (Game.Rand((upper + 1) - lower, "")) + lower
end

function JFD_IsUsingPietyPrestige()
        local pietyPrestigeModID = "eea66053-7579-481a-bb8d-2f3959b59974"
        local isUsingPiety = false
       
        for _, mod in pairs(Modding.GetActivatedMods()) do
          if (mod.ID == pietyPrestigeModID) then
            isUsingPiety = true
            break
          end
        end
 
        return isUsingPiety
end

function GetHumanPlayer()
	local hPlayer = 0;
	for oPlayer=0, GameDefines.MAX_MAJOR_CIVS-1 do
		local oPlayer = Players[oPlayer];
		if (oPlayer:IsAlive()) and (oPlayer:IsHuman()) then
			hPlayer = oPlayer;
			break
		end
	end
	return hPlayer;
end

------------------------------------------------------------------------------------------------------------------
-- Shared
------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------
-- The Olympics
------------------------------------------------------------------------------------------

local Event_MCGreekOlympics = {}
    Event_MCGreekOlympics.Name = "TXT_KEY_EVENT_MC_OLYMPIC_GAMES"
	Event_MCGreekOlympics.Desc = "TXT_KEY_EVENT_MC_OLYMPIC_GAMES_DESC"
	Event_MCGreekOlympics.EventImage = "event_mc_olympics.dds"
	Event_MCGreekOlympics.tValidCivs = 
		{
		["CIVILIZATION_MC_ATHENS"]		= true,
		["CIVILIZATION_MC_SPARTA"]		= true,
		["CIVILIZATION_MC_PERGAMON"]	= true,
		["CIVILIZATION_MC_MACEDON"]		= true,
		["CIVILIZATION_DMS_EPIRUS"]		= true,
		["CIVILIZATION_DMS_ITHACA"]		= true,
		["CIVILIZATION_DMS_SYRACUSE"]	= true,
		}
	Event_MCGreekOlympics.Weight = 0
	Event_MCGreekOlympics.CanFunc = (
		function(pPlayer)

			if load(pPlayer, "Event_MCGreekOlympics") == true then return false end

			local pcCity = pPlayer:GetCapitalCity();

			--local bStadium = GameInfoTypes.BUILDINGCLASS_COLOSSEUM;
			--local iSCount = pPlayer:GetBuildingClassCount(bStadium)
			--if iSCount <= 0 then return false end

			if (Game.GetGameTurnYear() >= -600) then return false end

			Event_MCGreekOlympics.Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_MC_OLYMPIC_GAMES_DESC")
			local sCivType = GameInfo.Civilizations[pPlayer:GetCivilizationType()].Type
			return Event_MCGreekOlympics.tValidCivs[sCivType]

		end
		)

	Event_MCGreekOlympics.Outcomes = {}
	-------
	Event_MCGreekOlympics.Outcomes[1] = {}
	Event_MCGreekOlympics.Outcomes[1].Name = "TXT_KEY_EVENT_MC_OLYMPIC_GAMES_OUTCOME_1"
	Event_MCGreekOlympics.Outcomes[1].Desc = "TXT_KEY_EVENT_MC_OLYMPIC_GAMES_OUTCOME_1_DESC"
	Event_MCGreekOlympics.Outcomes[1].Weight = 1
	Event_MCGreekOlympics.Outcomes[1].CanFunc = (
		function(pPlayer)

			local iCost = math.ceil(100 * iMod)
			Event_MCGreekOlympics.Outcomes[1].Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_MC_OLYMPIC_GAMES_OUTCOME_1_DESC", iCost)
			if (pPlayer:GetGold() < iCost) then return false end

			return true
		end
		)
	Event_MCGreekOlympics.Outcomes[1].DoFunc = (
		function(pPlayer)

			save(pPlayer, "Event_MCGreekOlympics", true)

			local iCost = math.ceil(100 * iMod)
			pPlayer:ChangeGold(-iCost);

			local OlympRand = GetRandom(1,4)
			if OlympRand == 1 then
				pPlayer:SetAnarchyNumTurns(1)
			else
				local speed = Game.GetGameSpeedType();
				local GABonus = 0;
				if speed == GameInfo.GameSpeeds['GAMESPEED_QUICK'].ID then
					GABonus = 6;
				elseif speed == GameInfo.GameSpeeds['GAMESPEED_STANDARD'].ID then
					GABonus = 8;
				elseif speed == GameInfo.GameSpeeds['GAMESPEED_EPIC'].ID then
					GABonus = 10;
				elseif speed == GameInfo.GameSpeeds['GAMESPEED_MARATHON'].ID then
					GABonus = 16;
				else
					GABonus = 16;
				end
				local gAge = pPlayer:GetNumGoldenAges()
				pPlayer:ChangeGoldenAgeTurns(GABonus)
				pPlayer:SetNumGoldenAges(gAge)
			end

			JFD_SendNotification(pPlayer:GetID(), "NOTIFICATION_GENERIC", Locale.ConvertTextKey("TXT_KEY_EVENT_MC_OLYMPIC_GAMES_OUTCOME_1_NOTIFICATION"), Locale.ConvertTextKey(Event_MCGreekOlympics.Name))
			
			local hPlayer = GetHumanPlayer();
			if hPlayer ~= pPlayer then
				local pTeam = pPlayer:GetTeam();
				local hTeam = hPlayer:GetTeam();
				if Teams[pTeam]:IsHasMet(hTeam) then	
					Events.GameplayAlertMessage("" .. Locale.ConvertTextKey(pPlayer:GetCivilizationShortDescription()) .. " has sent athletes to compete in the Olympic Games!")
				end
			end

		end
		)

	-------
	Event_MCGreekOlympics.Outcomes[2] = {}
	Event_MCGreekOlympics.Outcomes[2].Name = "TXT_KEY_EVENT_MC_OLYMPIC_GAMES_OUTCOME_2"
	Event_MCGreekOlympics.Outcomes[2].Desc = "TXT_KEY_EVENT_MC_OLYMPIC_GAMES_OUTCOME_2_DESC"
	Event_MCGreekOlympics.Outcomes[2].Weight = 10
	Event_MCGreekOlympics.Outcomes[2].CanFunc = (
		function(pPlayer)

			local iCost = math.ceil(50 * iMod)
			Event_MCGreekOlympics.Outcomes[2].Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_MC_OLYMPIC_GAMES_OUTCOME_2_DESC", iCost)
			if (pPlayer:GetGold() < iCost) then return false end

			return true
		end
		)
	Event_MCGreekOlympics.Outcomes[2].DoFunc = (
		function(pPlayer)

			save(pPlayer, "Event_MCGreekOlympics", true)

			local iCost = math.ceil(50 * iMod)
			pPlayer:ChangeGold(-iCost);

			local pcCity = pPlayer:GetCapitalCity();
			if (pcCity:GetWeLoveTheKingDayCounter() >= 1) then
				pcCity:ChangeWeLoveTheKingDayCounter(20)
				pcCity:SetResourceDemanded(-1)
			elseif (pcCity:GetWeLoveTheKingDayCounter() <= 0) then
				pcCity:SetWeLoveTheKingDayCounter(20)
				pcCity:SetResourceDemanded(-1)
			end

			JFD_SendNotification(pPlayer:GetID(), "NOTIFICATION_GENERIC", Locale.ConvertTextKey("TXT_KEY_EVENT_MC_OLYMPIC_GAMES_OUTCOME_2_NOTIFICATION"), Locale.ConvertTextKey(Event_MCGreekOlympics.Name))
			
			local hPlayer = GetHumanPlayer();
			if hPlayer ~= pPlayer then
				local pTeam = pPlayer:GetTeam();
				local hTeam = hPlayer:GetTeam();
				if Teams[pTeam]:IsHasMet(hTeam) then	
					Events.GameplayAlertMessage("" .. Locale.ConvertTextKey(pPlayer:GetCivilizationShortDescription()) .. " has sent an envoy to the Olympic Games!")
				end
			end

		end
		)

	-------
	Event_MCGreekOlympics.Outcomes[3] = {}
	Event_MCGreekOlympics.Outcomes[3].Name = "TXT_KEY_EVENT_MC_OLYMPIC_GAMES_OUTCOME_3"
	Event_MCGreekOlympics.Outcomes[3].Desc = "TXT_KEY_EVENT_MC_OLYMPIC_GAMES_OUTCOME_3_DESC"
	Event_MCGreekOlympics.Outcomes[3].Weight = 1
	Event_MCGreekOlympics.Outcomes[3].CanFunc = (
		function(pPlayer)

			Event_MCGreekOlympics.Outcomes[3].Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_MC_OLYMPIC_GAMES_OUTCOME_3_DESC")

			return true
		end
		)
	Event_MCGreekOlympics.Outcomes[3].DoFunc = (
		function(pPlayer)

			save(pPlayer, "Event_MCGreekOlympics", true)

			JFD_SendNotification(pPlayer:GetID(), "NOTIFICATION_GENERIC", Locale.ConvertTextKey("TXT_KEY_EVENT_MC_OLYMPIC_GAMES_OUTCOME_3_NOTIFICATION"), Locale.ConvertTextKey(Event_MCGreekOlympics.Name))
			
			local hPlayer = GetHumanPlayer();
			if hPlayer ~= pPlayer then
				local pTeam = pPlayer:GetTeam();
				local hTeam = hPlayer:GetTeam();
				if Teams[pTeam]:IsHasMet(hTeam) then	
					Events.GameplayAlertMessage("" .. Locale.ConvertTextKey(pPlayer:GetCivilizationShortDescription()) .. " has chosen not to participate in the Olympic Games.")
				end
			end

		end
		)

tEvents.Event_MCGreekOlympics = Event_MCGreekOlympics

for iPlayer = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	local pPlayer = Players[iPlayer];
	if pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_MC_ATHENS"] then
		if GetRandom(1,3) == 3 then
			Events_ScheduleOnce(iPlayer, "Event_MCGreekOlympics", -700, true)
		end
	end
end

for iPlayer = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	local pPlayer = Players[iPlayer];
	if pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_MC_SPARTA"] then
		if GetRandom(1,3) == 3 then
			Events_ScheduleOnce(iPlayer, "Event_MCGreekOlympics", -700, true)
		end
	end
end

for iPlayer = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	local pPlayer = Players[iPlayer];
	if pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_MC_PERGAMON"] then
		if GetRandom(1,3) == 3 then
			Events_ScheduleOnce(iPlayer, "Event_MCGreekOlympics", -700, true)
		end
	end
end

for iPlayer = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	local pPlayer = Players[iPlayer];
	if pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_MC_MACEDON"] then
		if GetRandom(1,3) == 3 then
			Events_ScheduleOnce(iPlayer, "Event_MCGreekOlympics", -700, true)
		end
	end
end

for iPlayer = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	local pPlayer = Players[iPlayer];
	if pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_DMS_EPIRUS"] then
		if GetRandom(1,3) == 3 then
			Events_ScheduleOnce(iPlayer, "Event_MCGreekOlympics", -700, true)
		end
	end
end

for iPlayer = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	local pPlayer = Players[iPlayer];
	if pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_DMS_ITHACA"] then
		if GetRandom(1,3) == 3 then
			Events_ScheduleOnce(iPlayer, "Event_MCGreekOlympics", -700, true)
		end
	end
end

for iPlayer = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	local pPlayer = Players[iPlayer];
	if pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_DMS_SYRACUSE"] then
		if GetRandom(1,3) == 3 then
			Events_ScheduleOnce(iPlayer, "Event_MCGreekOlympics", -700, true)
		end
	end
end



------------------------------------------------------------------------------------------
-- Eleusinian Mysteries
------------------------------------------------------------------------------------------

local eAncient = GameInfoTypes.ERA_ANCIENT;

local Event_MCGreekMysteries = {}
    Event_MCGreekMysteries.Name = "TXT_KEY_EVENT_GREEK_MYSTERIES"
	Event_MCGreekMysteries.Desc = "TXT_KEY_EVENT_GREEK_MYSTERIES_DESC"
	Event_MCGreekMysteries.EventImage = "event_mc_eleusinian.dds"
	Event_MCGreekMysteries.tValidCivs = 
		{
		["CIVILIZATION_MC_ATHENS"]		= true,
		["CIVILIZATION_MC_SPARTA"]		= true,
		["CIVILIZATION_MC_PERGAMON"]	= true,
		["CIVILIZATION_MC_MACEDON"]		= true,
		["CIVILIZATION_MC_MINOA"]		= true,
		["CIVILIZATION_DMS_EPIRUS"]		= true,
		["CIVILIZATION_DMS_ITHACA"]		= true,
		["CIVILIZATION_DMS_SYRACUSE"]	= true,
		}
	Event_MCGreekMysteries.Weight = 3
	Event_MCGreekMysteries.CanFunc = (
		function(pPlayer)

			if load(pPlayer, "Event_MCGreekMysteries") == true then return false end

			local pcCity = pPlayer:GetCapitalCity();
			local pTeam = pPlayer:GetTeam();
			if (Teams[pTeam]:GetCurrentEra() == eAncient) then return false end

			Event_MCGreekMysteries.Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_GREEK_MYSTERIES_DESC")
			local sCivType = GameInfo.Civilizations[pPlayer:GetCivilizationType()].Type
			return Event_MCGreekMysteries.tValidCivs[sCivType]

		end
		)

	Event_MCGreekMysteries.Outcomes = {}
	-------
	Event_MCGreekMysteries.Outcomes[1] = {}
	Event_MCGreekMysteries.Outcomes[1].Name = "TXT_KEY_EVENT_GREEK_MYSTERIES_OUTCOME_1"
	Event_MCGreekMysteries.Outcomes[1].Desc = "TXT_KEY_EVENT_GREEK_MYSTERIES_OUTCOME_1_DESC"
	Event_MCGreekMysteries.Outcomes[1].Weight = 1
	Event_MCGreekMysteries.Outcomes[1].CanFunc = (
		function(pPlayer)

			local pcCity = pPlayer:GetCapitalCity();

            local religionID = pPlayer:GetReligionCreatedByPlayer()
            if religionID <= 0 then 
				if (pPlayer:GetNumCities() >= 1) then
					religionID = pPlayer:GetCapitalCity():GetReligiousMajority() 
				end
			end
            if isUsingPietyPrestige then   
                religionID = JFD_GetStateReligion(pPlayer:GetID())
            end
			if religionID <= 0 then return false end

			local iFollowers = 0;
			if religionID >= 1 then 
				iFollowers = pcCity:GetNumFollowers(religionID)
			end
			if iFollowers < 4 then return false end

			Event_MCGreekMysteries.Outcomes[1].Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_GREEK_MYSTERIES_OUTCOME_1_DESC")

			return true
		end
		)
	Event_MCGreekMysteries.Outcomes[1].DoFunc = (
		function(pPlayer)

			save(pPlayer, "Event_MCGreekMysteries", true)

			JFD_SendNotification(pPlayer:GetID(), "NOTIFICATION_GENERIC", Locale.ConvertTextKey("TXT_KEY_EVENT_GREEK_MYSTERIES_OUTCOME_1_NOTIFICATION"), Locale.ConvertTextKey(Event_MCGreekMysteries.Name))
		
			local pcCity = pPlayer:GetCapitalCity();

			if (pcCity:GetWeLoveTheKingDayCounter() >= 1) then
				pcCity:ChangeWeLoveTheKingDayCounter(20)
			elseif (pcCity:GetWeLoveTheKingDayCounter() <= 0) then
				pcCity:SetWeLoveTheKingDayCounter(20)
			end
			
			local hPlayer = GetHumanPlayer();
			if hPlayer ~= pPlayer then
				local pTeam = pPlayer:GetTeam();
				local hTeam = hPlayer:GetTeam();
				if Teams[pTeam]:IsHasMet(hTeam) then	
					Events.GameplayAlertMessage("A mystery cult has appeared in " .. Locale.ConvertTextKey(pcCity:GetName()) .. "!")
				end
			end

		end
		)

	-------
	Event_MCGreekMysteries.Outcomes[2] = {}
	Event_MCGreekMysteries.Outcomes[2].Name = "TXT_KEY_EVENT_GREEK_MYSTERIES_OUTCOME_2"
	Event_MCGreekMysteries.Outcomes[2].Desc = "TXT_KEY_EVENT_GREEK_MYSTERIES_OUTCOME_2_DESC"
	Event_MCGreekMysteries.Outcomes[2].Weight = 10
	Event_MCGreekMysteries.Outcomes[2].CanFunc = (
		function(pPlayer)

			Event_MCGreekMysteries.Outcomes[2].Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_GREEK_MYSTERIES_OUTCOME_2_DESC")

			return true
		end
		)
	Event_MCGreekMysteries.Outcomes[2].DoFunc = (
		function(pPlayer)

			save(pPlayer, "Event_MCGreekMysteries", true)

			JFD_SendNotification(pPlayer:GetID(), "NOTIFICATION_GENERIC", Locale.ConvertTextKey("TXT_KEY_EVENT_GREEK_MYSTERIES_OUTCOME_2_NOTIFICATION"), Locale.ConvertTextKey(Event_MCGreekMysteries.Name))
			
			local pcCity = pPlayer:GetCapitalCity();
			pcCity:ChangeResistanceTurns(1);

			pPlayer:ChangeFaith(50);

			local hPlayer = GetHumanPlayer();
			if hPlayer ~= pPlayer then
				local pTeam = pPlayer:GetTeam();
				local hTeam = hPlayer:GetTeam();
				if Teams[pTeam]:IsHasMet(hTeam) then	
					Events.GameplayAlertMessage("A mystery cult has appeared in " .. Locale.ConvertTextKey(pcCity:GetName()) .. "!")
				end
			end

		end
		)

for iSlot = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	local slotStatus = PreGame.GetSlotStatus(iSlot)
	if (slotStatus == SlotStatus["SS_TAKEN"] or slotStatus == SlotStatus["SS_COMPUTER"]) then
		local iCiv = PreGame.GetCivilization(iSlot)
		local sCiv = GameInfo.Civilizations[iCiv].Type
		if Event_MCGreekMysteries.tValidCivs[sCiv] then
			tEvents.Event_MCGreekMysteries = Event_MCGreekMysteries
			break
		end
	end
end

------------------------------------------------------------------------------------------
-- Mount Olympus
------------------------------------------------------------------------------------------
-- JFD_GetRandom
function JFD_GetRandom(lower, upper)
    return Game.Rand((upper + 1) - lower, "") + lower
end

local buildingMountOlympus1ID = GameInfoTypes["BUILDING_DECISIONS_MC_MOUNT_OLYMPUS_1"]
local buildingMountOlympus2ID = GameInfoTypes["BUILDING_DECISIONS_MC_MOUNT_OLYMPUS_2"]
local eventCityMountOlympus = nil
local Event_MC_Greece_MountOlympus = {}
	Event_MC_Greece_MountOlympus.Name = "TXT_KEY_EVENT_MC_GREECE_MOUNT_OLYMPUS"
	Event_MC_Greece_MountOlympus.Desc = "TXT_KEY_EVENT_MC_GREECE_MOUNT_OLYMPUS_DESC"
	Event_MC_Greece_MountOlympus.Weight = 10
	Event_MC_Greece_MountOlympus.tValidCivs = 
		{
		["CIVILIZATION_MC_ATHENS"]		= true,
		["CIVILIZATION_MC_SPARTA"]		= true,
		["CIVILIZATION_MC_PERGAMON"]	= true,
		["CIVILIZATION_MC_MACEDON"]		= true,
		["CIVILIZATION_MC_MINOA"]		= true,
		["CIVILIZATION_DMS_EPIRUS"]		= true,
		["CIVILIZATION_DMS_ITHACA"]		= true,
		["CIVILIZATION_DMS_SYRACUSE"]	= true,
		}
	Event_MC_Greece_MountOlympus.CanFunc = (
		function(player)			
			if load(player, "Event_MC_Greece_MountOlympus") == true then return false end
			local cities = {}
			local cityCount = 1
			for city in player:Cities() do
				cities[cityCount] = city
				cityCount = cityCount + 1
			end
			eventCityMountOlympus = cities[JFD_GetRandom(1,#cities)]
			if (not eventCityMountOlympus) then return false end
			Event_MC_Greece_MountOlympus.Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_MC_GREECE_MOUNT_OLYMPUS_DESC", eventCityMountOlympus:GetName())
			local sCivType = GameInfo.Civilizations[player:GetCivilizationType()].Type
			return Event_MC_Greece_MountOlympus.tValidCivs[sCivType]
		end
		)
	Event_MC_Greece_MountOlympus.Outcomes = {}
	--=========================================================
	-- Outcome 1
	--=========================================================
	Event_MC_Greece_MountOlympus.Outcomes[1] = {}
	Event_MC_Greece_MountOlympus.Outcomes[1].Name = "TXT_KEY_EVENT_MC_GREECE_MOUNT_OLYMPUS_OUTCOME_1"
	Event_MC_Greece_MountOlympus.Outcomes[1].Desc = "TXT_KEY_EVENT_MC_GREECE_MOUNT_OLYMPUS_OUTCOME_RESULT_1"
	Event_MC_Greece_MountOlympus.Outcomes[1].Weight = 3
	Event_MC_Greece_MountOlympus.Outcomes[1].CanFunc = (
		function(player)		
			Event_MC_Greece_MountOlympus.Outcomes[1].Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_MC_GREECE_MOUNT_OLYMPUS_OUTCOME_RESULT_1")
			return true
		end
		)
	Event_MC_Greece_MountOlympus.Outcomes[1].DoFunc = (
		function(player) 
			eventCityMountOlympus:SetNumRealBuilding(buildingMountOlympus1ID, 1)
			save(player, "Event_MC_Greece_MountOlympus", true)	
		end)
	--=========================================================
	-- Outcome 2
	--=========================================================
	Event_MC_Greece_MountOlympus.Outcomes[2] = {}
	Event_MC_Greece_MountOlympus.Outcomes[2].Name = "TXT_KEY_EVENT_MC_GREECE_MOUNT_OLYMPUS_OUTCOME_2"
	Event_MC_Greece_MountOlympus.Outcomes[2].Desc = "TXT_KEY_EVENT_MC_GREECE_MOUNT_OLYMPUS_OUTCOME_RESULT_2"
	Event_MC_Greece_MountOlympus.Outcomes[2].Weight = 5
	Event_MC_Greece_MountOlympus.Outcomes[2].CanFunc = (
		function(player)			
			Event_MC_Greece_MountOlympus.Outcomes[2].Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_MC_GREECE_MOUNT_OLYMPUS_OUTCOME_RESULT_2")
			return true
		end
		)
	Event_MC_Greece_MountOlympus.Outcomes[2].DoFunc = (
		function(player) 
			eventCityMountOlympus:SetNumRealBuilding(buildingMountOlympus2ID, 1)
			save(player, "Event_MC_Greece_MountOlympus", true)	
		end)

Events_AddCivilisationSpecific(civilizationID, "Event_MC_Greece_MountOlympus", Event_MC_Greece_MountOlympus)

for iSlot = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	local slotStatus = PreGame.GetSlotStatus(iSlot)
	if (slotStatus == SlotStatus["SS_TAKEN"] or slotStatus == SlotStatus["SS_COMPUTER"]) then
		local iCiv = PreGame.GetCivilization(iSlot)
		local sCiv = GameInfo.Civilizations[iCiv].Type
		if Event_MC_Greece_MountOlympus.tValidCivs[sCiv] then
			tEvents.Event_MC_Greece_MountOlympus = Event_MC_Greece_MountOlympus
			break
		end
	end
end

function MtOlympusYields(playerID)
	local pPlayer = Players[playerID]
	local tradedata = pPlayer:GetTradeRoutesToYou();
	local OlmypusFaith = 0;
	local OlympusGold = 0;
	if load(pPlayer, "Event_MC_Greece_MountOlympus") == true then
		for i,v in ipairs(tradedata) do		
			if v.ToCity:IsHasBuilding(buildingMountOlympus1ID) then
				OlmypusFaith = OlmypusFaith + 1;
			end
			if v.ToCity:IsHasBuilding(buildingMountOlympus2ID) then
				OlympusGold = OlympusGold + 1;
			end	
		end
		if OlmypusFaith > 0 then
			pPlayer:ChangeFaith(OlmypusFaith);
		end
		if OlympusGold > 0 then	
			pPlayer:ChangeGold(OlympusGold);
		end
	end
end	

GameEvents.PlayerDoTurn.Add(MtOlympusYields)

------------------------------------------------------------------------------------------
-- Thesmophoria
------------------------------------------------------------------------------------------

local ThesmophoriaEventCity = nil

local Event_MCThesmophoria = {}
    Event_MCThesmophoria.Name = "TXT_KEY_EVENT_MC_THESMOPHORIA"
	Event_MCThesmophoria.Desc = "TXT_KEY_EVENT_MC_THESMOPHORIA_DESC"
	Event_MCThesmophoria.EventImage = "event_mc_thesmophoria.dds"
	Event_MCThesmophoria.tValidCivs = 
		{
		["CIVILIZATION_MC_ATHENS"]		= true,
		["CIVILIZATION_MC_SPARTA"]		= true,
		["CIVILIZATION_MC_PERGAMON"]	= true,
		["CIVILIZATION_MC_MACEDON"]		= true,
		["CIVILIZATION_DMS_EPIRUS"]		= true,
		["CIVILIZATION_DMS_ITHACA"]		= true,
		["CIVILIZATION_DMS_SYRACUSE"]	= true,
		}
	Event_MCThesmophoria.Weight = 3
	Event_MCThesmophoria.CanFunc = (
		function(pPlayer)

			if load(pPlayer, "Event_MCThesmophoria") == true then return false end

			if (not pPlayer:HasCreatedPantheon()) then return false end

			local cities = {}
			local cityCount = 1
			for city in pPlayer:Cities() do
				cities[cityCount] = city
				cityCount = cityCount + 1
			end
			ThesmophoriaEventCity = cities[GetRandom(1,#cities)]
			if (not ThesmophoriaEventCity) then return false end

			Event_MCThesmophoria.Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_MC_THESMOPHORIA_DESC", ThesmophoriaEventCity:GetName())
			local sCivType = GameInfo.Civilizations[pPlayer:GetCivilizationType()].Type
			return Event_MCThesmophoria.tValidCivs[sCivType]

		end
		)

	Event_MCThesmophoria.Outcomes = {}
	-------
	Event_MCThesmophoria.Outcomes[1] = {}
	Event_MCThesmophoria.Outcomes[1].Name = "TXT_KEY_EVENT_MC_THESMOPHORIA_OUTCOME_1"
	Event_MCThesmophoria.Outcomes[1].Desc = "TXT_KEY_EVENT_MC_THESMOPHORIA_OUTCOME_1_DESC"
	Event_MCThesmophoria.Outcomes[1].Weight = 10
	Event_MCThesmophoria.Outcomes[1].CanFunc = (
		function(pPlayer)

			if (not ThesmophoriaEventCity) then return false end

			Event_MCThesmophoria.Outcomes[1].Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_MC_THESMOPHORIA_OUTCOME_1_DESC", ThesmophoriaEventCity:GetName())

			return true
		end
		)
	Event_MCThesmophoria.Outcomes[1].DoFunc = (
		function(pPlayer)

			save(pPlayer, "Event_MCThesmophoria", true)

			JFD_SendNotification(pPlayer:GetID(), "NOTIFICATION_GENERIC", Locale.ConvertTextKey("TXT_KEY_EVENT_MC_THESMOPHORIA_OUTCOME_1_NOTIFICATION"), Locale.ConvertTextKey(Event_MCThesmophoria.Name))
		
			if (ThesmophoriaEventCity:GetWeLoveTheKingDayCounter() >= 1) then
				ThesmophoriaEventCity:ChangeWeLoveTheKingDayCounter(10)
				ThesmophoriaEventCity:SetResourceDemanded(-1)
			elseif (ThesmophoriaEventCity:GetWeLoveTheKingDayCounter() <= 0) then
				ThesmophoriaEventCity:SetWeLoveTheKingDayCounter(10)
				ThesmophoriaEventCity:SetResourceDemanded(-1)
			end
			
			local hPlayer = GetHumanPlayer();
			if hPlayer ~= pPlayer then
				local pTeam = pPlayer:GetTeam();
				local hTeam = hPlayer:GetTeam();
				if Teams[pTeam]:IsHasMet(hTeam) then	
					Events.GameplayAlertMessage("" .. Locale.ConvertTextKey(pPlayer:GetCivilizationShortDescription()) .. " has performed the Thesmophoria to honour the goddess Demeter!")
				end
			end

		end
		)

for iSlot = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	local slotStatus = PreGame.GetSlotStatus(iSlot)
	if (slotStatus == SlotStatus["SS_TAKEN"] or slotStatus == SlotStatus["SS_COMPUTER"]) then
		local iCiv = PreGame.GetCivilization(iSlot)
		local sCiv = GameInfo.Civilizations[iCiv].Type
		if Event_MCThesmophoria.tValidCivs[sCiv] then
			tEvents.Event_MCThesmophoria = Event_MCThesmophoria
			break
		end
	end
end
------------------------------------------------------------------------------------------------------------------
-- Sparta
------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------
-- Oracle
------------------------------------------------------------------------------------------

local Event_MCSpartaOracle = {}
    Event_MCSpartaOracle.Name = "TXT_KEY_EVENT_SPARTA_ORACLE"
	Event_MCSpartaOracle.Desc = "TXT_KEY_EVENT_SPARTA_ORACLE_DESC"
	Event_MCSpartaOracle.tValidCivs = 
		{
		["CIVILIZATION_MC_SPARTA"]		= true,
		}
	Event_MCSpartaOracle.Weight = 4
	Event_MCSpartaOracle.CanFunc = (
		function(pPlayer)

			if load(pPlayer, "Event_MCSpartaOracle") == true then return false end

            local religionID = pPlayer:GetReligionCreatedByPlayer()
            if religionID <= 0 then 
				if (pPlayer:GetNumCities() >= 1) then
					religionID = pPlayer:GetCapitalCity():GetReligiousMajority() 
				end
			end
            if isUsingPietyPrestige then   
                religionID = JFD_GetStateReligion(pPlayer:GetID())
            end
			if religionID <= 0 then return false end

			local pTeam = pPlayer:GetTeam();
			if Teams[pTeam]:GetAtWarCount(true) == 0 then return false end

			Event_MCSpartaOracle.Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_SPARTA_ORACLE_DESC")
			local sCivType = GameInfo.Civilizations[pPlayer:GetCivilizationType()].Type
			return Event_MCSpartaOracle.tValidCivs[sCivType]

		end
		)

	Event_MCSpartaOracle.Outcomes = {}
	-------
	Event_MCSpartaOracle.Outcomes[1] = {}
	Event_MCSpartaOracle.Outcomes[1].Name = "TXT_KEY_EVENT_SPARTA_ORACLE_OUTCOME_1"
	Event_MCSpartaOracle.Outcomes[1].Desc = "TXT_KEY_EVENT_SPARTA_ORACLE_OUTCOME_1_DESC"
	Event_MCSpartaOracle.Outcomes[1].Weight = 10
	Event_MCSpartaOracle.Outcomes[1].CanFunc = (
		function(pPlayer)

			Event_MCSpartaOracle.Outcomes[1].Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_SPARTA_ORACLE_OUTCOME_1_DESC")

			return true
		end
		)
	Event_MCSpartaOracle.Outcomes[1].DoFunc = (
		function(pPlayer)

			save(pPlayer, "Event_MCSpartaOracle", true)

			JFD_SendNotification(pPlayer:GetID(), "NOTIFICATION_GENERIC", Locale.ConvertTextKey("TXT_KEY_EVENT_SPARTA_ORACLE_OUTCOME_1_NOTIFICATION"), Locale.ConvertTextKey(Event_MCSpartaOracle.Name))
		
			local uGeneral = GameInfoTypes.UNIT_GREAT_GENERAL;		
			local pcCity = pPlayer:GetCapitalCity();	
				
			pUnit = pPlayer:InitUnit(uGeneral, pcCity:GetX(), pcCity:GetY(), UNITAI_GENERAL);
			pUnit:JumpToNearestValidPlot()
			pUnit:SetName("Dercylidas");		
			
			local hPlayer = GetHumanPlayer();
			if hPlayer ~= pPlayer then
				local pTeam = pPlayer:GetTeam();
				local hTeam = hPlayer:GetTeam();
				if Teams[pTeam]:IsHasMet(hTeam) then	
					Events.GameplayAlertMessage("The Spartans have consulted the oracle of Apollo!")
				end
			end

		end
		)

	-------
	Event_MCSpartaOracle.Outcomes[2] = {}
	Event_MCSpartaOracle.Outcomes[2].Name = "TXT_KEY_EVENT_SPARTA_ORACLE_OUTCOME_2"
	Event_MCSpartaOracle.Outcomes[2].Desc = "TXT_KEY_EVENT_SPARTA_ORACLE_OUTCOME_2_DESC"
	Event_MCSpartaOracle.Outcomes[2].Weight = 1
	Event_MCSpartaOracle.Outcomes[2].CanFunc = (
		function(pPlayer)

			Event_MCSpartaOracle.Outcomes[2].Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_SPARTA_ORACLE_OUTCOME_2_DESC")

			return true
		end
		)
	Event_MCSpartaOracle.Outcomes[2].DoFunc = (
		function(pPlayer)

			save(pPlayer, "Event_MCSpartaOracle", true)

			JFD_SendNotification(pPlayer:GetID(), "NOTIFICATION_GENERIC", Locale.ConvertTextKey("TXT_KEY_EVENT_SPARTA_ORACLE_OUTCOME_2_NOTIFICATION"), Locale.ConvertTextKey(Event_MCSpartaOracle.Name))
			
			pPlayer:SetAnarchyNumTurns(1)
					
			for pUnit in pPlayer:Units() do
				if pUnit:IsCombatUnit() then
					local BaseXP = pUnit:GetExperience()
					local SpartaXP = BaseXP + 15;
					pUnit:SetExperience(SpartaXP);
				end
			end			

			local hPlayer = GetHumanPlayer();
			if hPlayer ~= pPlayer then
				local pTeam = pPlayer:GetTeam();
				local hTeam = hPlayer:GetTeam();
				if Teams[pTeam]:IsHasMet(hTeam) then	
					Events.GameplayAlertMessage("The Spartans have consulted the oracle of Apollo!")
				end
			end

		end
		)

for iSlot = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	local slotStatus = PreGame.GetSlotStatus(iSlot)
	if (slotStatus == SlotStatus["SS_TAKEN"] or slotStatus == SlotStatus["SS_COMPUTER"]) then
		local iCiv = PreGame.GetCivilization(iSlot)
		local sCiv = GameInfo.Civilizations[iCiv].Type
		if Event_MCSpartaOracle.tValidCivs[sCiv] then
			tEvents.Event_MCSpartaOracle = Event_MCSpartaOracle
			break
		end
	end
end

------------------------------------------------------------------------------------------------------------------
-- Athens
------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------
-- Socrates
------------------------------------------------------------------------------------------

local pSocrates = GameInfoTypes.POLICY_MC_ATHENS_SOCRATES_DUMMY;
local tPhilosophy = GameInfoTypes.TECH_PHILOSOPHY;

local Event_MCAthensSocrates = {}
    Event_MCAthensSocrates.Name = "TXT_KEY_EVENT_ATHENS_SOCRATES"
	Event_MCAthensSocrates.Desc = "TXT_KEY_EVENT_ATHENS_SOCRATES_DESC"
	Event_MCAthensSocrates.tValidCivs = 
		{
		["CIVILIZATION_MC_ATHENS"]		= true,
		}
	Event_MCAthensSocrates.Weight = 3
	Event_MCAthensSocrates.CanFunc = (
		function(pPlayer)

			if load(pPlayer, "Event_MCAthensSocrates") == true then return false end

			local pcCity = pPlayer:GetCapitalCity();
			local pTeam = pPlayer:GetTeam();
			if not (Teams[pTeam]:IsHasTech(tPhilosophy)) then return false end	

			Event_MCAthensSocrates.Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_ATHENS_SOCRATES_DESC")
			local sCivType = GameInfo.Civilizations[pPlayer:GetCivilizationType()].Type
			return Event_MCAthensSocrates.tValidCivs[sCivType]

		end
		)

	Event_MCAthensSocrates.Outcomes = {}
	-------
	Event_MCAthensSocrates.Outcomes[1] = {}
	Event_MCAthensSocrates.Outcomes[1].Name = "TXT_KEY_EVENT_ATHENS_SOCRATES_OUTCOME_1"
	Event_MCAthensSocrates.Outcomes[1].Desc = "TXT_KEY_EVENT_ATHENS_SOCRATES_OUTCOME_1_DESC"
	Event_MCAthensSocrates.Outcomes[1].Weight = 10
	Event_MCAthensSocrates.Outcomes[1].CanFunc = (
		function(pPlayer)

			Event_MCAthensSocrates.Outcomes[1].Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_ATHENS_SOCRATES_OUTCOME_1_DESC")

			return true
		end
		)
	Event_MCAthensSocrates.Outcomes[1].DoFunc = (
		function(pPlayer)

			save(pPlayer, "Event_MCAthensSocrates", true)

			JFD_SendNotification(pPlayer:GetID(), "NOTIFICATION_GENERIC", Locale.ConvertTextKey("TXT_KEY_EVENT_ATHENS_SOCRATES_OUTCOME_1_NOTIFICATION"), Locale.ConvertTextKey(Event_MCAthensSocrates.Name))
			
			if not pPlayer:HasPolicy(pSocrates) then
				pPlayer:SetNumFreePolicies(1)
				pPlayer:SetNumFreePolicies(0)
				pPlayer:SetHasPolicy(pSocrates, true);
			end
				
			local hPlayer = GetHumanPlayer();
			if hPlayer ~= pPlayer then
				local pTeam = pPlayer:GetTeam();
				local hTeam = hPlayer:GetTeam();
				if Teams[pTeam]:IsHasMet(hTeam) then	
					Events.GameplayAlertMessage("A philosopher named Socrates has been teaching in Athens.")
				end
			end

		end
		)

	-------
	Event_MCAthensSocrates.Outcomes[2] = {}
	Event_MCAthensSocrates.Outcomes[2].Name = "TXT_KEY_EVENT_ATHENS_SOCRATES_OUTCOME_2"
	Event_MCAthensSocrates.Outcomes[2].Desc = "TXT_KEY_EVENT_ATHENS_SOCRATES_OUTCOME_2_DESC"
	Event_MCAthensSocrates.Outcomes[2].Weight = 1
	Event_MCAthensSocrates.Outcomes[2].CanFunc = (
		function(pPlayer)

			Event_MCAthensSocrates.Outcomes[2].Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_ATHENS_SOCRATES_OUTCOME_2_DESC")

			return true
		end
		)
	Event_MCAthensSocrates.Outcomes[2].DoFunc = (
		function(pPlayer)

			save(pPlayer, "Event_MCAthensSocrates", true)

			JFD_SendNotification(pPlayer:GetID(), "NOTIFICATION_GENERIC", Locale.ConvertTextKey("TXT_KEY_EVENT_ATHENS_SOCRATES_OUTCOME_2_NOTIFICATION"), Locale.ConvertTextKey(Event_MCAthensSocrates.Name))
			
			if GetRandom(1,5) == 5 then
				pPlayer:SetAnarchyNumTurns(1)
			end
			pPlayer:ChangeFaith(200);

			local hPlayer = GetHumanPlayer();
			if hPlayer ~= pPlayer then
				local pTeam = pPlayer:GetTeam();
				local hTeam = hPlayer:GetTeam();
				if Teams[pTeam]:IsHasMet(hTeam) then	
					Events.GameplayAlertMessage("A philosopher named Socrates has been teaching in Athens.")
				end
			end

		end
		)

for iSlot = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	local slotStatus = PreGame.GetSlotStatus(iSlot)
	if (slotStatus == SlotStatus["SS_TAKEN"] or slotStatus == SlotStatus["SS_COMPUTER"]) then
		local iCiv = PreGame.GetCivilization(iSlot)
		local sCiv = GameInfo.Civilizations[iCiv].Type
		if Event_MCAthensSocrates.tValidCivs[sCiv] then
			tEvents.Event_MCAthensSocrates = Event_MCAthensSocrates
			break
		end
	end
end

------------------------------------------------------------------------------------------
-- Oracle
------------------------------------------------------------------------------------------

local pAthensOracle = GameInfoTypes.PROMOTION_MC_ATHENS_ORACLE_DUMMMY;
local bWalls = GameInfoTypes.BUILDING_WALLS;
local bWallsDummy = GameInfoTypes.BUILDING_MC_ATHENS_ORACLE_DUMMY;

local Event_MCAthensOracle = {}
    Event_MCAthensOracle.Name = "TXT_KEY_EVENT_ATHENS_ORACLE"
	Event_MCAthensOracle.Desc = "TXT_KEY_EVENT_ATHENS_ORACLE_DESC"
	Event_MCAthensOracle.tValidCivs = 
		{
		["CIVILIZATION_MC_ATHENS"]		= true,
		}
	Event_MCAthensOracle.Weight = 4
	Event_MCAthensOracle.CanFunc = (
		function(pPlayer)

			if load(pPlayer, "Event_MCAthensOracle") == true then return false end

            local religionID = pPlayer:GetReligionCreatedByPlayer()
            if religionID <= 0 then 
				if (pPlayer:GetNumCities() >= 1) then
					religionID = pPlayer:GetCapitalCity():GetReligiousMajority() 
				end
			end
            if isUsingPietyPrestige then   
                religionID = JFD_GetStateReligion(pPlayer:GetID())
            end
			if religionID <= 0 then return false end

			local pTeam = pPlayer:GetTeam();
			if Teams[pTeam]:GetAtWarCount(true) == 0 then return false end

			Event_MCAthensOracle.Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_ATHENS_ORACLE_DESC")
			local sCivType = GameInfo.Civilizations[pPlayer:GetCivilizationType()].Type
			return Event_MCAthensOracle.tValidCivs[sCivType]

		end
		)

	Event_MCAthensOracle.Outcomes = {}
	-------
	Event_MCAthensOracle.Outcomes[1] = {}
	Event_MCAthensOracle.Outcomes[1].Name = "TXT_KEY_EVENT_ATHENS_ORACLE_OUTCOME_1"
	Event_MCAthensOracle.Outcomes[1].Desc = "TXT_KEY_EVENT_ATHENS_ORACLE_OUTCOME_1_DESC"
	Event_MCAthensOracle.Outcomes[1].Weight = 10
	Event_MCAthensOracle.Outcomes[1].CanFunc = (
		function(pPlayer)

			Event_MCAthensOracle.Outcomes[1].Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_ATHENS_ORACLE_OUTCOME_1_DESC")

			return true
		end
		)
	Event_MCAthensOracle.Outcomes[1].DoFunc = (
		function(pPlayer)

			save(pPlayer, "Event_MCAthensOracle", true)
			save(pPlayer, "Event_MCAthensOracle_One", true)

			JFD_SendNotification(pPlayer:GetID(), "NOTIFICATION_GENERIC", Locale.ConvertTextKey("TXT_KEY_EVENT_ATHENS_ORACLE_OUTCOME_1_NOTIFICATION"), Locale.ConvertTextKey(Event_MCAthensOracle.Name))
			
			for pCity in pPlayer:Cities() do
				if pCity:IsHasBuilding(bWalls) then
					if not pCity:IsHasBuilding(bWallsDummy) then
						pCity:SetNumRealBuilding(bWallsDummy, 1);
					end
				end
			end
				
			local hPlayer = GetHumanPlayer();
			if hPlayer ~= pPlayer then
				local pTeam = pPlayer:GetTeam();
				local hTeam = hPlayer:GetTeam();
				if Teams[pTeam]:IsHasMet(hTeam) then	
					Events.GameplayAlertMessage("The Athenians have consulted the oracle of Apollo!")
				end
			end

		end
		)

	-------
	Event_MCAthensOracle.Outcomes[2] = {}
	Event_MCAthensOracle.Outcomes[2].Name = "TXT_KEY_EVENT_ATHENS_ORACLE_OUTCOME_2"
	Event_MCAthensOracle.Outcomes[2].Desc = "TXT_KEY_EVENT_ATHENS_ORACLE_OUTCOME_2_DESC"
	Event_MCAthensOracle.Outcomes[2].Weight = 1
	Event_MCAthensOracle.Outcomes[2].CanFunc = (
		function(pPlayer)

			local NavyCheck = 0;
			for pUnit in pPlayer:Units() do
				if (pUnit:GetDomainType() == DomainTypes.DOMAIN_SEA) and pUnit:IsCombatUnit() then
					NavyCheck = 1;
					break
				end
			end
			if NavyCheck < 1 then return false end

			Event_MCAthensOracle.Outcomes[2].Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_ATHENS_ORACLE_OUTCOME_2_DESC")

			return true
		end
		)
	Event_MCAthensOracle.Outcomes[2].DoFunc = (
		function(pPlayer)

			save(pPlayer, "Event_MCAthensOracle", true)

			JFD_SendNotification(pPlayer:GetID(), "NOTIFICATION_GENERIC", Locale.ConvertTextKey("TXT_KEY_EVENT_ATHENS_ORACLE_OUTCOME_2_NOTIFICATION"), Locale.ConvertTextKey(Event_MCAthensOracle.Name))
			
			for pUnit in pPlayer:Units() do
				if (pUnit:GetDomainType() == DomainTypes.DOMAIN_SEA) and pUnit:IsCombatUnit() then
					if not pUnit:IsHasPromotion(pAthensOracle) then
						pUnit:SetHasPromotion(pAthensOracle, true)
					end
				end
			end

			local hPlayer = GetHumanPlayer();
			if hPlayer ~= pPlayer then
				local pTeam = pPlayer:GetTeam();
				local hTeam = hPlayer:GetTeam();
				if Teams[pTeam]:IsHasMet(hTeam) then	
					Events.GameplayAlertMessage("The Athenians have consulted the oracle of Apollo!")
				end
			end

		end
		)

for iSlot = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	local slotStatus = PreGame.GetSlotStatus(iSlot)
	if (slotStatus == SlotStatus["SS_TAKEN"] or slotStatus == SlotStatus["SS_COMPUTER"]) then
		local iCiv = PreGame.GetCivilization(iSlot)
		local sCiv = GameInfo.Civilizations[iCiv].Type
		if Event_MCAthensOracle.tValidCivs[sCiv] then
			tEvents.Event_MCAthensOracle = Event_MCAthensOracle
			break
		end
	end
end

GameEvents.PlayerDoTurn.Add(
function(iPlayer)
	local pPlayer = Players[iPlayer];
	if (pPlayer:IsAlive()) then
		if (pPlayer:GetCivilizationType() == GameInfoTypes.CIVILIZATION_MC_ATHENS) then
			if load(pPlayer, "Event_MCAthensOracle_One") == true then
				for pCity in pPlayer:Cities() do
					if pCity:IsHasBuilding(bWallsDummy) then
						if not pCity:IsHasBuilding(bWalls) then
							pCity:SetNumRealBuilding(bWallsDummy, 0);
						end
					end
					if pCity:IsHasBuilding(bWalls) then
						if not pCity:IsHasBuilding(bWallsDummy) then
							pCity:SetNumRealBuilding(bWallsDummy, 1);
						end
					end
				end
			end
		end
	end
end)

------------------------------------------------------------------------------------------------------------------
-- Pergamon
------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------
-- The Dying Gaul
------------------------------------------------------------------------------------------

local uArtist = GameInfoTypes.UNIT_ARTIST;
local uArtistMC = GameInfoTypes.UNIT_MC_GREECE_DECISION_DUMMY;

local greatWorkSlotArtID = GameInfoTypes["GREAT_WORK_SLOT_ART_ARTIFACT"]
local pMCDyingGaul = GameInfoTypes.POLICY_MC_DYING_GAUL_DECISION_DUMMY;
local isBNW = (GameInfoTypes.UNITCOMBAT_SUBMARINE ~= nil);
local eClassic = GameInfoTypes.ERA_CLASSICAL;

local Event_MCTheDyingGaul = {}
	Event_MCTheDyingGaul.Name = "TXT_KEY_EVENT_MC_DYING_GAUL"
	Event_MCTheDyingGaul.Desc = "TXT_KEY_EVENT_MC_DYING_GAUL_DESC"
	Event_MCTheDyingGaul.Weight = 3
	Event_MCTheDyingGaul.CanFunc = (

		function(pPlayer)		
		
			if load(pPlayer, "Event_MCTheDyingGaul") == true then return false end

			if not (pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_MC_PERGAMON"]) then return false end
	
			if not isBNW then return false end

			local pTeam = pPlayer:GetTeam();
			if (Teams[pTeam]:GetCurrentEra() < eClassic) then return false end

			if Teams[pTeam]:GetAtWarCount(true) == 0 then return true, false end

			if (not pPlayer:HasAvailableGreatWorkSlot(greatWorkSlotArtID)) 	then return true, false end

			Event_MCTheDyingGaul.Name = "TXT_KEY_EVENT_MC_DYING_GAUL"

			return true

		end
		)

	Event_MCTheDyingGaul.Outcomes = {}

	-- Outcome 1
	Event_MCTheDyingGaul.Outcomes[1] = {}
	Event_MCTheDyingGaul.Outcomes[1].Name = "TXT_KEY_EVENT_MC_DYING_GAUL_OUTCOME_1"
	Event_MCTheDyingGaul.Outcomes[1].Desc = "TXT_KEY_EVENT_MC_DYING_GAUL_OUTCOME_1_DESC"
	Event_MCTheDyingGaul.Outcomes[1].Weight = 10
	Event_MCTheDyingGaul.Outcomes[1].CanFunc = (

		function(pPlayer)

			Event_MCTheDyingGaul.Outcomes[1].Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_MC_DYING_GAUL_OUTCOME_1_DESC")

			return true
		end
		)
	Event_MCTheDyingGaul.Outcomes[1].DoFunc = (
		function(pPlayer)

			save(pPlayer, "Event_MCTheDyingGaul", true)

			local pcCity = pPlayer:GetCapitalCity();

			aUnit = pPlayer:InitUnit(uArtistMC, pcCity:GetX(), pcCity:GetY(), UNITAI_ARTIST);
			aUnit:JumpToNearestValidPlot()

			JFD_SendNotification(pPlayer:GetID(), "NOTIFICATION_GENERIC", Locale.ConvertTextKey("TXT_KEY_EVENT_MC_DYING_GAUL_OUTCOME_1_NOTIFICATION"), Locale.ConvertTextKey(Event_MCTheDyingGaul.Name))

			local hPlayer = GetHumanPlayer();
			if hPlayer ~= 0 then
				if hPlayer ~= pPlayer then
					local pTeam = pPlayer:GetTeam();
					local hTeam = hPlayer:GetTeam();
					if Teams[pTeam]:IsHasMet(hTeam) then	
						Events.GameplayAlertMessage("" .. Locale.ConvertTextKey(pPlayer:GetCivilizationShortDescription()) .. " has commissioned a sculpture from the Great Artist Epigonus!")
					end
				end	
			end

		end
		)

	-- Outcome 2
	Event_MCTheDyingGaul.Outcomes[2] = {}
	Event_MCTheDyingGaul.Outcomes[2].Name = "TXT_KEY_EVENT_MC_DYING_GAUL_OUTCOME_2"
	Event_MCTheDyingGaul.Outcomes[2].Desc = "TXT_KEY_EVENT_MC_DYING_GAUL_OUTCOME_2_DESC"
	Event_MCTheDyingGaul.Outcomes[2].Weight = 0
	Event_MCTheDyingGaul.Outcomes[2].CanFunc = (

		function(pPlayer)

			Event_MCTheDyingGaul.Outcomes[2].Desc = Locale.ConvertTextKey("TXT_KEY_EVENT_MC_DYING_GAUL_OUTCOME_2_DESC")

			return true
		end
		)
	Event_MCTheDyingGaul.Outcomes[2].DoFunc = (
		function(pPlayer)

			save(pPlayer, "Event_MCTheDyingGaul", true)

			if not pPlayer:HasPolicy(pMCDyingGaul) then
				pPlayer:SetNumFreePolicies(1)
				pPlayer:SetNumFreePolicies(0)
				pPlayer:SetHasPolicy(pMCDyingGaul, true);
			end

			JFD_SendNotification(pPlayer:GetID(), "NOTIFICATION_GENERIC", Locale.ConvertTextKey("TXT_KEY_EVENT_MC_DYING_GAUL_OUTCOME_2_NOTIFICATION"), Locale.ConvertTextKey(Event_MCTheDyingGaul.Name))

			local hPlayer = GetHumanPlayer();
			if hPlayer ~= 0 then
				if hPlayer ~= pPlayer then
					local pTeam = pPlayer:GetTeam();
					local hTeam = hPlayer:GetTeam();
					if Teams[pTeam]:IsHasMet(hTeam) then	
						Events.GameplayAlertMessage("" .. Locale.ConvertTextKey(pPlayer:GetCivilizationAdjective()) .. " citizens are adorning their temples with scenes commemorating their military victories!")
					end
				end	
			end

		end
		)

tEvents.Event_MCTheDyingGaul = Event_MCTheDyingGaul

function MCGWDyingGaulReplace(playerID)
	local pPlayer = Players[playerID]
	for pUnit in pPlayer:Units() do
		if (pUnit:GetUnitType() == uArtistMC) then
			local pPlot = pUnit:GetPlot();
			pUnit:Kill();
			aUnit = pPlayer:InitUnit(uArtist, pPlot:GetX(), pPlot:GetY(), UNITAI_ARTIST);
		end
	end
end

GameEvents.PlayerDoTurn.Add(MCGWDyingGaulReplace)









