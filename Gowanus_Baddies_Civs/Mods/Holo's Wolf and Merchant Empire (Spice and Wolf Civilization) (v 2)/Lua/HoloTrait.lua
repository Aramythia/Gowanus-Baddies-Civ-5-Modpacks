-- HoloTrait
-- Author: DarkScythe
-- DateCreated: 5/18/2014 12:29:50 AM
--------------------------------------------------------------
print("[HoloDebug] Loading Lua for Holo's trait..")

print("[HoloDebug] Loading core TableSaverLoader component..")
include("HoloTSLCore.lua")

print("[HoloDebug] Preparing global table structure..")
MapModData.WWDataStore = MapModData.WWDataStore or {}
WWDataStore = MapModData.WWDataStore
WWDataStore.ResourcePlot = {}
WWDataStore.RowenGift = {}
WWDataStore.HoloUpgrades = {}

print("[HoloDebug] Loading TableSaverLoader initialization file..")
include("HoloTSLInit.lua")
-- TableSaverLoader init end

print("[HoloDebug] Loading plot iterator functions..")
include("HoloPlotIterationFunctions.lua")

-- Begin Civilization Lua
-- Global (to this file) Variable Declarations
-- Variables referenced often in this script
local iHoloCiv = GameInfoTypes.CIVILIZATION_WISEWOLF
local iHoloPolicy = GameInfoTypes.POLICY_WISEWOLF_TRAIT_ADDON
local iWheatField = GameInfoTypes.RESOURCE_WHEAT
local iWineField = GameInfoTypes.RESOURCE_WINE
local iSheepField = GameInfoTypes.RESOURCE_SHEEP
local tHappyResources = {iWineField, iSheepField}
local tAllTargetResources = {iWheatField, iWineField, iSheepField}
local iBasicFarm = GameInfoTypes.IMPROVEMENT_FARM
local iBasicPlantation = GameInfoTypes.IMPROVEMENT_PLANTATION
local iBasicPasture = GameInfoTypes.IMPROVEMENT_PASTURE
local iAppleOrchard = GameInfoTypes.IMPROVEMENT_HOLO_APPLE_ORCHARD
local tHappyImprovements = {iBasicPlantation, iBasicPasture, iAppleOrchard}
local iOrchardThreshold = 2 -- How many Orchards required in each city to grant the Luxury
local iResourceHappyBoost = 1 -- How much extra Happiness to grant per eligible plot
local iMaxBranchDiscounts = 10 -- Maximum number of buildings that can provide a discount

-- Variables used and overwritten throughout this script
local bGPDouble = false -- All Great People improvements trigger BuildFinished twice for some reason
local iPlayerGold = 0
local bBuyingPlots = false
local iCityFPT = 0
local iCityHPT = 0
local iCityGPT = 0
local iHappyCounter = 0
local iOrchardCounter = 0
local iGuildBranchCounter = 0

-- Tables automatically built and filled in on the loading of this script
local tDropTradeDummy = {}
local tBonusDummies = {}
local tBonusYields = {}

-- Begin Lua Script Functions
-- Debug Functions
local function debugPrint(debugMessage)
	if debugMode == 1 then
		print(debugMessage)
	end
end

local function debugModeCheck()
	if debugMode == 0 then
		print("[HoloDebug] Debug mode not initialized. Set debugMode = 1 to activate if there are problems.")
	elseif debugMode == 1 then
		print("[HoloDebug] Debug mode initialized. Additional debug messages activated for all HoloLua functions. Set debugMode = 0 to disable.")
	else
		print("[HoloDebug] WARNING: Invalid debugMode set in Lua file. Valid settings are 0 to disable, and 1 to enable. Current value: " .. tostring(debugMode))
		print("[HoloDebug] WARNING: Possible alteration or corruption of Lua file detected. Resetting debugMode..")
		debugMode = 1
		print("[HoloDebug] WARNING: debugMode activated. Re-verification of main Lua file integrity suggested in order to remove this warning.")
	end
end

local function debugModList()
	if debugMode == 1 then
		debugPrint("[HoloDebug] Preparing list of all enabled mods..")
		for key, LoadedMod in pairs(Modding.GetEnabledModsByActivationOrder()) do
			local iModID = LoadedMod.ModID
			local iModVer = LoadedMod.Version
			local sModName = Modding.GetModProperty(iModID, iModVer, "Name")
			local sAuthorName = Modding.GetModProperty(iModID, iModVer, "Authors")
			debugPrint("[HoloDebug] Player Enabled Mod: " .. tostring(iModID) .. " (" .. tostring(sModName) .. " v" .. tostring(iModVer) .. " by " .. tostring(sAuthorName) .. ")")
		end
	end
end

local function debugPlayerList()
	if debugMode == 1 then
		debugPrint("[HoloDebug] Preparing list of players in current game..")
		local iTotalCivs = 0
		for i = 0, GameDefines.MAX_MAJOR_CIVS - 1 do
			local iSlot = PreGame.GetSlotStatus(i)
			if iSlot == SlotStatus.SS_TAKEN or iSlot == SlotStatus.SS_COMPUTER then
				local pPlayer = Players[i]
				local sPlayerName = pPlayer:GetName()
				local iPlayerCiv = pPlayer:GetCivilizationType()
				local sCivName = GameInfo.Civilizations[iPlayerCiv].Type
				local sStatus
				if pPlayer:IsAlive() then
					sStatus = "still alive!"
				else
					sStatus = "destroyed!"
				end
				debugPrint("[HoloDebug] Player " .. tostring(i) .. " is playing as " .. sPlayerName .. " of civilization " .. tostring(iPlayerCiv) .. " (" .. sCivName .. ") who is currently " .. sStatus)
				iTotalCivs = iTotalCivs + 1
			end
		end
		debugPrint("[HoloDebug] [" .. tostring(iTotalCivs) .. "] Major Civilizations in this game.")
	end
end

local function debugGameInfo()
	if debugMode == 1 then
		debugPrint("[HoloDebug] Preparing data on settings used for current game..")
		debugPrint("[HoloDebug] -- Map Information --")
		local mapScript = PreGame.GetMapScript()
		local sWorldSize = Locale.ConvertTextKey(GameInfo.Worlds[Map.GetWorldSize()].Description)
		debugPrint("[HoloDebug] Map Type: " .. mapScript)
		debugPrint("[HoloDebug] Map Size: " .. sWorldSize)
		debugPrint("[HoloDebug] -- Game Setup --")
		local iGameType = PreGame.GetGameType()
		local sGameType
		for type, id in pairs(GameTypes) do
			if id == iGameType then
				sGameType = type
				break
			end
		end
		local sGameSpeed = Locale.ConvertTextKey(GameInfo.GameSpeeds[Game.GetGameSpeedType()].Description)
		local sStartEra = Locale.ConvertTextKey(GameInfo.Eras[Game.GetStartEra()].Description)
		local iCityStates = PreGame.GetNumMinorCivs()
		local enabledGameOptions
		for row in GameInfo.GameOptions() do
			if PreGame.GetGameOption(row.Type) == 1 then
				local enabledOption = Locale.ConvertTextKey(row.Description)
				enabledGameOptions = enabledGameOptions and enabledGameOptions .. ", " .. enabledOption or enabledOption
			end
		end
		local enabledVictories
		local disabledVictories = "None"
		for row in GameInfo.Victories() do
			local victoryCondition = Locale.ConvertTextKey(row.Description)
			if PreGame.IsVictory(row.ID) == true then
				enabledVictories = enabledVictories and enabledVictories .. ", " .. victoryCondition or victoryCondition
			else
				disabledVictories = disabledVictories ~= "None" and disabledVictories .. ", " .. victoryCondition or victoryCondition
			end
		end
		debugPrint("[HoloDebug] Game Type: " .. sGameType)
		debugPrint("[HoloDebug] Game Speed: " .. sGameSpeed)
		debugPrint("[HoloDebug] Game Start: [" .. sStartEra .. "] with [" .. tostring(iCityStates) .. "] City-States")
		debugPrint("[HoloDebug] Game Options: " .. enabledGameOptions)
		debugPrint("[HoloDebug] Victories Enabled: " .. enabledVictories)
		debugPrint("[HoloDebug] Victories Disabled: " .. disabledVictories)
		debugPrint("[HoloDebug] -- Game State --")
		local iGameState = Game.GetGameState()
		local sGameState
		for gameState, id in pairs(GameplayGameStateTypes) do
			if id == iGameState then
				sGameState = gameState
				break
			end
		end
		local iPlayTime = Game.GetMinutesPlayed()
		local iElapsedTurns = Game.GetElapsedGameTurns()
		local iGameLength = Game.GetMaxTurns()
		local iStartTurn = Game.GetStartTurn()
		local iCurrentTurn = Game.GetGameTurn()
		local iEndTurn = Game.GetEstimateEndTurn()
		local sCurrentEra = Locale.ConvertTextKey(GameInfo.Eras[Game.GetCurrentEra()].Description)
		local iReligionsFounded = Game.GetNumReligionsFounded()
		local iReligionsLeft = Game.GetNumReligionsStillToFound()
		debugPrint("[HoloDebug] Game Status: " .. sGameState)
		debugPrint("[HoloDebug] Game has been in progress for [" .. tostring(iPlayTime) .. "] minutes.")
		debugPrint("[HoloDebug] [" .. tostring(iElapsedTurns) .. "] of [" .. tostring(iGameLength) .. "] turns have elapsed since the game started on turn [" .. tostring(iStartTurn) .. "] with the game currently on turn [" .. tostring(iCurrentTurn) .. "] of [" .. tostring(iEndTurn) .. "] with the World in the [" .. sCurrentEra .. "]")
		debugPrint("[HoloDebug] [" .. tostring(iReligionsFounded) .. "] Religions have been founded, with [" .. tostring(iReligionsLeft) .. "] Religions still available.")
		debugPrint("[HoloDebug] -- Player Status --")
		local iHumanPlayers = Game.GetNumHumanPlayers()
		debugPrint("[HoloDebug] Human Players: [" .. tostring(iHumanPlayers) .. "]")
		for i = 0, GameDefines.MAX_MAJOR_CIVS - 1 do
			local iSlot = PreGame.GetSlotStatus(i)
			local pPlayer = Players[i]
			if pPlayer:IsHuman() and pPlayer:IsAlive() then
				local sPlayerCiv = Locale.ConvertTextKey(GameInfo.Civilizations[pPlayer:GetCivilizationType()].Description)
				local sPlayerEra = Locale.ConvertTextKey(GameInfo.Eras[pPlayer:GetCurrentEra()].Description)
				local sDifficulty = Locale.ConvertTextKey(GameInfo.HandicapInfos[pPlayer:GetHandicapType()].Description)
				local iPlayerScore = pPlayer:GetScore()
				debugPrint("[HoloDebug] Player [" .. tostring(i) .. "] is playing as the [" .. sPlayerCiv .. "] in the [" .. sPlayerEra .. "] on [" .. sDifficulty .. "] Difficulty, with a current score of [" .. tostring(iPlayerScore) .. "]")
			end
		end
	end
end
		
local function GameStateInit()
	print("[HoloDebug] Populating Trade Route Removal Dummy Buildings table..")
	for row in GameInfo.Buildings() do
		if string.find(row.Type, "BUILDING_HWW_TRADE_ROUTE_CANCEL_DUMMY_MINUS") then
			tDropTradeDummy[#tDropTradeDummy + 1] = row.ID
		end
	end
	print("[HoloDebug] Populating Bonus Dummy Building and Yields tables..")
	for row in GameInfo.Building_YieldChanges() do
		if string.find(row.BuildingType, "BUILDING_HWW_BONUS_") then
			tBonusDummies[#tBonusDummies + 1] = GameInfoTypes[row.BuildingType]
			tBonusYields[#tBonusYields + 1] = YieldTypes[row.YieldType]
		end
	end
	print("[HoloDebug] Checking current game state..")
	local pPlayer = Players[Game.GetActivePlayer()]
	if Game.GetElapsedGameTurns() == 0 and not pPlayer:IsFoundedFirstCity() then
		print("[HoloDebug] Searching for obsolete data from a previous game..")
		if next(WWDataStore.ResourcePlot) then
			print("[HoloDebug] WARNING: Detecting table data from a previous game which was not destroyed for this new game.")
			print("[HoloDebug] WARNING: Resetting table data..")
			WWDataStore.ResourcePlot = {}
			WWDataStore.RowenGift = {}
			WWDataStore.HoloUpgrades = {}
			print("[HoloDebug] WARNING: Data tables purged and ready for a new game.")
		else
			print("[HoloDebug] No existing data found.")
		end
		print("[HoloDebug] Holo, the Wisewolf of Yoitsu, is ready for a new adventure!")
	else
		print("[HoloDebug] Savegame loaded. Verifying game state data..")
		local iPlayerCiv = pPlayer:GetCivilizationType()
		if iPlayerCiv == iHoloCiv and pPlayer:IsAlive() then
			local pCity = pPlayer:GetCapitalCity()
			local iHappyDummy = GameInfoTypes.BUILDING_HWW_HAPPY_DUMMY
			local iCurrentHappiness = pCity:GetNumRealBuilding(iHappyDummy)
			if iCurrentHappiness > 0 and iHappyCounter == 0 then
				iHappyCounter = iCurrentHappiness
				print("[HoloDebug] Game state data loaded successfully.")
			end
		end
		print("[HoloDebug] Holo is ready to continue her journey!")
	end
end

function WisewolfGameInit()
	debugModeCheck()
	debugModList()
	debugPlayerList()
	debugGameInfo()
	GameStateInit()
end

Events.LoadScreenClose.Add(WisewolfGameInit)

-- Begin Gameplay Functions
-- Basic Functions
local function PlotResource(pPlot, TargetResourceTypes)
	debugPrint("Determining resources on plot..")
	local iPlotResource = pPlot:GetResourceType()
	local inputIsNumber = type(TargetResourceTypes) == "number"
	local TargetResourceTypes = inputIsNumber and {TargetResourceTypes} or TargetResourceTypes or {iPlotResource}
	local result = false
	for i = 1, #TargetResourceTypes do
		local iTargetResource = TargetResourceTypes[i]
		if iPlotResource > -1 then
			if iPlotResource == iTargetResource then
				local sResourceType = GameInfo.Resources[iTargetResource].Type
				debugPrint("Plot contains resource ID " .. tostring(iPlotResource) .. " (" .. sResourceType .. ")")
				result = true
				break
			else
				debugPrint("Plot contains a resource, but is not desired resource ID " .. tostring(iTargetResource))
			end
		else
			debugPrint("Plot does not contain any resources.")
			break
		end
	end
	return result
end

local function PlotOwner(pPlot, iPlayer)
	debugPrint("Determining owner of plot..")
	local result = false
	local iPlotOwner = pPlot:GetOwner()
	if iPlotOwner > -1 then --Unowned tiles are NOT nil! They are owned by Player "-1"
		local iOwnerCiv = Players[iPlotOwner]:GetCivilizationType() --Causes error when attempting to find the civilization of an unowned plot
		local sOwnerCiv = GameInfo.Civilizations[iOwnerCiv].Type
		if iPlotOwner == iPlayer then
			debugPrint("Plot is owned by target civilization " .. tostring(iOwnerCiv) .. " (" .. sOwnerCiv .. ")")
			result = true
		else
			debugPrint("Plot is not owned by target civilization.")
		end
	else
		debugPrint("Plot is unowned.")
	end
	return result
end

local function PlotImproved(pPlot, TargetImprovements)
	debugPrint("Determining improvements on plot..")
	local result = false
	local iPlotImprovement = pPlot:GetImprovementType()
	local inputIsNumber = type(TargetImprovements) == "number"
	local TargetImprovements = inputIsNumber and {TargetImprovements} or TargetImprovements or {iPlotImprovement}
	for i = 1, #TargetImprovements do
		local iMatchedImprovement = TargetImprovements[i]
		if iPlotImprovement > -1 then
			local sImprovementType = GameInfo.Improvements[iPlotImprovement].Type --Causes error when no improvement exists.. No string for NO_IMPROVEMENT
			if iPlotImprovement == iMatchedImprovement then
				if pPlot:IsImprovementPillaged() == true then
					debugPrint("Plot contains improvement ID " .. tostring(iPlotImprovement) .. " (" .. sImprovementType .. ") but it is pillaged!")
				else
					debugPrint("Plot contains improvement ID " .. tostring(iPlotImprovement) .. " (" .. sImprovementType .. ")")
					result = true
				end
				break
			else
				debugPrint("Plot contains improvement ID " .. tostring(iPlotImprovement) .. " (" .. sImprovementType .. "), but does not match requested improvement ID " .. tostring(iMatchedImprovement) .. " (" .. GameInfo.Improvements[iMatchedImprovement].Type .. ")")
			end
		else
			debugPrint("Plot does not contain any completed improvements, or is unimproved")
			break
		end
	end
	return result
end

local function CityHasBuildingClass(pCity, sBuildingClass)
	local result = false
	local sCityName = pCity:GetName()
	for TargetBuilding in GameInfo.Buildings("BuildingClass='" .. sBuildingClass .. "'") do
		debugPrint("Searching through main list of buildings. Current building: " .. TargetBuilding.Type)
		if pCity:IsHasBuilding(TargetBuilding.ID) then
			debugPrint(sCityName .. " has the building " .. TargetBuilding.Type)
			result = true
			break
		else
			debugPrint(sCityName .. " does not have the building " .. TargetBuilding.Type)
		end
	end
	return result
end

-- Bonus Yield Functions
local function WheatPlotBonus(tableKey, iRowIdentifier, pPlot, iPlotX, iPlotY, bBonusApplied)
	debugPrint("[WheatPlotBonus] Adjusting yields for unimproved Wheat plots..")
	local iFood = GameInfoTypes.YIELD_FOOD
	local iFaith = GameInfoTypes.YIELD_FAITH
	local iCulture = GameInfoTypes.YIELD_CULTURE
	local iPlotOwner = pPlot:GetOwner()
	local iOwnerCiv = iPlotOwner ~= -1 and Players[iPlotOwner]:GetCivilizationType() or -1
	if bBonusApplied == true and tableKey[iRowIdentifier].bBonusYield == false then
		debugPrint("[WheatPlotBonus] Plot is eligible for increased basic yields, applying bonus..")
		Game.SetPlotExtraYield(iPlotX, iPlotY, iFood, 1)
		Game.SetPlotExtraYield(iPlotX, iPlotY, iFaith, 1)
		tableKey[iRowIdentifier].bBonusYield = true
	elseif bBonusApplied == false and tableKey[iRowIdentifier].bBonusYield == true then
		debugPrint("[WheatPlotBonus] Plot is no longer eligible for increased basic yields, removing bonus..")
		Game.SetPlotExtraYield(iPlotX, iPlotY, iFood, -1)
		Game.SetPlotExtraYield(iPlotX, iPlotY, iFaith, -1)
		tableKey[iRowIdentifier].bBonusYield = false
		if iOwnerCiv == iHoloCiv and PlotImproved(pPlot, iBasicFarm) and tableKey[iRowIdentifier].bFarmYield == false then
			debugPrint("[WheatPlotBonus] Plot is now eligible for increased enhanced yields, applying bonus..")
			Game.SetPlotExtraYield(iPlotX, iPlotY, iFood, 2)
			Game.SetPlotExtraYield(iPlotX, iPlotY, iFaith, 1)
			Game.SetPlotExtraYield(iPlotX, iPlotY, iCulture, 1)
			tableKey[iRowIdentifier].bFarmYield = true
		end
	else
		print("[WheatPlotBonus] WARNING: Function called while plot is in an invalid state!")
	end
	debugPrint("[WheatPlotBonus] Completed adjustment of basic yields.")
end

local function WheatFarmBonus(tableKey, iRowIdentifier, pPlot, iPlotX, iPlotY, bBonusApplied)
	debugPrint("[WheatFarmBonus] Adjusting yields for farmed Wheat plots..")
	local iFood = GameInfoTypes.YIELD_FOOD
	local iFaith = GameInfoTypes.YIELD_FAITH
	local iCulture = GameInfoTypes.YIELD_CULTURE
	local iPlotOwner = pPlot:GetOwner()
	local iOwnerCiv = iPlotOwner ~= -1 and Players[iPlotOwner]:GetCivilizationType() or -1
	if bBonusApplied == true and tableKey[iRowIdentifier].bFarmYield == false then
		debugPrint("[WheatFarmBonus] Plot is eligible for increased enhanced yields, applying bonus..")
		Game.SetPlotExtraYield(iPlotX, iPlotY, iFood, 2)
		Game.SetPlotExtraYield(iPlotX, iPlotY, iFaith, 1)
		Game.SetPlotExtraYield(iPlotX, iPlotY, iCulture, 1)
		tableKey[iRowIdentifier].bFarmYield = true
	elseif bBonusApplied == false and tableKey[iRowIdentifier].bFarmYield == true then
		debugPrint("[WheatFarmBonus] Plot is no longer eligible for increased enhanced yields, removing bonus..")
		Game.SetPlotExtraYield(iPlotX, iPlotY, iFood, -2)
		Game.SetPlotExtraYield(iPlotX, iPlotY, iFaith, -1)
		Game.SetPlotExtraYield(iPlotX, iPlotY, iCulture, -1)
		tableKey[iRowIdentifier].bFarmYield = false
		if iOwnerCiv == iHoloCiv and not PlotImproved(pPlot) and tableKey[iRowIdentifier].bBonusYield == false then
			debugPrint("[WheatFarmBonus] Plot is now eligible for increased basic yields, applying bonus..")
			Game.SetPlotExtraYield(iPlotX, iPlotY, iFood, 1)
			Game.SetPlotExtraYield(iPlotX, iPlotY, iFaith, 1)
			tableKey[iRowIdentifier].bBonusYield = true
		end
	else
		print("[WheatFarmBonus] WARNING: Function called while plot is in an invalid state!")
	end
	debugPrint("[WheatFarmBonus] Completed adjustment of enhanced yields.")
end

local function HappyPlotBonus(tableKey, iRowIdentifier, pPlot, iPlotX, iPlotY, bBonusApplied, bOwnerChanged)
	debugPrint("[HappyPlotBonus] Adjusting counters for extra resource happiness..")
	if bBonusApplied == true and tableKey[iRowIdentifier].bBonusYield == false then
		debugPrint("[HappyPlotBonus] Plot is eligible for extra happiness, updating counter..")
		iHappyCounter = iHappyCounter + iResourceHappyBoost
		tableKey[iRowIdentifier].bBonusYield = true
	elseif bBonusApplied == false and tableKey[iRowIdentifier].bBonusYield == true then
		debugPrint("[HappyPlotBonus] Plot is no longer eligible for extra happiness, updating counter..")
		if not bOwnerChanged then
			iHappyCounter = iHappyCounter - iResourceHappyBoost
		end
		tableKey[iRowIdentifier].bBonusYield = false
	else
		print("[HappyPlotBonus] WARNING: Function called while plot is in an invalid state!")
	end
	debugPrint("[HappyPlotBonus] Completed adjustment of extra resource happiness.")
end

-- Support Functions
local function CivComparator (iPlayer, iTargetCiv)
	debugPrint("[CivComparator] Determining civilization of current player..")
	local result = false
	if iPlayer < GameDefines.MAX_MAJOR_CIVS then
		local sPlayerName = Players[iPlayer]:GetName()
		local pPlayer = Players[iPlayer]
		local iPlayerCiv = pPlayer:GetCivilizationType()
		local sCivName = GameInfo.Civilizations[iPlayerCiv].Type
		debugPrint("[CivComparator] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") is a major civilization (" .. sCivName .. ")")
		if iPlayerCiv == iTargetCiv then
			debugPrint("[CivComparator] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") leads target civilization: " .. sCivName)
			debugPrint("[CivComparator] Civilization " .. tostring(iPlayerCiv) .. " matches target civilization " .. tostring(iTargetCiv) .. " (" .. sCivName .. ")")
			result = true
		else
			debugPrint("[CivComparator] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") is not target civilization")
		end
	else
		debugPrint("[CivComparator] Player " .. tostring(iPlayer) .. " (" .. Players[iPlayer]:GetName() .. ") is not a major civilization")
	end
	debugPrint("[CivComparator] Function CivComparator completed.")
	return result
end

local function ResourceFunctionLookup(pPlot)
	debugPrint("[ResourceFunctionLookup] Determining appropriate functions to use for current plot resource..")
	local EmptyPlotFunction
	local ImprovedPlotFunction
	local iPlotResource = pPlot:GetResourceType()
	if iPlotResource == iWheatField then
		debugPrint("[ResourceFunctionLookup] Plot contains Wheat, using Wheat yield functions..")
		EmptyPlotFunction = WheatPlotBonus
		ImprovedPlotFunction = WheatFarmBonus
	elseif iPlotResource == iWineField or iPlotResource == iSheepField or pPlot:GetImprovementType() == iAppleOrchard then
		debugPrint("[ResourceFunctionLookup] Plot contains an eligible happiness-boosting resource, using Happiness counting functions..")
		EmptyPlotFunction = HappyPlotBonus
		ImprovedPlotFunction = HappyPlotBonus
	end
	debugPrint("[ResourceFunctionLookup] Function ResourceFunctionLookup completed.")
	return EmptyPlotFunction, ImprovedPlotFunction
end

local function NewResourcePlotGained(tableKey, iRowIdentifier, pPlot, iPlotX, iPlotY, iPlotOwner, AlterPlotBonusFunction)
	debugPrint("[NewResourcePlotGained] Determining eligibility of plot to be added to table..")
	if not tableKey[iRowIdentifier] then
		debugPrint("[NewResourcePlotGained] New plot with ID " .. tostring(iRowIdentifier) .. " at coordinates " .. tostring(iPlotX) .. " / " .. tostring(iPlotY) .. " acquired. Adding to table..")
		tableKey[iRowIdentifier] = {}
		tableKey[iRowIdentifier].iX = iPlotX
		tableKey[iRowIdentifier].iY = iPlotY
		tableKey[iRowIdentifier].bBonusYield = false
		tableKey[iRowIdentifier].bFarmYield = false
		tableKey[iRowIdentifier].iLastOwnedBy = iPlotOwner
		
		debugPrint("[NewResourcePlotGained] Beginning resource manipulation process..")
		AlterPlotBonusFunction(tableKey, iRowIdentifier, pPlot, iPlotX, iPlotY, true)
	else
		debugPrint("[NewResourcePlotGained] Plot with ID " .. tostring(iRowIdentifier) .. " already exists in the table, and does not need to be modified. Ending process..")
	end
	debugPrint("[NewResourcePlotGained] Function NewResourcePlotGained completed.")
end

local function ResourcePlotGained(tableKey, iRowIdentifier, pPlot, iPlotX, iPlotY, iPlotOwner, AlterPlotBonusFunction, bApplyBonus)
	debugPrint("[ResourcePlotGained] Determining plot attributes from table..")
	if tableKey[iRowIdentifier] then
		debugPrint("[ResourcePlotGained] Plot with ID " .. tostring(iRowIdentifier) .. " already exists in the table, searching for matching coordinates..")
		local iPlotStoredX = tableKey[iRowIdentifier].iX
		local iPlotStoredY = tableKey[iRowIdentifier].iY
		local iLastOwner = tableKey[iRowIdentifier].iLastOwnedBy
		if iPlotStoredX == iPlotX and iPlotStoredY == iPlotY then
			debugPrint("[ResourcePlotGained] Match found in table: " .. tostring(iPlotStoredX) .. " / " .. tostring(iPlotStoredY) .. " matches current coordinates of " .. tostring(iPlotX) .. " / " .. tostring(iPlotY))
			local bOwnerChanged = false
			if iLastOwner and iLastOwner ~= iPlotOwner then
				debugPrint("[ResourcePlotGained] Plot with ID " .. tostring(iRowIdentifier) .. " has been recaptured. Resetting owner information.")
				tableKey[iRowIdentifier].iLastOwnedBy = iPlotOwner
				bOwnerChanged = true
			end
			debugPrint("[ResourcePlotGained] Beginning resource manipulation process..")
			AlterPlotBonusFunction(tableKey, iRowIdentifier, pPlot, iPlotX, iPlotY, bApplyBonus, bOwnerChanged)
		end
		debugPrint("[ResourcePlotGained] Function completed for plot with ID " .. tostring(iRowIdentifier))
	end
	debugPrint("[ResourcePlotGained] Function ResourcePlotGained completed.")
end

local function ResourcePlotLost(tableKey, iRowIdentifier, pPlot, iPlotX, iPlotY, iPlotOwner)
	debugPrint("[ResourcePlotLost] Determining current status of plot to be removed..")
	if tableKey[iRowIdentifier] then
		debugPrint("[ResourcePlotLost] Plot with ID " .. tostring(iRowIdentifier) .. " at coordinates " .. tostring(iPlotX) .. " / " .. tostring(iPlotY) .. " found in table.")
		local iPlotStoredX = tableKey[iRowIdentifier].iX
		local iPlotStoredY = tableKey[iRowIdentifier].iY
		local bPlotBonusYield = tableKey[iRowIdentifier].bBonusYield
		local bFarmBonusYield = tableKey[iRowIdentifier].bFarmYield
		local iLastOwner = tableKey[iRowIdentifier].iLastOwnedBy
		local SmallBonus, BigBonus = ResourceFunctionLookup(pPlot)
		if iPlotStoredX == iPlotX and iPlotStoredY == iPlotY then
			debugPrint("[ResourcePlotLost] Match found in table: " .. tostring(iPlotStoredX) .. " / " .. tostring(iPlotStoredY) .. " matches current coordinates of " .. tostring(iPlotX) .. " / " .. tostring(iPlotY))
			if iLastOwner and iLastOwner ~= iPlotOwner then
				debugPrint("[ResourcePlotLost] Player " .. tostring(iLastOwner) .. " (" .. GameInfo.Civilizations[Players[iLastOwner]:GetCivilizationType()].Type .. ") is no longer in control of the plot with ID " .. tostring(iRowIdentifier))
				local bOwnerChanged = true
				if bFarmBonusYield == true then
					debugPrint("[ResourcePlotLost] Removing farmed bonus yields..")
					BigBonus(tableKey, iRowIdentifier, pPlot, iPlotX, iPlotY, false, bOwnerChanged)
					bFarmBonusYield = tableKey[iRowIdentifier].bFarmYield
				end
				if bPlotBonusYield == true then
					debugPrint("[ResourcePlotLost] Removing basic bonus yields..")
					SmallBonus(tableKey, iRowIdentifier, pPlot, iPlotX, iPlotY, false, bOwnerChanged)
					bPlotBonusYield = tableKey[iRowIdentifier].bBonusYield
				end
				if bPlotBonusYield == false and bFarmBonusYield == false then
					debugPrint("[ResourcePlotLost] Plot has no bonus yields applied, removing it from the table..")
					tableKey[iRowIdentifier] = nil
				end
			else
				print("[ResourcePlotLost] WARNING: Player " .. tostring(iLastOwner) .. " (" .. GameInfo.Civilizations[Players[iLastOwner]:GetCivilizationType()].Type .. ") retains control of this plot!")
			end
		end
	end
	debugPrint("[ResourcePlotLost] Function ResourcePlotLost completed.")
end

local function HappyPlotHandler(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, pCity)
	debugPrint("[HappyPlotHandler] Determining current conditions of plot with ID " .. tostring(iPlotIndex))
	local bHasHappyResources = PlotResource(pPlot, tHappyResources)
	local bHasHappyImprovements = bHasHappyResources and PlotImproved(pPlot, tHappyImprovements)
	local bHasAppleOrchard = not bHasHappyResources and PlotImproved(pPlot, iAppleOrchard)
	if bHasHappyResources then
		if bHasHappyImprovements then
			debugPrint("[HappyPlotHandler] Plot with ID " .. tostring(iPlotIndex) .. " contains an eligible improvement ID " .. tostring(pPlot:GetImprovementType()) .. " (" .. GameInfo.Improvements[pPlot:GetImprovementType()].Type .. ")")
			if tableKey[iPlotIndex] then
				debugPrint("[HappyPlotHandler] Beginning logical comparison of plot with ID " .. tostring(iPlotIndex) .. "..")
				local bPlotBonusYield = tableKey[iPlotIndex].bBonusYield
				if pCity:IsWorkingPlot(pPlot) then
					if bPlotBonusYield == false then
						debugPrint("[HappyPlotHandler] Plot meets requirements, applying bonus..")
						ResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, HappyPlotBonus, true)
					else
						debugPrint("[HappyPlotHandler] Plot does not need to be altered.")
					end
				elseif bPlotBonusYield == true then
					debugPrint("[HappyPlotHandler] Plot is no longer being worked, removing bonus..")
					ResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, HappyPlotBonus, false)
				end
			elseif pCity:IsWorkingPlot(pPlot) then
				debugPrint("[HappyPlotHandler] Unable to find matching plot with ID " .. tostring(iPlotIndex) .. " in the table, adding it now..")
				NewResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, HappyPlotBonus)
			end
		elseif tableKey[iPlotIndex] then
			debugPrint("[HappyPlotHandler] Plot with ID " .. tostring(iPlotIndex) .. " no longer contains an eligible improvement, removing bonus..")
			ResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, HappyPlotBonus, false)
		end
	elseif pPlot:IsFreshWater() then
		if bHasAppleOrchard then
			debugPrint("[HappyPlotHandler] Plot with ID " .. tostring(iPlotIndex) .. " contains an eligible improvement ID " .. tostring(pPlot:GetImprovementType()) .. " (" .. GameInfo.Improvements[pPlot:GetImprovementType()].Type .. ")")
			if tableKey[iPlotIndex] then
				debugPrint("[HappyPlotHandler] Beginning logical comparison of plot with ID " .. tostring(iPlotIndex) .. "..")
				local bPlotBonusYield = tableKey[iPlotIndex].bBonusYield
				if pCity:IsWorkingPlot(pPlot) then
					if bPlotBonusYield == false then
						debugPrint("[HappyPlotHandler] Plot meets requirements, applying bonus..")
						ResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, HappyPlotBonus, true)
						iOrchardCounter = iOrchardCounter + 1
						debugPrint("[HappyPlotHandler] Eligible Apple Orchard being worked in this city, incrementing counter..")
					else
						debugPrint("[HappyPlotHandler] Plot does not need to be altered.")
						iOrchardCounter = iOrchardCounter + 1
						debugPrint("[HappyPlotHandler] Eligible Apple Orchard being worked in this city, incrementing counter..")
					end
				elseif bPlotBonusYield == true then
					debugPrint("[HappyPlotHandler] Plot is no longer being worked, removing bonus..")
					ResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, HappyPlotBonus, false)
				end
			elseif pCity:IsWorkingPlot(pPlot) then
				debugPrint("[HappyPlotHandler] Unable to find matching plot with ID " .. tostring(iPlotIndex) .. " in the table, adding it now..")
				NewResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, HappyPlotBonus)
				iOrchardCounter = iOrchardCounter + 1
				debugPrint("[HappyPlotHandler] Eligible Apple Orchard being worked in this city, incrementing counter..")
			end
		elseif tableKey[iPlotIndex] then
			debugPrint("[HappyPlotHandler] Plot with ID " .. tostring(iPlotIndex) .. " no longer contains an eligible improvement, removing bonus..")
			ResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, HappyPlotBonus, false)
		end
	end
	debugPrint("[HappyPlotHandler] Function HappyPlotHandler completed.")
end

local function AppleLuxuryHandler(iPlayer, pCity)
	debugPrint("[AppleLuxuryHandler] Determining eligibility of current city..")
	local iAppleDummy = GameInfoTypes.BUILDING_HWW_APPLE_DUMMY
	local bAppleResources = pCity:IsHasBuilding(iAppleDummy)
	local sCityName = pCity:GetName()
	debugPrint("[AppleLuxuryHandler] " .. tostring(iOrchardCounter) .. " Apple Orchards are being worked by the city of " .. sCityName .. ", beginning logic..")
	if iOrchardCounter >= iOrchardThreshold then
		debugPrint("[AppleLuxuryHandler] Enough Apple Orchards are being worked in " .. sCityName)
		if not bAppleResources then
			debugPrint("[AppleLuxuryHandler] " .. sCityName .. " does not currently have the Apples Resource.")
			pCity:SetNumRealBuilding(iAppleDummy, 1)
			debugPrint("[AppleLuxuryHandler] " .. sCityName .. " can now export Apples!")
		else
			debugPrint("[AppleLuxuryHandler] " .. sCityName .. " already has Apples Resources.")
		end
	else
		debugPrint("[AppleLuxuryHandler] Not enough Apple Orchards being worked in " .. sCityName)
		if bAppleResources then
			debugPrint("[AppleLuxuryHandler] " .. sCityName .. " currently has the Apples Resource.")
			pCity:SetNumRealBuilding(iAppleDummy, 0)
			debugPrint("[AppleLuxuryHandler] " .. sCityName .. " can no longer export Apples.")
		else
			debugPrint("[AppleLuxuryHandler] " .. sCityName .. " doesn't have any extra Apples.")
		end
	end
	debugPrint("[AppleLuxuryHandler] Function completed for the city of " .. sCityName .. ", resetting counter..")
	iOrchardCounter = 0
	debugPrint("[AppleLuxuryHandler] Function AppleLuxuryHandler completed.")
end

local function GrantResourceHappiness(iPlayer)
	debugPrint("[GrantResourceHappiness] Determining amount of happiness to add..")
	local pPlayer = Players[iPlayer]
	local pCity = pPlayer:GetCapitalCity()
	local iHappyDummy = GameInfoTypes.BUILDING_HWW_HAPPY_DUMMY
	if iHappyCounter > 0 then
		debugPrint("[GrantResourceHappiness] Providing player " .. tostring(iPlayer) .. " (" .. pPlayer:GetName() .. ") with " .. tostring(iHappyCounter) .. " total extra happiness..")
		pCity:SetNumRealBuilding(iHappyDummy, iHappyCounter)
	elseif Game.GetGameTurn() > 0 and pCity:IsHasBuilding(iHappyDummy) then
		pCity:SetNumRealBuilding(iHappyDummy, 0)
		debugPrint("[GrantResourceHappiness] Player " .. tostring(iPlayer) .. " (" .. pPlayer:GetName() .. ") has lost all sources of extra happiness!")
	else
		debugPrint("[GrantResourceHappiness] Function has no happiness to give!")
	end
	debugPrint("[GrantResourceHappiness] Function GrantResourceHappiness completed.")
end

local function GrantBuildingClassBonuses(iBuilding, pPlayer, pCity)
	debugPrint("[GrantBuildingClassBonuses] Calculating bonuses for building class..")
	local sBuilding = GameInfo.Buildings[iBuilding].Type
	local sBuildingClass = GameInfo.Buildings[iBuilding].BuildingClass
	local iBuildingClass = GameInfoTypes[sBuildingClass]
	local iHappyBonusDummy = GameInfoTypes.BUILDING_HWW_BONUS_HAPPY_DUMMY
	local iBuildingHappiness = pPlayer:GetPlayerBuildingClassHappiness(iBuildingClass)
	local iBeliefHappiness = pCity:GetReligionBuildingClassHappiness(iBuildingClass)
	local iPolicyHappiness = pPlayer:GetExtraBuildingHappinessFromPolicies(iBuilding)
	local iTotalHappinessBonus = iBuildingHappiness + iBeliefHappiness + iPolicyHappiness
	debugPrint("[GrantBuildingClassBonuses] " .. sBuilding .. " is eligible for " .. tostring(iTotalHappinessBonus) .. " extra Happiness.")
	if iTotalHappinessBonus > 0 and pCity:GetNumRealBuilding(iHappyBonusDummy) ~= iTotalHappinessBonus then
		debugPrint("[GrantBuildingClassBonuses] Bonus has changed, applying new bonus..")
		pCity:SetNumRealBuilding(iHappyBonusDummy, iTotalHappinessBonus)
	else
		debugPrint("[GrantBuildingClassBonuses] No change in Happiness bonus.")
	end
	debugPrint("[GrantBuildingClassBonuses] Determining building class yield bonuses..")
	for i = 1, #tBonusDummies do
		local iBonusDummy = tBonusDummies[i]
		local iBonusYield = tBonusYields[i]
		local sYieldType = GameInfo.Yields[iBonusYield].Type
		local iYieldBonus = pCity:GetReligionBuildingClassYieldChange(iBuildingClass, iBonusYield)
		debugPrint("[GrantBuildingClassBonuses] " .. sBuilding .. " is eligible for a bonus of " .. tostring(iYieldBonus) .. " x " .. sYieldType)
		if iYieldBonus > 0 and pCity:GetNumRealBuilding(iBonusDummy) ~= iYieldBonus then
			debugPrint("[GrantBuildingClassBonuses] Bonus for " .. sYieldType .. " has changed, applying new bonus..")
			pCity:SetNumRealBuilding(iBonusDummy, iYieldBonus)
		else
			debugPrint("[GrantBuildingClassBonuses] No change in bonus for " .. sYieldType)
		end
	end
	debugPrint("[GrantBuildingClassBonuses] Function GrantBuildingClassBonuses completed.")
end

local function CityPlotLooper(iPlayer, pCity, ResourceFunction)
	debugPrint("[CityPlotLooper] Beginning loop over plots around player " .. tostring(iPlayer) .. "'s city of " .. pCity:GetName() .. "..")
	local iNumPlots = pCity:GetNumCityPlots()
	for i = 0, iNumPlots - 1 do
		debugPrint("[CityPlotLooper] Beginning plot iteration " .. tostring(i) .. " around the city of " .. pCity:GetName() .. "..")
		local pPlot = pCity:GetCityIndexPlot(i)
		local iPlotIndex = pPlot:GetPlotIndex()
		if pPlot and PlotOwner(pPlot, iPlayer) and (PlotResource(pPlot, tAllTargetResources) or pPlot:IsFreshWater()) then
			local iPlotX = pPlot:GetX()
			local iPlotY = pPlot:GetY()
			debugPrint("[CityPlotLooper] Plot with ID " .. tostring(iPlotIndex) .. " found at coordinates " .. tostring(iPlotX) .. " / " .. tostring(iPlotY) .. " owned by player " .. tostring(iPlayer) .. " (" .. Players[iPlayer]:GetName() .. "), Proceeding with manipulation of this plot..")
			ResourceFunction(iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer)
			debugPrint("[CityPlotLooper] Function completed for plot with ID " .. tostring(iPlotIndex))
		end
		debugPrint("[CityPlotLooper] Iteration " .. tostring(i) .. " completed.")
	end
	debugPrint("[CityPlotLooper] Function CityPlotLooper completed.")
end

-- Major Gameplay Functions
local function PolicyTraitAddon(iPlayer, iX, iY)
	debugPrint("[PolicyTraitAddon] Function PolicyTraitAddon running for player " .. tostring(iPlayer) .. " (" .. Players[iPlayer]:GetName() .. ") due to a city being founded")
	local pPlayer = Players[iPlayer]
	local pCity = Map.GetPlot(iX, iY):GetPlotCity()
	local sCityName = pCity:GetName()
	if pCity:IsOriginalCapital() then
		debugPrint("[PolicyTraitAddon] City named " .. sCityName .. " at coordinates " .. iX .. " / " .. iY .. " is target civilization's Capital")
		if not (pPlayer:HasPolicy(iHoloPolicy)) then
			debugPrint("[PolicyTraitAddon] Civilization does not have the Trait Policy yet, providing it..")
			pPlayer:SetNumFreePolicies(1)
			pPlayer:SetNumFreePolicies(0)
			pPlayer:SetHasPolicy(iHoloPolicy, true)
			debugPrint("[PolicyTraitAddon] Civilization granted Holo's Trait Policy")
		else
			debugPrint("[PolicyTraitAddon] Civilization already has Holo's Trait Policy")
		end
	else
		debugPrint("[PolicyTraitAddon] Newly founded city (" .. sCityName ..") is not the civilization's Capital. Skipping process..")
	end
	debugPrint("[PolicyTraitAddon] PolicyTraitAddon function completed for player " .. tostring(iPlayer) .. " (" .. pPlayer:GetName() .. ") of civilization " .. tostring(pPlayer:GetCivilizationType()) .. " (" .. GameInfo.Civilizations[pPlayer:GetCivilizationType()].Type .. ")")
	debugPrint("[PolicyTraitAddon] Function PolicyTraitAddon ended.")
end

local function NewCityResources(iPlayer, iX, iY)
	debugPrint("[NewCityResources] Function NewCityResources running for player " .. tostring(iPlayer) .. " (" .. Players[iPlayer]:GetName() .. ") due to a city being founded")
	local sPlayerName = Players[iPlayer]:GetName()
	local pPlot = Map.GetPlot(iX, iY)
	local pCity = pPlot:GetPlotCity()
	local sCityName = pCity:GetName()
	local iRadius = 1
	local sStartSector = SECTOR_NORTH
	local sDirection = DIRECTION_ANTICLOCKWISE
	local sFlow = DIRECTION_OUTWARDS
	local bCenter = CENTRE_INCLUDE
	debugPrint("[NewCityResources] Beginning plot iteration around the newly founded city of " .. sCityName .. "..")
	for pAreaPlot in PlotAreaSpiralIterator(pPlot, iRadius, sStartSector, sDirection, sFlow, bCenter) do
		if pAreaPlot and PlotOwner(pAreaPlot, iPlayer) then
			local iPlotIndex = pAreaPlot:GetPlotIndex()
			local iPlotX = pAreaPlot:GetX()
			local iPlotY = pAreaPlot:GetY()
			local tableKey = WWDataStore.ResourcePlot
			if PlotResource(pAreaPlot, iWheatField) then
				debugPrint("[NewCityResources] Plot with ID " .. tostring(iPlotIndex) .. " found at coordinates " .. tostring(iPlotX) .. " / " .. tostring(iPlotY) .. " owned by player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") contains Wheat")
				if not tableKey[iPlotIndex] then
					debugPrint("[NewCityResources] New plot with ID " .. tostring(iPlotIndex) .. " not found in table, adding it now..")
					if not PlotImproved(pAreaPlot) then
						debugPrint("[NewCityResources] Plot with ID " .. tostring(iPlotIndex) .. " is unimproved.")
						NewResourcePlotGained(tableKey, iPlotIndex, pAreaPlot, iPlotX, iPlotY, iPlayer, WheatPlotBonus)
					elseif PlotImproved(pAreaPlot, iBasicFarm) then
						debugPrint("[NewCityResources] Plot with ID " .. tostring(iPlotIndex) .. " is farmed.")
						NewResourcePlotGained(tableKey, iPlotIndex, pAreaPlot, iPlotX, iPlotY, iPlayer, WheatFarmBonus)
					end
				end
			elseif (PlotResource(pAreaPlot, tHappyResources) and PlotImproved(pAreaPlot, tHappyImprovements)) or (pAreaPlot:IsFreshWater() and PlotImproved(pAreaPlot, iAppleOrchard)) then
				debugPrint("[NewCityResources] Plot with ID " .. tostring(iPlotIndex) .. " found at coordinates " .. tostring(iPlotX) .. " / " .. tostring(iPlotY) .. " owned by player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") contains eligible bonus improvement ID " .. tostring(pAreaPlot:GetImprovementType()) .. " (" .. GameInfo.Improvements[pAreaPlot:GetImprovementType()].Type .. ")")
				if pCity:IsWorkingPlot(pAreaPlot) and not tableKey[iPlotIndex] then
					debugPrint("[NewCityResources] New plot with ID " .. tostring(iPlotIndex) .. " not found in table, adding it now..")
					NewResourcePlotGained(tableKey, iPlotIndex, pAreaPlot, iPlotX, iPlotY, iPlayer, HappyPlotBonus)
				elseif tableKey[iPlotIndex] and not pAreaPlot:IsBeingWorked() then
					debugPrint("[NewCityResources] Plot with ID " .. tostring(iPlotIndex) .. " is no longer being worked, removing bonus..")
						HappyPlotBonus(tableKey, iPlotIndex, pAreaPlot, iPlotX, iPlotY, false)
				end
			end
			debugPrint("[NewCityResources] Function completed for plot with ID " .. tostring(iPlotIndex))
		end
	end
	debugPrint("[NewCityResources] Function completed for player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") for all plots around the new city of " .. sCityName)
	debugPrint("[NewCityResources] Function NewCityResources ended.")
end

local function AdjustCityResource(iPlayer)
	debugPrint("[AdjustCityResource] Function AdjustCityResource called by player " .. tostring(iPlayer) .. " (" .. Players[iPlayer]:GetName() .. ")")
	local pPlayer = Players[iPlayer]
	for pCity in pPlayer:Cities() do
		local sCityName = pCity:GetName()
		debugPrint("[AdjustCityResource] Beginning main loop through cities. Currently processing: " .. sCityName .. ", searching for valid plots..")
		local iNumPlots = pCity:GetNumCityPlots()
		for i = 0, iNumPlots - 1 do
			local pPlot = pCity:GetCityIndexPlot(i)
			debugPrint("[AdjustCityResource] Beginning plot iteration " .. tostring(i) .. " around the city of " .. sCityName)
			if pPlot and PlotOwner(pPlot, iPlayer) then
				local iPlotX = pPlot:GetX()
				local iPlotY = pPlot:GetY()
				local iPlotIndex = pPlot:GetPlotIndex()
				local tableKey = WWDataStore.ResourcePlot
				debugPrint("[AdjustCityResource] Plot with ID " .. tostring(iPlotIndex) .. " is owned by player " .. tostring(pPlot:GetOwner()) .. " (" .. pPlayer:GetName() .. ")")
				if PlotResource(pPlot, iWheatField) then
					debugPrint("[AdjustCityResource] Plot with ID " .. tostring(iPlotIndex) .. " found at coordinates " .. tostring(iPlotX) .. " / " .. tostring(iPlotY) .. " near the city of " .. sCityName .. " with resource ID " .. tostring(pPlot:GetResourceType()) .. " (" .. GameInfo.Resources[pPlot:GetResourceType()].Type .. ")")
					if tableKey[iPlotIndex] then
						debugPrint("[AdjustCityResource] Beginning logical comparison for plot with ID " .. tostring(iPlotIndex) .. "..")
						local bPlotBonusYield = tableKey[iPlotIndex].bBonusYield
						local bFarmBonusYield = tableKey[iPlotIndex].bFarmYield
						if not PlotImproved(pPlot) then
							debugPrint("[AdjustCityResource] Plot with ID " .. tostring(iPlotIndex) .. " is currently unimproved.")
							if bFarmBonusYield == true then
								debugPrint("[AdjustCityResource] Plot is receiving enhanced bonus yields.")
								ResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, WheatFarmBonus, false)
							elseif bPlotBonusYield == false then
								debugPrint("[AdjustCityResource] Plot is not receiving basic bonus yields.")
								ResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, WheatPlotBonus, true)
							else
								debugPrint("[AdjustCityResource] Plot with ID " .. tostring(iPlotIndex) .. " does not need to be changed. Ending process..")
							end
						elseif PlotImproved(pPlot, iBasicFarm) then
							debugPrint("[AdjustCityResource] Plot with ID " .. tostring(iPlotIndex) .. " is currently farmed.")
							if bPlotBonusYield == true then
								debugPrint("[AdjustCityResource] Plot is receiving basic bonus yields.")
								ResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, WheatPlotBonus, false)
							elseif bFarmBonusYield == false then
								debugPrint("[AdjustCityResource] Plot is not receiving enhanced bonus yields.")
								ResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, WheatFarmBonus, true)
							else
								debugPrint("[AdjustCityResource] Plot with ID " .. tostring(iPlotIndex) .. " does not need to be changed. Ending process..")
							end
						else
							debugPrint("[AdjustCityResource] Plot with ID " .. tostring(iPlotIndex) .. " is currently not improved with a farm.")
							if bFarmBonusYield == true then
								debugPrint("[AdjustCityResource] Plot is receiving enhanced bonus yields.")
								ResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, WheatFarmBonus, false)
							elseif bPlotBonusYield == true then
								debugPrint("[AdjustCityResource] Plot is receiving basic bonus yields.")
								ResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, WheatPlotBonus, false)
							else
								debugPrint("[AdjustCityResource] Plot with ID " .. tostring(iPlotIndex) .. " does not need to be changed. Ending process..")
							end
						end
					else
						debugPrint("[AdjustCityResource] Unable to find matching plot with ID " .. tostring(iPlotIndex) .. " in the table, adding it now..")
						if not PlotImproved(pPlot) then
							debugPrint("[AdjustCityResource] Plot with ID " .. tostring(iPlotIndex) .. " is unimproved.")
							NewResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, WheatPlotBonus)
						elseif PlotImproved(pPlot, iBasicFarm) then
							debugPrint("[AdjustCityResource] Plot with ID " .. tostring(iPlotIndex) .. " is farmed.")
							NewResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, WheatFarmBonus)
						end
					end
				elseif PlotResource(pPlot, tHappyResources) or pPlot:IsFreshWater() then
					debugPrint("[AdjustCityResource] Plot with ID " .. tostring(iPlotIndex) .. " found at coordinates " .. tostring(iPlotX) .. " / " .. tostring(iPlotY) .. " near the city of " .. sCityName .. " with eligible bonus resource or fresh water.")
					HappyPlotHandler(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, pCity)
				end
				debugPrint("[AdjustCityResource] Matching plot evaluation completed.")
			end
			debugPrint("[AdjustCityResource] Iteration " .. tostring(i) .. " completed.")
		end
		AppleLuxuryHandler(iPlayer, pCity)
		debugPrint("[AdjustCityResource] Loop for the city of " .. sCityName .. " completed.")
	end
	debugPrint("[AdjustCityResource] Resource adjustment functions completed for civilization " .. tostring(pPlayer:GetCivilizationType()) .. " (" .. pPlayer:GetName() .. ")")
	debugPrint("[AdjustCityResource] Function AdjustCityResource ended.")
end

local function HoloImprovementHandler(iPlayer, iX, iY, iImprovement)
	local pPlot = Map.GetPlot(iX, iY)
	if pPlot and PlotOwner(pPlot, iPlayer) then
		local iPlotIndex = pPlot:GetPlotIndex()
		local tableKey = WWDataStore.ResourcePlot
		if iImprovement == iBasicFarm and PlotResource(pPlot, iWheatField) then
			debugPrint("[HoloImprovementHandler] Plot with ID " .. tostring(iPlotIndex) .. " contains a Wheat Farm. Beginning logical comparison..")
			if tableKey[iPlotIndex] then
				debugPrint("[HoloImprovementHandler] Plot with ID " .. tostring(iPlotIndex) .. " already exists in table. Determining eligible bonus..")
				local bPlotBonusYield = tableKey[iPlotIndex].bBonusYield
				local bFarmBonusYield = tableKey[iPlotIndex].bFarmYield
				if bPlotBonusYield == true then
					debugPrint("[HoloImprovementHandler] Plot was receiving the basic Wheat bonus, replacing it with the Farm's enhanced bonus..")
					ResourcePlotGained(tableKey, iPlotIndex, pPlot, iX, iY, iPlayer, WheatPlotBonus, false)
				elseif bFarmBonusYield == false then
					debugPrint("[HoloImprovementHandler] Plot is not receiving any bonus, granting the Farm's enhanced bonus..")
					ResourcePlotGained(tableKey, iPlotIndex, pPlot, iX, iY, iPlayer, WheatFarmBonus, true)
				end
			else
				debugPrint("[HoloImprovementHandler] Newly built farm is outside of workable range of any city, and will not be granted bonus yields.")
			end
			debugPrint("[HoloImprovementHandler] Bonus yield adjustment for plot with ID " .. tostring(iPlotIndex) .. " completed.")
		elseif (iImprovement == iAppleOrchard and pPlot:IsFreshWater()) or PlotResource(pPlot, tHappyResources) then
			debugPrint("[HoloImprovementHandler] Plot with ID " .. tostring(iPlotIndex) .. " contains an eligible source of bonus happiness. Beginning logical comparison..")
			if pPlot:IsBeingWorked() then
				if not tableKey[iPlotIndex] then
					debugPrint("[HoloImprovementHandler] Unable to find matching plot with ID " .. tostring(iPlotIndex) .. " in the table, adding it now..")
					NewResourcePlotGained(tableKey, iPlotIndex, pPlot, iX, iY, iPlayer, HappyPlotBonus)
				else
					debugPrint("[HoloImprovementHandler] Plot with ID " .. tostring(iPlotIndex) .. " meets requirements for bonus, checking plot data..")
					ResourcePlotGained(tableKey, iPlotIndex, pPlot, iX, iY, iPlayer, HappyPlotBonus, true)
				end
				debugPrint("[HoloImprovementHandler] Plot with ID " .. tostring(iPlotIndex) .. " accounted for, updating bonus happiness..")
				GrantResourceHappiness(iPlayer)
				debugPrint("[HoloImprovementHandler] Bonus for plot with ID " .. tostring(iPlotIndex) .. " applied.")
			elseif not pPlot:IsPlayerCityRadius(iPlayer) then
				debugPrint("[HoloImprovementHandler] Newly built improvement is outside of workable range of any city.")
			else
				debugPrint("[HoloImprovementHandler] Plot is not being worked by any city.")
			end
		end
	end
	debugPrint("[HoloImprovementHandler] Function HoloImprovementHandler ended.")
end

local function CitadelLandgrab(iPlayer, iX, iY, iCitadelPlop)
	if not bGPDouble then
		local sPlayerName = Players[iPlayer]:GetName()
		local iPlayerCiv = Players[iPlayer]:GetCivilizationType()
		local sPlayerCiv = GameInfo.Civilizations[iPlayerCiv].Type
		local pPlot = Map.GetPlot(iX, iY)
		local iRadius = 1
		local sStartSector = SECTOR_NORTH
		local sDirection = DIRECTION_ANTICLOCKWISE
		local sFlow = DIRECTION_OUTWARDS
		local bCenter = CENTRE_INCLUDE
		debugPrint("[CitadelLandgrab] Beginning plot iteration around the newly erected Citadel at coordinates " .. tostring(iX) .. " / " .. tostring(iY) .. "..")
		for pAreaPlot in PlotAreaSpiralIterator(pPlot, iRadius, sStartSector, sDirection, sFlow, bCenter) do
			if pAreaPlot and (PlotResource(pAreaPlot, tAllTargetResources) or PlotImproved(pAreaPlot, iAppleOrchard)) then
				local iPlotIndex = pAreaPlot:GetPlotIndex()
				local iPlotX = pAreaPlot:GetX()
				local iPlotY = pAreaPlot:GetY()
				local tableKey = WWDataStore.ResourcePlot
				debugPrint("[CitadelLandgrab] Plot with ID " .. tostring(iPlotIndex) .. " found at coordinates " .. tostring(iPlotX) .. " / " .. tostring(iPlotY) .. " owned by player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") contains an eligible bonus resource or improvement.")
				if tableKey[iPlotIndex] then
					debugPrint("[CitadelLandgrab] Plot with ID " .. tostring(iPlotIndex) .. " found in table.")
					if iPlayerCiv ~= iHoloCiv then
						debugPrint("[CitadelLandgrab] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") leads civilization " .. tostring(iPlayerCiv)
							 .. " (" .. sPlayerCiv .. ") and is not eligible for enhanced yields.")
						ResourcePlotLost(tableKey, iPlotIndex, pAreaPlot, iPlotX, iPlotY, iPlayer)
					else
						debugPrint("[CitadelLandgrab] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") leads civilization " .. tostring(iPlayerCiv) .. " (" .. sPlayerCiv .. ") and is eligible for enhanced yields.")
						if pAreaPlot:IsPlayerCityRadius(iPlayer) then
							local bPlotBonusYield = tableKey[iPlotIndex].bBonusYield
							if bPlotBonusYield == true and PlotImproved(pAreaPlot, tHappyImprovements) then
								debugPrint("[CitadelLandgrab] Resetting bonus for newly acquired improved source of happiness on plot with ID " .. tostring(iPlotIndex) .. ", now owned by player " .. tostring(iPlayer))
								ResourcePlotGained(tableKey, iPlotIndex, pAreaPlot, iPlotX, iPlotY, iPlayer, HappyPlotBonus, false)
							else
								debugPrint("[CitadelLandgrab] Plot with ID " .. tostring(iPlotIndex) .. " is within working range of a friendly city. Keeping bonus yields and updating owner information..")
								tableKey[iPlotIndex].iLastOwnedBy = iPlayer
							end
						else
							debugPrint("[CitadelLandgrab] Plot with ID " .. tostring(iPlotIndex) .. " is not within working range of any friendly city. Removing bonus yields..")
							ResourcePlotLost(tableKey, iPlotIndex, pAreaPlot, iPlotX, iPlotY, iPlayer)
						end
					end
				else
					debugPrint("[CitadelLandgrab] Plot with ID " .. tostring(iPlotIndex) .. " does not exist in the table.")
					if iPlayerCiv == iHoloCiv then
						debugPrint("[CitadelLandgrab] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") leads civilization " .. tostring(iPlayerCiv) .. " (" .. sPlayerCiv .. ") and is eligible for enhanced yields.")
						if pAreaPlot:IsPlayerCityRadius(iPlayer) then
							debugPrint("[CitadelLandgrab] Plot with ID " .. tostring(iPlotIndex) .. " is within working range of a friendly city.")
							if PlotImproved(pAreaPlot, iBasicFarm) then
								debugPrint("[CitadelLandgrab] New plot is farmed.")
								NewResourcePlotGained(tableKey, iPlotIndex, pAreaPlot, iPlotX, iPlotY, iPlayer, WheatFarmBonus)
							elseif PlotResource(pAreaPlot, iWheatField) and not PlotImproved(pAreaPlot) then
								debugPrint("[CitadelLandgrab] New plot is unimproved.")
								NewResourcePlotGained(tableKey, iPlotIndex, pAreaPlot, iPlotX, iPlotY, iPlayer, WheatPlotBonus)
							end
						else
							debugPrint("[CitadelLandgrab] New plot is not in working range of any friendly city.")
						end
					else
						debugPrint("[CitadelLandgrab] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") leads civilization " .. tostring(iPlayerCiv) .. " (" .. sPlayerCiv .. ") and is not eligible for enhanced yields.")
					end
				end
				debugPrint("[CitadelLandgrab] Function completed for plot with ID " .. tostring(iPlotIndex))
			end
			debugPrint("[CitadelLandgrab] Function completed for this plot.")
		end
		debugPrint("[CitadelLandgrab] Loop completed for all plots around the improvement at at coordinates " .. tostring(iX) .. " / " .. tostring(iY))
		bGPDouble = true
		debugPrint("[CitadelLandgrab] Function CitadelLandgrab ended.")
	else
		bGPDouble = false
		debugPrint("[CitadelLandgrab] Function has already completed.")
	end
end

local function RowenGiftHandler(iPlayer, pPlayerTeam)
	debugPrint("[RowenGiftHandler] Function RowenGiftHandler called by player " .. tostring(iPlayer) .. " (" .. Players[iPlayer]:GetName() .. ")")
	local pPlayer = Players[iPlayer]
	local iUnlockTech = GameInfoTypes.TECH_CURRENCY
	local iRowenGuild = GameInfoTypes.BUILDING_ROWEN_TRADE_GUILD
	local iRowenGift = GameInfoTypes.BUILDING_HWW_GIFT_DUMMY
	local sPlayerName = pPlayer:GetName()
	local tableKey = WWDataStore.RowenGift
	if tableKey[iPlayer] then
		if Game.GetGameTurn() < tableKey[iPlayer].iTurnGranted then
			print("[RowenGiftHandler] WARNING: Detecting a new game with old data that has not been destroyed. Resetting table data..")
			tableKey = {}
		else
			debugPrint("[RowenGiftHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has already received gifts from the Rowen Trade Guild")
			tableKey[iPlayer].bHQBuilt = false
			for pCity in pPlayer:Cities() do
				local sCityName = pCity:GetName()
				if pCity:IsHasBuilding(iRowenGuild) then
					tableKey[iPlayer].bHQBuilt = true
					debugPrint("[RowenGiftHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") owns the Rowen Trade Guild of " .. sCityName)
					break
				end
			end
			if not tableKey[iPlayer].bHQBuilt then
				debugPrint("[RowenGiftHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ")'s Rowen Trade Guild has been destroyed!")
			end
		end
	else
		debugPrint("[RowenGiftHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has not yet received gifts from the Rowen Trade Guild. Determining eligibility..")
		if pPlayerTeam:IsHasTech(iUnlockTech) then
			debugPrint("[RowenGiftHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has unlocked the Rowen Trade Guild. Searching for building..")
			for pCity in pPlayer:Cities() do
				local sCityName = pCity:GetName()
				if pCity:IsHasBuilding(iRowenGuild) and not tableKey[iPlayer] then
					debugPrint("[RowenGiftHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has built the Rowen Trade Guild in the city of " .. sCityName .. ". Providing gifts..")
					pCity:SetNumRealBuilding(iRowenGift, 1)
					tableKey[iPlayer] = {}
					tableKey[iPlayer].bGiftReceived = true
					tableKey[iPlayer].bHQBuilt = true
					tableKey[iPlayer].iTurnGranted = Game.GetGameTurn()
					debugPrint("[RowenGiftHandler] The Rowen Trade Guild of " .. pCity:GetName() .. " has provided player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") with its gifts on turn " .. tostring(Game.GetGameTurn()) .. ".")
					break
				else
					debugPrint("[RowenGiftHandler] Checking the city of " .. sCityName .. ": Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has not yet constructed the Rowen Trade Guild.")
				end
			end
		else
			debugPrint("[RowenGiftHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") is not yet able to construct the Rowen Trade Guild.")
		end
	end
	debugPrint("[RowenGiftHandler] Function completed for player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ")")
	debugPrint("[RowenGiftHandler] Function RowenGiftHandler ended.")
end

local function HoloGuildBranchHandler(iPlayer, pPlayerTeam)
	local pPlayer = Players[iPlayer]
	local sPlayerName = pPlayer:GetName()
	local iGuildBranchTech = GameInfoTypes.TECH_GUILDS
	local iRowenGuild = GameInfoTypes.BUILDING_ROWEN_TRADE_GUILD
	local iBranchHelper = GameInfoTypes.BUILDING_HWW_BRANCH_HELPER_DUMMY
	local iMemberFeeHelper = GameInfoTypes.BUILDING_HWW_GUILD_MEMBERSHIP_DUMMY
	local tableKey = WWDataStore.RowenGift
	local bHasHQ = tableKey[iPlayer] and tableKey[iPlayer].bHQBuilt or false
	debugPrint("[HoloGuildBranchHandler] Function HoloGuildBranchHandler called by player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ")")
	if pPlayerTeam:IsHasTech(iGuildBranchTech) then
		debugPrint("[HoloGuildBranchHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") is able to build Trade Guild Branch buildings, locating existing branches..")
		iGuildBranchCounter = 0
		local iGuildBranch = GameInfoTypes.BUILDING_TRADE_GUILD_BRANCH
		local iGuildHub = GameInfoTypes.BUILDING_TRADE_GUILD_HUB
		local iGuildInn = GameInfoTypes.BUILDING_TRADE_GUILD_INN
		for pCity in pPlayer:Cities() do
			local sCityName = pCity:GetName()
			local bCityHasGuildBuilding = pCity:IsHasBuilding(iGuildBranch) or pCity:IsHasBuilding(iGuildHub) or pCity:IsHasBuilding(iGuildInn)
			if bCityHasGuildBuilding then
				debugPrint("[HoloGuildBranchHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has a Trade Guild Branch in the city of " .. sCityName .. ", incrementing counter..")
				iGuildBranchCounter = iGuildBranchCounter + 1
			else
				debugPrint("[HoloGuildBranchHandler] No Trade Guild Branch exists in the city of " .. sCityName)
			end
		end
		if iGuildBranchCounter > 0 then
			debugPrint("[HoloGuildBranchHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has [" .. tostring(iGuildBranchCounter) .. "] Trade Guild Branch buildings in the Empire, calculating discount..")
			local iEligibleDiscount = iGuildBranchCounter < iMaxBranchDiscounts and iGuildBranchCounter or iMaxBranchDiscounts
			local pCity = pPlayer:GetCapitalCity()
			local iCurrentDiscount = pCity:GetNumRealBuilding(iBranchHelper)
			if iCurrentDiscount < iMaxBranchDiscounts then
				if iEligibleDiscount ~= iCurrentDiscount then
					debugPrint("[HoloGuildBranchHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") is now eligible for a discount of " .. tostring(iEligibleDiscount * 3) .. "%")
					pCity:SetNumRealBuilding(iBranchHelper, iEligibleDiscount)
				else
					debugPrint("[HoloGuildBranchHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has not constructed any new Trade Guild Branches this turn.")
				end
			else
				debugPrint("[HoloGuildBranchHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") is already receiving the maximum " .. tostring(iEligibleDiscount * 3) .. "% discount allowed by the Guild!")
			end
		else
			local pCity = pPlayer:GetCapitalCity()
			local bReceivingDiscount = pCity:IsHasBuilding(iBranchHelper)
			if bReceivingDiscount then
				debugPrint("[HoloGuildBranchHandler] Plauer " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") is no longer eligible for any discounts, removing bonuses..")
				pCity:SetNumRealBuilding(iBranchHelper, 0)
			else
				debugPrint("[HoloGuildBranchHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has no Trade Guild Branches built yet!")
			end
		end
		if bHasHQ then
			for pCity in pPlayer:Cities() do
				if pCity:IsHasBuilding(iRowenGuild) then
					local sCityName = pCity:GetName()
					local iCurrentMembers = pCity:GetNumRealBuilding(iMemberFeeHelper)
					debugPrint("[HoloGuildBranchHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has built the Rowen Trade Guild HQ in the city of " .. sCityName)
					if iGuildBranchCounter > 0 then
						debugPrint("[HoloGuildBranchHandler] The Rowen Trade Guild in the city of " .. sCityName .. " is eligible to receive fees from its members.")
						if iCurrentMembers ~= iGuildBranchCounter then
							debugPrint("[HoloGuildBranchHandler] Now receiving dues from " .. tostring(iGuildBranchCounter) .. " branches.")
							pCity:SetNumRealBuilding(iMemberFeeHelper, iGuildBranchCounter)
						else
							debugPrint("[HoloGuildBranchHandler] The amount of members has not changed.")
						end
					elseif iCurrentMembers > 0 then
						debugPrint("[HoloGuildBranchHandler] There are no longer any more Trade Guild Branches available to collect dues from!")
						pCity:SetNumRealBuilding(iMemberFeeHelper, 0)
					end
					break
				end
			end
		elseif iGuildBranchCounter > 0 then
			debugPrint("[HoloGuildBranchHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") no longer has a Rowen Trade Guild HQ to receive membership fees!")
		else
			debugPrint("[HoloGuildBranchHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") does not have a Rowen Trade Guild HQ yet!")
		end
	else
		debugPrint("[HoloGuildBranchHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") is not yet able to build Trade Guild Branch buildings, ending process..")
	end
	debugPrint("[HoloGuildBranchHandler] Function HoloGuildBranchHandler ended.")
end

local function HoloBuildingUpgradeHandler(iPlayer, pPlayerTeam)
	local pPlayer = Players[iPlayer]
	local sPlayerName = pPlayer:GetName()
	local iHarvestWolfUnlockTech = GameInfoTypes.TECH_THEOLOGY
	local iGuildHubUnlockTech = GameInfoTypes.TECH_MACHINERY
	local iGuildInnUnlockTech = GameInfoTypes.TECH_PRINTING_PRESS
	local tableKey = WWDataStore.HoloUpgrades
	debugPrint("[HoloBuildingUpgradeHandler] Function HoloBuildingUpgradeHandler called by player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ")")
	tableKey[iPlayer] = tableKey[iPlayer] or {}
	if tableKey[iPlayer].bHarvestWolfUpgraded then
		debugPrint("[HoloBuildingUpgradeHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has already received the upgrade to Harvest Wolves.")
		local iHarvestWolf = GameInfoTypes.BUILDING_HARVEST_WOLF
		debugPrint("[HoloBuildingUpgradeHandler] Synchronizing bonuses in all Cities..")
		for pCity in pPlayer:Cities() do
			if pCity:IsHasBuilding(iHarvestWolf) then
				local sCityName = pCity:GetName()
				debugPrint("[HoloBuildingUpgradeHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has a Harvest Wolf in the city of " .. sCityName .. ". Checking bonus yields..")
				GrantBuildingClassBonuses(iHarvestWolf, pPlayer, pCity)
			end
		end
		debugPrint("[HoloBuildingUpgradeHandler] Bonuses for the Harvest Wolf synchronized for Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ")")
	else
		debugPrint("[HoloBuildingUpgradeHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has not yet received the upgrade to Harvest Wolves. Determining eligibility..")
		if pPlayerTeam:IsHasTech(iHarvestWolfUnlockTech) then
			debugPrint("[HoloBuildingUpgradeHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has researched Theology and unlocked the upgrade to Harvest Wolves. Beginning upgrade process..")
			local iWheatWolf = GameInfoTypes.BUILDING_WHEAT_WOLF
			local iHarvestWolf = GameInfoTypes.BUILDING_HARVEST_WOLF
			local iHarvestWolfTourism = GameInfoTypes.BUILDING_HWW_HARVEST_WOLF_HELPER_DUMMY
			for pCity in pPlayer:Cities() do
				local sCityName = pCity:GetName()
				if pCity:IsHasBuilding(iWheatWolf) then
					debugPrint("[HoloBuildingUpgradeHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has a Wheat Wolf in the city of " .. sCityName .. ". Replacing it with a Harvest Wolf..")
					pCity:SetNumRealBuilding(iWheatWolf, 0)
					pCity:SetNumRealBuilding(iHarvestWolf, 1)
					pCity:SetNumRealBuilding(iHarvestWolfTourism, 1)
					GrantBuildingClassBonuses(iHarvestWolf, pPlayer, pCity)
					debugPrint("[HoloBuildingUpgradeHandler] The city of " .. sCityName .. " now has an ancient Harvest Wolf.")
				else
					debugPrint("[HoloBuildingUpgradeHandler] The city of " .. sCityName .. " does not currently have a Wheat Wolf.")
				end
			end
			tableKey[iPlayer].bHarvestWolfUpgraded = true
		else
			debugPrint("[HoloBuildingUpgradeHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has not yet researched Theology.")
		end
	end
	if tableKey[iPlayer].bGuildBranchUpgraded then
		debugPrint("[HoloBuildingUpgradeHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ")'s Guild Branches have already been upgraded to Guild Hubs.")
	else
		debugPrint("[HoloBuildingUpgradeHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has not yet upgraded to Guild Hubs. Determining eligibility..")
		if pPlayerTeam:IsHasTech(iGuildHubUnlockTech) then
			debugPrint("[HoloBuildingUpgradeHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has researched Machinery and unlocked the upgrade to Guild Hubs. Beginning upgrade process..")
			local iGuildBranch = GameInfoTypes.BUILDING_TRADE_GUILD_BRANCH
			local iGuildHub = GameInfoTypes.BUILDING_TRADE_GUILD_HUB
			for pCity in pPlayer:Cities() do
				local sCityName = pCity:GetName()
				if pCity:IsHasBuilding(iGuildBranch) then
					debugPrint("[HoloBuildingUpgradeHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has a Guild Branch in the city of " .. sCityName .. ". Upgrading to a Guild Hub..")
					pCity:SetNumRealBuilding(iGuildBranch, 0)
					pCity:SetNumRealBuilding(iGuildHub, 1)
					debugPrint("[HoloBuildingUpgradeHandler] The city of " .. sCityName .. " now has a Guild Hub.")
				else
					debugPrint("[HoloBuildingUpgradeHandler] The city of " .. sCityName .. " does not currently have a Guild Branch.")
				end
			end
			tableKey[iPlayer].bGuildBranchUpgraded = true
		else
			debugPrint("[HoloBuildingUpgradeHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has not yet researched Machinery.")
		end
	end
	if tableKey[iPlayer].bGuildHubUpgraded then
		debugPrint("[HoloBuildingUpgradeHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ")'s Guild Hubs have already been upgraded to Guild Inns.")
	else
		debugPrint("[HoloBuildingUpgradeHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has not yet upgraded to Guild Inns. Determining eligibility..")
		if pPlayerTeam:IsHasTech(iGuildInnUnlockTech) then
			debugPrint("[HoloBuildingUpgradeHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has researched Printing Press and unlocked the upgrade to Guild Inns. Beginning upgrade process..")
			local iGuildHub = GameInfoTypes.BUILDING_TRADE_GUILD_HUB
			local iGuildInn = GameInfoTypes.BUILDING_TRADE_GUILD_INN
			for pCity in pPlayer:Cities() do
				local sCityName = pCity:GetName()
				if pCity:IsHasBuilding(iGuildHub) then
					debugPrint("[HoloBuildingUpgradeHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has a Guild Hub in the city of " .. sCityName .. ". Upgrading to a Guild Inn..")
					pCity:SetNumRealBuilding(iGuildHub, 0)
					pCity:SetNumRealBuilding(iGuildInn, 1)
					debugPrint("[HoloBuildingUpgradeHandler] The city of " .. sCityName .. " now has a Guild Inn.")
				else
					debugPrint("[HoloBuildingUpgradeHandler] The city of " .. sCityName .. " does not currently have a Guild Hub.")
				end
			end
			tableKey[iPlayer].bGuildHubUpgraded = true
		else
			debugPrint("[HoloBuildingUpgradeHandler] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") has not yet researched Printing Press.")
		end
	end
	debugPrint("[HoloBuildingUpgradeHandler] All building upgrade check functions completed for player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ")")
	debugPrint("[HoloBuildingUpgradeHandler] Function HoloBuildingUpgradeHandler ended.")
end

local function HoloTradeRouteRemoval(iPlayer, pPlayerTeam)
	local pPlayer = Players[iPlayer]
	local sPlayerName = pPlayer:GetName()
	local iTradeTechs = 0
	local iRoutesRemoved = 0
	local pCity = pPlayer:GetCapitalCity()
	debugPrint("[HoloTradeRouteRemoval] Function HoloTradeRouteRemoval called by player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ")")
	debugPrint("[HoloTradeRouteRemoval] Scanning for unlocked technologies..")
	for row in GameInfo.Technologies() do
		if row.InternationalTradeRoutesChange > 0 and pPlayerTeam:IsHasTech(row.ID) then
			debugPrint("[HoloTradeRouteRemoval] Player " .. tostring(iPlayer) .. " has unlocked a Trade Route granted by " .. row.Type .. ", incrementing counter..")
			iTradeTechs = iTradeTechs + 1
		end
	end
	debugPrint("[HoloTradeRouteRemoval] Player " .. tostring(iPlayer) .. " has unlocked " .. tostring(iTradeTechs) .. " Trade Routes")
	debugPrint("[HoloTradeRouteRemoval] Checking number of removed Trade Routes..")
	for i = 1, #tDropTradeDummy do
		local iDummy = tDropTradeDummy[i]
		if pCity:IsHasBuilding(iDummy) then
			local iDummyValue = GameInfo.Buildings[iDummy].NumTradeRouteBonus
			iRoutesRemoved = iRoutesRemoved + (iDummyValue * -1)
			debugPrint("[HoloTradeRouteRemoval] Capital has a building worth " .. tostring(iDummyValue) .. " Trade Routes")
		end
	end
	if iRoutesRemoved < iTradeTechs then
		debugPrint("[HoloTradeRouteRemoval] Excess free Trade Routes available, removing..")
		local tDummyCount = {}
		local iTechRoutes = iTradeTechs
		while iTechRoutes > 0 do
			local iBuildNum = iTechRoutes % 2
			tDummyCount[#tDummyCount + 1] = iBuildNum
			iRemaining = iTechRoutes - iBuildNum
			iTechRoutes = iRemaining / 2
		end
		for i = 1, #tDummyCount do
			local iDummyBuilding = tDropTradeDummy[i]
			local sDummyBuilding = GameInfo.Buildings[iDummyBuilding].Type
			local iDummyCount = tDummyCount[i]
			pCity:SetNumRealBuilding(iDummyBuilding, iDummyCount)
			debugPrint("[HoloTradeRouteRemoval] Setting up " .. tostring(iDummyCount) .. " x " .. sDummyBuilding)
		end
		debugPrint("[HoloTradeRouteRemoval] Successfully removed " .. tostring(iTradeTechs) .. " free Trade Routes")
	else
		debugPrint("[HoloTradeRouteRemoval] No new Trade Routes have been unlocked")
	end
	debugPrint("[HoloTradeRouteRemoval] Function HoloTradeRouteRemoval ended.")
end

local function PlotTableCleanup(iPlayer)
	debugPrint("[PlotTableCleanup] Function PlotTableCleanup called by player " .. tostring(iPlayer) .. " (" .. Players[iPlayer]:GetName() .. ")")
	local tableKey = WWDataStore.ResourcePlot
	iHappyCounter = 0
	debugPrint("[PlotTableCleanup] Resetting happiness counter and beginning scan of ResourcePlot table for outdated entries..")
	for plotID, plotParams in pairs(tableKey) do
		debugPrint("[PlotTableCleanup] Scanning entry containing plot with ID " .. tostring(plotID))
		if plotParams.iLastOwnedBy then
			local iPlotStoredX = plotParams.iX
			local iPlotStoredY = plotParams.iY
			local bPlotBonusYield = plotParams.bBonusYield
			local iLastOwner = plotParams.iLastOwnedBy
			local pPlot = Map.GetPlot(iPlotStoredX, iPlotStoredY)
			local iPlotIndex = pPlot:GetPlotIndex()
			local iCurrentOwner = pPlot:GetOwner()
			if pPlot and plotID == iPlotIndex then
				if iLastOwner == iPlayer and iCurrentOwner ~= iPlayer then
					debugPrint("[PlotTableCleanup] Plot with ID " .. tostring(iPlotIndex) .. " is no longer owned by player " .. tostring(iLastOwner) .. " (" .. GameInfo.Civilizations[Players[iLastOwner]:GetCivilizationType()].Type .. "), performing cleanup of this plot..")
					ResourcePlotLost(tableKey, iPlotIndex, pPlot, iPlotStoredX, iPlotStoredY, iCurrentOwner)
				elseif iLastOwner == iPlayer and iCurrentOwner == iPlayer then
					debugPrint("[PlotTableCleanup] Plot with ID " .. tostring(iPlotIndex) .. " is still owned by player " .. tostring(iPlayer) .. " (" .. GameInfo.Civilizations[Players[iPlayer]:GetCivilizationType()].Type .. ")")
					if PlotResource(pPlot, iWheatField) then
						debugPrint("[PlotTableCleanup] No action needed for this plot.")
					elseif pPlot:IsFreshWater() and not PlotResource(pPlot, tHappyResources) and not PlotImproved(pPlot, iAppleOrchard) then
						debugPrint("[PlotTableCleanup] Plot with ID " .. tostring(iPlotIndex) .. " no longer contains an Apple Orchard, performing cleanup of this plot..")
						tableKey[iPlotIndex] = nil
					elseif bPlotBonusYield then
						debugPrint("[PlotTableCleanup] Plot with ID " .. tostring(iPlotIndex) .. " contains an eligible improvement, incrementing bonus happiness counter for this turn..")
						iHappyCounter = iHappyCounter + iResourceHappyBoost
					end
				elseif iLastOwner ~= iPlayer then
					debugPrint("[PlotTableCleanup] Plot is not owned by current player.")
				end
			end
		end
		debugPrint("[PlotTableCleanup] Function completed for plot with ID " .. tostring(plotID))
	end
	debugPrint("[PlotTableCleanup] Function PlotTableCleanup ended.")
end

-- Game Event Hook Handler Functions
function OnNewPlayerTurn(iPlayer)
	local pPlayer = Players[iPlayer]
	print("[NewPlayerTurn] Player " .. tostring(iPlayer) .. " (" .. pPlayer:GetName() .. ") is beginning turn " .. tostring(Game.GetGameTurn()))
	if Game.GetElapsedGameTurns() > 0 and pPlayer:IsFoundedFirstCity() then
		if CivComparator(iPlayer, iHoloCiv) then
			debugPrint("[NewPlayerTurn] Player " .. tostring(iPlayer) .. " (" .. pPlayer:GetName() .. ") leads civilization " .. tostring(pPlayer:GetCivilizationType()) .. " (" .. GameInfo.Civilizations[pPlayer:GetCivilizationType()].Type .. "), running associated per-turn functions..")
			local iPlayerTeam = pPlayer:GetTeam()
			local pPlayerTeam = Teams[iPlayerTeam]
			AdjustCityResource(iPlayer)
			PlotTableCleanup(iPlayer)
			GrantResourceHappiness(iPlayer)
			RowenGiftHandler(iPlayer, pPlayerTeam)
			HoloBuildingUpgradeHandler(iPlayer, pPlayerTeam)
			HoloGuildBranchHandler(iPlayer, pPlayerTeam)
			HoloTradeRouteRemoval(iPlayer, pPlayerTeam)
		else
			debugPrint("[NewPlayerTurn] Player " .. tostring(iPlayer) .. " (" .. pPlayer:GetName() .. ") is not target civilization, skipping processing of per-turn functions..")
		end
	else
		debugPrint("[NewPlayerTurn] Player " .. tostring(iPlayer) .. " (" .. pPlayer:GetName() .. ") has not yet founded a city! Skipping processing of per-turn functions..")
	end
end

GameEvents.PlayerDoTurn.Add(OnNewPlayerTurn)

function OnPlayerCityFounded(iPlayer, iX, iY)
	debugPrint("[PlayerCityFounded] Player " .. tostring(iPlayer) .. " (" .. Players[iPlayer]:GetName() .. ") has founded a new city")
	if CivComparator(iPlayer, iHoloCiv) then
		local pPlayer = Players[iPlayer]
		debugPrint("[PlayerCityFounded] Player " .. tostring(iPlayer) .. " (" .. pPlayer:GetName() .. ") leads civilization " .. tostring(pPlayer:GetCivilizationType()) .. " (" .. GameInfo.Civilizations[pPlayer:GetCivilizationType()].Type .. ") and has founded the city of " .. Map.GetPlot(iX, iY):GetPlotCity():GetName() .. ", running associated functions..")
		if not pPlayer:HasPolicy(iHoloPolicy) then
			PolicyTraitAddon(iPlayer, iX, iY)
		end
		NewCityResources(iPlayer, iX, iY)
		if iHappyCounter > 0 then
			GrantResourceHappiness(iPlayer)
		end
	else
		debugPrint("[PlayerCityFounded] Player " .. tostring(iPlayer) .. " (" .. Players[iPlayer]:GetName() .. ") is not target civilization, skipping processing of newly founded city functions..")
	end
end

GameEvents.PlayerCityFounded.Add(OnPlayerCityFounded)

function ImprovementBuilt(iPlayer, iX, iY, iImprovementBuilt)
	local iCitadel = GameInfoTypes.IMPROVEMENT_CITADEL
	local sImprovementType = iImprovementBuilt > 0 and GameInfo.Improvements[iImprovementBuilt].Type or "Unknown! (" .. tostring(iImprovementBuilt) .. ")" 
	if iImprovementBuilt == iCitadel then
		debugPrint("[ImprovementBuilt] Detected presence of improvement ID " .. tostring(iImprovementBuilt) .. " (" .. sImprovementType .. ") owned by player " .. tostring(iPlayer) .. " (" .. Players[iPlayer]:GetName() .. ") at coordinates " .. tostring(iX) .. " / " .. tostring(iY))
		CitadelLandgrab(iPlayer, iX, iY, iImprovementBuilt)
	elseif iImprovementBuilt == iBasicFarm or iImprovementBuilt == iBasicPlantation or iImprovementBuilt == iBasicPasture or iImprovementBuilt == iAppleOrchard then
		if Players[iPlayer]:GetCivilizationType() == iHoloCiv then
			debugPrint("[ImprovementBuilt] Detected presence of improvement ID " .. tostring(iImprovementBuilt) .. " (" .. sImprovementType .. ") owned by player " .. tostring(iPlayer) .. " (" .. Players[iPlayer]:GetName() .. ") at coordinates " .. tostring(iX) .. " / " .. tostring(iY))
			debugPrint("[ImprovementBuilt] Newly constructed improvement is built by target civilization " .. tostring(Players[iPlayer]:GetCivilizationType()) .. " (" .. GameInfo.Civilizations[Players[iPlayer]:GetCivilizationType()].Type .. ")")
			HoloImprovementHandler(iPlayer, iX, iY, iImprovementBuilt)
		end
	end
end

GameEvents.BuildFinished.Add(ImprovementBuilt)

function CityCapturedResources(iLoser, bCapital, iX, iY, iVictor)
	local pLoser = Players[iLoser]
	local sLoserName = pLoser:GetName()
	local iLoserCiv = pLoser:GetCivilizationType()
	local sLoserCivName = GameInfo.Civilizations[iLoserCiv].Type
	local pVictor = Players[iVictor]
	local sVictorName = pVictor:GetName()
	local iVictorCiv = pVictor:GetCivilizationType()
	local sVictorCivName = GameInfo.Civilizations[iVictorCiv].Type
	local pCity = Map.GetPlot(iX, iY):GetPlotCity()
	local sCityName = pCity:GetName()
	local ResourceCapture
	debugPrint("[CityCapturedResources] Detected a city being captured. City is Capital: " .. tostring(bCapital))
	debugPrint("[CityCapturedResources] The city of " .. sCityName .. " at coordinates " .. iX .. " / " .. iY .. " has been taken.")
	debugPrint("[CityCapturedResources] Victorious player " .. iVictor .. " (" .. sVictorName .. ") of civilization " .. iVictorCiv .. " (" .. sVictorCivName .. ") claimed " .. sCityName .. " from defeated player " .. iLoser .. " (" .. sLoserName .. ") of civilization " .. iLoserCiv .. " (" .. sLoserCivName .. ")")
	if iLoserCiv == iHoloCiv or iVictorCiv == iHoloCiv then
		debugPrint("[CityCapturedResources] Captured city involved a player of civilization " .. tostring(iHoloCiv) .. " (" .. GameInfo.Civilizations[iHoloCiv].Type .. ")")
		local tableKey = WWDataStore.ResourcePlot
		if iLoserCiv == iVictorCiv then
			debugPrint("[CityCapturedResources] Both players lead civilization " .. tostring(iHoloCiv) .. " (" .. sVictorCivName .. ")")
			ResourceCapture = function(iPlotIndex, pPlot, iPlotX, iPlotY)
				if tableKey[iPlotIndex] and tableKey[iPlotIndex].iLastOwnedBy ~= iVictor then
					local bPlotBonusYield = tableKey[iPlotIndex].bBonusYield
					if bPlotBonusYield == true and PlotImproved(pPlot, tHappyImprovements) then
						debugPrint("[CityCapturedResources] Resetting bonus for newly acquired improved source of happiness on plot with ID " .. tostring(iPlotIndex) .. ", now owned by player " .. tostring(iVictor))
						ResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iVictor, HappyPlotBonus, false)
					else
						debugPrint("[CityCapturedResources] Updating plot ownership for plot with ID " .. tostring(iPlotIndex) .. ", now owned by player " .. tostring(iVictor))
						tableKey[iPlotIndex].iLastOwnedBy = iVictor
					end
				end
			end
		elseif iLoserCiv == iHoloCiv then
			debugPrint("[CityCapturedResources] Civilization " .. tostring(iLoserCiv) .. " (" .. sLoserCivName .. ") has lost the city of " .. sCityName .. " to civilization " .. tostring(iVictorCiv) .. " (" .. sVictorCivName .. "), removing plot bonuses..")
			ResourceCapture = function(iPlotIndex, pPlot, iPlotX, iPlotY, iVictor)
				ResourcePlotLost(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iVictor)
			end
		else
			debugPrint("[CityCapturedResources] Civilization " .. tostring(iVictorCiv) .. " (" .. sVictorCivName .. ") has captured the city of " .. sCityName .. " from civilization " .. tostring(iLoserCiv) .. " (" .. sLoserCivName .. "), adding plot bonuses..")
			ResourceCapture = function(iPlotIndex, pPlot, iPlotX, iPlotY, iVictor)
				local bHasWheat = PlotResource(pPlot, iWheatField)
				if bHasWheat and PlotImproved(pPlot, iBasicFarm) then
					debugPrint("[CityCapturedResources] Plot with ID " .. tostring(iPlotIndex) .. " is farmed.")
					NewResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iVictor, WheatFarmBonus)
				elseif bHasWheat and not PlotImproved(pPlot) then
					debugPrint("[CityCapturedResources] Plot with ID " .. tostring(iPlotIndex) .. " is unimproved.")
					NewResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iVictor, WheatPlotBonus)
				end
			end
		end
		CityPlotLooper(iVictor, pCity, ResourceCapture)
		debugPrint("[CityCapturedResources] Adjustments for captured city completed.")
	end
	debugPrint("[CityCapturedResources] Function CityCapturedResources ended.")
end

GameEvents.CityCaptureComplete.Add(CityCapturedResources)

function CityInfoPlotUpdate()
	if not UI.IsCityScreenUp() then
		return
	else
		local iPlayer = Game.GetActivePlayer()
		local pPlayer = Players[iPlayer]
		local sPlayerName = pPlayer:GetName()
		local iPlayerCiv = pPlayer:GetCivilizationType()
		local pCity = UI.GetHeadSelectedCity()
		local sCityName = pCity:GetName()
		local iCurrentPlayerGold = pPlayer:GetGold()
		local iCurrentFPT = pCity:GetBaseYieldRateFromTerrain(YieldTypes.YIELD_FOOD)
		local iCurrentGPT = pCity:GetBaseYieldRateFromTerrain(YieldTypes.YIELD_GOLD)
		local iCurrentHPT = pCity:GetBaseYieldRateFromTerrain(YieldTypes.YIELD_PRODUCTION)
		local iCurrentHappinessBoost = iHappyCounter
		local ResourceScan
		local tableKey = WWDataStore.ResourcePlot
		if iPlayerCiv == iHoloCiv then
			debugPrint("[CityInfoPlotUpdate] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") of civilization " .. tostring(iPlayerCiv) .. " (" .. GameInfo.Civilizations[iPlayerCiv].Type .. ") is viewing the City Info screen for the city of " .. sCityName)
			if UI.GetInterfaceMode() == InterfaceModeTypes.INTERFACEMODE_PURCHASE_PLOT then
				debugPrint("[CityInfoPlotUpdate] Player " .. tostring(iPlayer) .. " (" .. sPlayerName .. ") of civilization " .. tostring(iPlayerCiv) .. " (" .. GameInfo.Civilizations[iPlayerCiv].Type .. ") is looking to purchase plots for the city of " .. sCityName)
				bBuyingPlots = true
			elseif bBuyingPlots then
				if iCurrentPlayerGold < iPlayerGold then
					debugPrint("[CityInfoPlotUpdate] Player's current gold reserves (" .. tostring(iCurrentPlayerGold) .. ") are less than the last update (" .. tostring(iPlayerGold) .. "), searching for plots to update..")
					ResourceScan = function(iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer)
						local bHasWheat = PlotResource(pPlot, iWheatField)
						if bHasWheat and not tableKey[iPlotIndex] then
							if PlotImproved(pPlot, iBasicFarm) then
								debugPrint("[CityInfoPlotUpdate] Plot with ID " .. tostring(iPlotIndex) .. " is farmed.")
								NewResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, WheatFarmBonus)
							elseif not PlotImproved(pPlot) then
								debugPrint("[CityInfoPlotUpdate] Plot with ID " .. tostring(iPlotIndex) .. " is unimproved.")
								NewResourcePlotGained(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, WheatPlotBonus)
							end
						end
					end
					CityPlotLooper(iPlayer, pCity, ResourceScan)
					debugPrint("[CityInfoPlotUpdate] Function completed with all plot updates.")
				else
					debugPrint("[CityInfoPlotUpdate] Player did not purchase any plots.")
				end
				bBuyingPlots = false
			elseif iCurrentFPT ~= iCityFPT or iCurrentHPT ~= iCityHPT or iCurrentGPT ~= iCityGPT then
				debugPrint("[CityInfoPlotUpdate] City terrain yields changed in the city of " .. sCityName .. ". Potential citizen reassignment detected, searching for plots to update..")
				ResourceScan = function(iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer)
					if not PlotResource(pPlot, iWheatField) then
						HappyPlotHandler(tableKey, iPlotIndex, pPlot, iPlotX, iPlotY, iPlayer, pCity)
					end
				end
				CityPlotLooper(iPlayer, pCity, ResourceScan)
				AppleLuxuryHandler(iPlayer, pCity)
				if iCurrentHappinessBoost ~= iHappyCounter then
					GrantResourceHappiness(iPlayer)
				end
			end
			iCityFPT = iCurrentFPT
			iCityHPT = iCurrentHPT
			iCityGPT = iCurrentGPT
			if iPlayerGold ~= iCurrentPlayerGold then
				iPlayerGold = iCurrentPlayerGold
				debugPrint("[CityInfoPlotUpdate] Updating data with player's current gold reserves (" .. tostring(iCurrentPlayerGold) .. ")")
			end
		end
		debugPrint("[CityInfoPlotUpdate] Function CityInfoPlotUpdate ended.")
	end
end

Events.SerialEventCityInfoDirty.Add(CityInfoPlotUpdate)

function HoloConstructionOverride(iPlayer, iCity, iBuilding)
	local pPlayer = Players[iPlayer]
	local pCity = pPlayer:GetCityByID(iCity)
	local iTemple = GameInfoTypes.BUILDING_HOLO_TEMPLE
	local iGuildBranch = GameInfoTypes.BUILDING_TRADE_GUILD_BRANCH
	local iGuildHub = GameInfoTypes.BUILDING_TRADE_GUILD_HUB
	local iGuildInn = GameInfoTypes.BUILDING_TRADE_GUILD_INN
	local result = true
	if iBuilding == iTemple then
		local sCityName = pCity:GetName()
		local bHasShrine = CityHasBuildingClass(pCity, "BUILDINGCLASS_SHRINE")
		if not bHasShrine then
			debugPrint("[HoloConstructionOverride] Shrine not present in " .. sCityName .. ", disabling Temple construction..")
			result = false
		else
			debugPrint("[HoloConstructionOverride] Shrine present in the city of " .. sCityName)
		end
	elseif iBuilding == iGuildBranch or iBuilding == iGuildHub or iBuilding == iGuildInn then
		local iGuildHubUnlockTech = GameInfoTypes.TECH_MACHINERY
		local iGuildInnUnlockTech = GameInfoTypes.TECH_PRINTING_PRESS
		local iPlayerTeam = pPlayer:GetTeam()
		local pPlayerTeam = Teams[iPlayerTeam]
		local tableKey = WWDataStore.RowenGift
		local bHasHQ = tableKey[iPlayer] and tableKey[iPlayer].bHQBuilt or false
		if not bHasHQ then
			debugPrint("[HoloConstructionOverride] Rowen Trade Guild not available in the Empire, disabling construction of a new Guild Building..")
			result = false
		elseif iBuilding == iGuildBranch and pPlayerTeam:IsHasTech(iGuildHubUnlockTech) then
			debugPrint("[HoloConstructionOverride] The Trade Guild Branch has been replaced by the Trade Guild Hub, and is no longer available.")
			result = false
		elseif iBuilding == iGuildHub and pPlayerTeam:IsHasTech(iGuildInnUnlockTech) then
			debugPrint("[HoloConstructionOverride] The Trade Guild Hub has been replaced by the Trade Guild Inn, and is no longer available.")
			result = false
		else
			debugPrint("[HoloConstructionOverride] Rowen Trade Guild is available in the Empire, allowing construction of new Guild Buildings.")
		end
	end
	return result
end

GameEvents.CityCanConstruct.Add(HoloConstructionOverride)

function HoloTechRouteTrigger(iTeam, iTech)
	if GameInfo.Technologies[iTech].InternationalTradeRoutesChange > 0 then
		for i = 0, GameDefines.MAX_MAJOR_CIVS - 1 do
			local iSlot = PreGame.GetSlotStatus(i)
			if iSlot == SlotStatus.SS_TAKEN or iSlot == SlotStatus.SS_COMPUTER then
				local pPlayer = Players[i]
				local sPlayerName = pPlayer:GetName()
				local iPlayerCiv = pPlayer:GetCivilizationType()
				local iPlayerTeam = pPlayer:GetTeam()
				local pPlayerTeam = Teams[iPlayerTeam]
				local sCivName = GameInfo.Civilizations[iPlayerCiv].Type
				if iPlayerCiv == iHoloCiv and iPlayerTeam == iTeam and pPlayer:IsAlive() and pPlayerTeam:IsHasTech(iTech) then
					debugPrint("[HoloTechRouteTrigger] Player " .. tostring(i) .. " has researched " .. Locale.ConvertTextKey(GameInfo.Technologies[iTech].Description) .. ", running Trade Route removal function..")
					HoloTradeRouteRemoval(i, pPlayerTeam)
				end
			end
		end
	end
end

GameEvents.TeamTechResearched.Add(HoloTechRouteTrigger)

print("[HoloDebug] Lua for Holo's trait loaded successfully.")