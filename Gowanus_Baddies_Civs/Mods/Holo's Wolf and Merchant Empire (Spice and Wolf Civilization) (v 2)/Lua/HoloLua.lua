-- HoloLua
-- Author: DarkScythe
-- DateCreated: 6/17/2014 4:14:36 PM
--------------------------------------------------------------
local BNWLoaded = ContentManager.IsActive("6DA07636-4123-4018-B643-6575B4EC336B", ContentType.GAMEPLAY)
assert(BNWLoaded, "[HoloDebug] ERROR! Brave New World expansion/DLC is not active! This mod cannot run without Brave New World! Aborting..")

-- DEBUG MODE TOGGLE
debugMode = 0 -- Set to 1 to turn on debug mode, 0 to turn off // Default: 0

local bHoloPlaying

for i = 0, GameDefines.MAX_MAJOR_CIVS - 1 do
	local pPlayer = Players[i]
	if pPlayer:GetCivilizationType() == GameInfoTypes.CIVILIZATION_WISEWOLF and pPlayer:IsEverAlive() then
		print("Holo is in this game as player " .. tostring(i) .. "! Loading associated trait scripts..")
		include("HoloTrait.lua")
		bHoloPlaying = true
		break
	end
end

if not bHoloPlaying then
	print("Holo is not participating in this game. Halting execution of her trait scripts..")
end