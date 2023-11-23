print ("Macedon GG GA Scripts")

local ucGreatGeneral = GameInfoTypes.UNITCLASS_GREAT_GENERAL;
local isGreeceSplit = (GameInfoTypes.CIVILIZATION_MC_ATHENS ~= nil);

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

function MyButtonFunction()
	local plot = selUnit:GetPlot()
	local playerID = selUnit:GetOwner()
	local player = Players[playerID]
	local pPlayer = player;
	local pTeam = player:GetTeam();
	if selUnit:GetMoves() > 0 then
		if (plot:GetOwner() == playerID) then
			pPlayer:ChangeGoldenAgeTurns(GABonus)
			selUnit:Kill();
		end
	end
end

Controls.MacedonButton:RegisterCallback(Mouse.eLClick, MyButtonFunction )
IconHookup(0, 45, "MC_MACEDON_GG_GA_ATLAS", Controls.MacedonImage )
Controls.MacedonBackground:SetHide(true)

function Selection(player, unitID, x, y, a5, bool)
	if bool then

		local cUnit = Players[player]:GetUnitByID(unitID);
		local plot = cUnit:GetPlot()

		if (Players[player]:GetCivilizationType() == GameInfoTypes["CIVILIZATION_MC_MACEDON"]) and isGreeceSplit then
			if (cUnit:GetUnitClassType() == ucGreatGeneral) then
				Controls.MacedonBackground:SetHide(false)
				selUnit = cUnit;
				Controls.MacedonButton:SetDisabled(false)
				local MacedonToolTip = Locale.ConvertTextKey("TXT_KEY_MC_MACEDON_GG_GA_TAG", GABonus)
				Controls.MacedonButton:LocalizeAndSetToolTip("" .. MacedonToolTip .. "")
			end
		end

	else
		Controls.MacedonBackground:SetHide(true)
		selUnit = nil;
	end
end
Events.UnitSelectionChanged.Add(Selection);