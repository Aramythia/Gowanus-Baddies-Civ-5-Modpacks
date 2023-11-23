-- TableSaverLoaderInit
-- Author: DarkScythe
-- DateCreated: 8/4/2014 4:04:45 PM
--------------------------------------------------------------
print("[TableSaverLoader] Loading HoloTSLInit.lua...")

-- Set TSL table identification parameters
local tableRoot = WWDataStore
local tableName = "HoloTable"

-- Initialize TableSaverLoader savegame interception functions
local autoSaveFreq = OptionsManager.GetTurnsBetweenAutosave_Cached()

local function InputHandler(uiMsg, wParam, lParam)
	if uiMsg == KeyEvents.KeyDown then
		if wParam == Keys.VK_F11 then
			QuickSaveIntercept()
	        return true
		elseif wParam == Keys.S and UIManager:GetControl() then
			SaveGameIntercept()
			return true
		end
	end
end

ContextPtr:SetInputHandler(InputHandler)

local function SaveGameIntercept()
	print("[TableSaverLoader] Preparing table data for a game save..")
	TableSave(tableRoot, tableName)
	UIManager:QueuePopup(ContextPtr:LookUpControl("/InGame/GameMenu/SaveMenu"), PopupPriority.SaveMenu)
end

local function QuickSaveIntercept()
	print("[TableSaverLoader] Preparing table data for a quick save..")
	TableSave(tableRoot, tableName)
	UI.QuickSave()
end

function OnEnterGame()
	print("[TableSaverLoader] Player entering game, initializing gamesave capture functions..")
	ContextPtr:LookUpControl("/InGame/GameMenu/SaveGameButton"):RegisterCallback(Mouse.eLClick, SaveGameIntercept)
	ContextPtr:LookUpControl("/InGame/GameMenu/QuickSaveButton"):RegisterCallback(Mouse.eLClick, QuickSaveIntercept)
	TableSave(tableRoot, tableName)
end

Events.LoadScreenClose.Add(OnEnterGame)

function OnGameOptionsChanged()
	autoSaveFreq = OptionsManager.GetTurnsBetweenAutosave_Cached()
end

Events.GameOptionsChanged.Add(OnGameOptionsChanged)

function OnAIProcessingEndedForPlayer(iPlayer)
	if iPlayer == 63 then
		if Game.GetGameTurn() % autoSaveFreq == 0 then
			print("[TableSaverLoader] Preparing table data for an auto save..")
			TableSave(tableRoot, tableName)
		end
	end
end

Events.AIProcessingEndedForPlayer.Add(OnAIProcessingEndedForPlayer)

-- Attempt to load the table
if TableLoad(tableRoot, tableName) then
	print("[TableSaverLoader] Initializing to continue a loaded game...")
else
	print("[TableSaverLoader] Initializing for a new game...")
end

print("[TableSaverLoader] TableSaverLoader initialized successfully.")