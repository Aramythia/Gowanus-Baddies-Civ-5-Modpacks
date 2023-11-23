print ("Macedon GG GA Check")

--Support
include("IconSupport.lua")

-- Checks
local MacedonID = GameInfoTypes.CIVILIZATION_MC_MACEDON;
local isGreeceSplit = (GameInfoTypes.CIVILIZATION_MC_ATHENS ~= nil);

for i, player in pairs(Players) do
	if player:IsEverAlive() then
		if (player:GetCivilizationType() == MacedonID) and isGreeceSplit then
			include("MC_Macedon_GG_GA_Bonus")
			break;
		end
	end
end