--=======================================================================================================================
print("Newfoundland Decisions: loaded")
--=======================================================================================================================
-- UTILITIES
--=======================================================================================================================
-- MOD CHECKS
-------------------------------------------------------------------------------------------------------------------------
-- JFD_IsUsingCPDLL
function JFD_IsUsingCPDLL()
	local cPDLLID = "d1b6328c-ff44-4b0d-aad7-c657f83610cd"
	for _, mod in pairs(Modding.GetActivatedMods()) do
		if (mod.ID == cPDLLID) then
			return true
		end
	end
	return false
end
local isUsingCPDLL = JFD_IsUsingCPDLL()
-------------------------------------------------------------------------------------------------------------------------
-- UTILITIES
-------------------------------------------------------------------------------------------------------------------------
-- JFD_SendWorldEvent
function JFD_SendWorldEvent(playerID, description)
	local player = Players[playerID]
	local playerTeam = Teams[player:GetTeam()]
	local activePlayer = Players[Game.GetActivePlayer()]
	if (not player:IsHuman()) and playerTeam:IsHasMet(activePlayer:GetTeam()) then
		Players[Game.GetActivePlayer()]:AddNotification(NotificationTypes["NOTIFICATION_DIPLOMACY_DECLARATION"], description, "[COLOR_POSITIVE_TEXT]World Events[ENDCOLOR]", -1, -1)
	end
end 
--=======================================================================================================================
-- DECISIONS
--=======================================================================================================================
-- GLOBALS
--------------------------------------------------------------------------------------------------------------------------
local civilizationID  = GameInfoTypes["CIVILIZATION_PI_NEWFOUNDLAND"]
local mathCeil = math.ceil
include("PlotIterators");

-------------------------------------------------------------------------------------------------------------------------
-- Newfoundland: Expand the Railway
-------------------------------------------------------------------------------------------------------------------------
local policyNewfRail = GameInfoTypes["POLICY_DECISIONS_PI_RAILWAY"]

function CityRailProduction(playerID)
	local cPlayer = Players[playerID]
	if not cPlayer:HasPolicy(policyNewfRail) then return end
	for rCity in cPlayer:Cities() do
		local numAdjacentRails = 0
		for pCheckPlot in PlotRingIterator(rCity:GetPlot(), 1, SECTOR_NORTH, DIRECTION_CLOCKWISE) do
			if pCheckPlot:IsRoute() and pCheckPlot:GetRouteType() == ROUTE_RAILROAD then
				numAdjacentRails = numAdjacentRails + 1
			end
		end
		rCity:ChangeProduction(numAdjacentRails)
	end
end

local Decisions_Pi_Newfoundland_Railway = {}
	Decisions_Pi_Newfoundland_Railway.Name = "TXT_KEY_DECISIONS_PI_NEWFOUNDLAND_RAILWAY"
	Decisions_Pi_Newfoundland_Railway.Desc = "TXT_KEY_DECISIONS_PI_NEWFOUNDLAND_RAILWAY_DESC"
	HookDecisionCivilizationIcon(Decisions_Pi_Newfoundland_Railway, "CIVILIZATION_PI_NEWFOUNDLAND")
	Decisions_Pi_Newfoundland_Railway.CanFunc = (
	function(player)
		if player:GetCivilizationType() ~= civilizationID then return false, false end
        if player:HasPolicy(policyNewfRail) then
			Decisions_Pi_Newfoundland_Railway.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_PI_NEWFOUNDLAND_RAILWAY_ENACTED_DESC")
			return false, false, true
		end
		local goldCost = mathCeil(400*iMod)
		Decisions_Pi_Newfoundland_Railway.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_PI_NEWFOUNDLAND_RAILWAY_DESC", goldCost)
		if player:GetGold() < goldCost then return true, false end
		if not (Teams[player:GetTeam()]:IsHasTech(GameInfoTypes.TECH_RAILROAD)) then return true, false end
		if player:GetNumResourceAvailable(iMagistrate, false) < 1 then return true, false end
		return true, true
	end
	)

	Decisions_Pi_Newfoundland_Railway.DoFunc = (
	function(player)
		local playerID = player:GetID()
		local goldCost = mathCeil(400*iMod)
		local capital = player:GetCapitalCity()
		player:ChangeNumResourceTotal(iMagistrate, -1)
		player:ChangeGold(-goldCost)
        	player:SetNumFreePolicies(1)
	        player:SetNumFreePolicies(0)
        	player:SetHasPolicy(policyNewfRail, true)
		JFD_SendWorldEvent(playerID, Locale.ConvertTextKey("TXT_KEY_WORLD_EVENT_PI_NEWFOUNDLAND_RAILWAY", player:GetName(), player:GetCivilizationShortDescription(), player:GetCivilizationAdjective()))
	end
	)
	
Decisions_AddCivilisationSpecific(civilizationID, "Decisions_Pi_Newfoundland_Railway", Decisions_Pi_Newfoundland_Railway)

GameEvents.PlayerDoTurn.Add(CityRailProduction)

-------------------------------------------------------------------------------------------------------------------------
-- Newfoundland: Form the Wartime National Government
-------------------------------------------------------------------------------------------------------------------------
local policyNewfWar = GameInfoTypes["POLICY_DECISIONS_PI_WAR_GOVT"]
local buildingWarGovt = GameInfoTypes["BUILDING_PI_WAR_GOVT"]

function HastenGoldenAge(playerID)
	local gPlayer = Players[playerID]
	if not gPlayer:HasPolicy(policyNewfWar) then return end
	local gHappiness = gPlayer:GetExcessHappiness()
	local gUpdateAmount = math.floot(gHappiness / 3)
	gPlayer:ChangeGoldenAgeProgressMeter(gUpdateAmount)
end

local Decisions_Pi_Newfoundland_War_Govt = {}
	Decisions_Pi_Newfoundland_War_Govt.Name = "TXT_KEY_DECISIONS_PI_NEWFOUNDLAND_WAR_GOVT"
	Decisions_Pi_Newfoundland_War_Govt.Desc = "TXT_KEY_DECISIONS_PI_NEWFOUNDLAND_WAR_GOVT_DESC"
	HookDecisionCivilizationIcon(Decisions_Pi_Newfoundland_War_Govt, "CIVILIZATION_PI_NEWFOUNDLAND")
	Decisions_Pi_Newfoundland_War_Govt.CanFunc = (
	function(player)
		if player:GetCivilizationType() ~= civilizationID then return false, false end
		if player:HasPolicy(policyNewfWar) then
			Decisions_Pi_Newfoundland_War_Govt.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_PI_NEWFOUNDLAND_WAR_GOVT_ENACTED_DESC")
			return false, false, true
		end
		Decisions_Pi_Newfoundland_War_Govt.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_PI_NEWFOUNDLAND_WAR_GOVT_DESC")
		if not Teams[player:GetTeam()]:IsAtWar() then return true, false end
		if player:GetExcessHappiness() >= 0 then return true, false end
		if player:GetNumResourceAvailable(iMagistrate, false) < 3 then return true, false end
		return true, true
	end
	)

	Decisions_Pi_Newfoundland_War_Govt.DoFunc = (
	function(player)
		local playerID = player:GetID()
		player:ChangeNumResourceTotal(iMagistrate, -3)
		for wltkdCity in player:Cities() do
			wltkdCity:SetWeLoveTheKingDayCounter(5)
		end
		player:GetCapitalCity():SetNumRealBuilding(buildingWarGovt, 1)
		player:SetNumFreePolicies(1)
	        player:SetNumFreePolicies(0)
        	player:SetHasPolicy(policyNewfWar, true)
		JFD_SendWorldEvent(playerID, Locale.ConvertTextKey("TXT_KEY_WORLD_EVENT_PI_NEWFOUNDLAND_WAR_GOVT", player:GetName(), player:GetCivilizationShortDescription(), player:GetCivilizationAdjective()))
	end
	)
	
Decisions_AddCivilisationSpecific(civilizationID, "Decisions_Pi_Newfoundland_War_Govt", Decisions_Pi_Newfoundland_War_Govt)

GameEvents.PlayerDoTurn.Add(HastenGoldenAge)
