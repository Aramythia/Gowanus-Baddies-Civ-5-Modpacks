-- Wood_Elves_Improvements_Sentry_Tower
-- Author: TJ
-- DateCreated: 12/9/2015
local unitInTower = -1;
local sentryTowerID = GameInfoTypes["IMPROVEMENT_MEC_HUNTERS_LODGE"];
local sentryPromotionID = GameInfoTypes["PROMOTION_SENTRY"];
local indirectFirePromotionID = GameInfotTypes["PROMOTION_INDIRECT_FIRE"];
local preTowerPromotions = {};
local woodElfCivilizationID = GameInfoTypes["CIVILIZATION_MEC_WOOD_ELVES"];
local unitCombatArcherID = GameInfoTypes["UNITCOMBAT_ARCHER"];
local unitCombatGunID = GameInfoTypes["UNITCOMBAT_GUN"];
local correctUnitCombatType = 0;
local sentryTowerPromotionCombatTypes = {unitCombatArcherID, unitCombatGunID};
local sentryTowerPromotions = {sentryPromotionID, indirectFirePromotionID};
MEC_ListOfSentryTowers = {};
MEC_TotalSentryTowers = 0;
print("Hello World");

function OnUpdateSentryTower(playerID, UnitID, x, y)
	local currentPlayer = Players[playerID]
	-- only wood elfs can get promotions
	if currentPlayer.GetCivilizationType() ~= woodElfCivilizationID then return end

	local currentUnit = currentPlayer:GetUnitByID(UnitID);
	local currentPlot = Map.GetPlotXY(x, y);
	local ImprovementID = -1;	
	local currentTowerNum = -1;

	if currentPlot.GetImprovementType() ~= sentryTowerID then
		-- check to see if unit got off of sentry tower 
		for tower, info in MEC_ListOfSentryTowers do
			if info[4] = currentUnit then
				currentTowerNum = tower;
				for row, type in sentryTowerPromotions do
					local hasPromotion = currentUnit.IsHasPromotion(GameInfo.UnitPromotions[row])
					if hasPromotion = 1 then
						currentUnit.SetHasPromotion(type, preTowerPromotions[currentTowerNum][row]);
					end
				end
			end 
		end
		return 
	end
	
	for tower, info in MEC_ListOfSentryTowers do
		if info[2] = x and info[3] = y then
			currentTowerNum = tower;
			ImprovementID = info[1]
			MEC_ListOfSentryTowers[tower][4] = currentUnit;
		end 
	end
	if currentTowerNum = -1 or ImprovementID = -1 then 
		print("I thought there was a tower there. . .");
		return 
	end
	for key, type in sentryTowerPromotionCombatTypes do
		if currentUnit.GetUnitCombatType() = type then
			correctUnitCombatType = 1;
		end
	end
	if correctUnitCombatType ~= 1 then return end
	-- record if the unit has promotions before it enters tower
	for row, type in sentryTowerPromotions do
		local hasPromotion = currentUnit.IsHasPromotion(GameInfo.UnitPromotions[row])
		preTowerPromotions[currentTowerNum][row] = hasPromotion;
		if hasPromotion = 0 then
			currentUnit.SetHasPromotion(type, 1);
		end
	end

end	

function OnBuildSentryTower(playerID, x, y, ImprovementID)
	MEC_TotalSentryTowers = MEC_TotalSentryTowers;
	local currentPlot = Map.GetPlotXY(x,y);
	local currentUnit = Unit.AtPlot(currentPlot);
	MEC_ListOfSentryTowers[MEC_TotalSentryTowers] = {ImprovementID, x, y, currentUnit};
	preTowerPromotions[MEC_TotalSentryTowers] = {};
end
	

GameEvents.UnitSetXY.Add(onUpdateSentryTower);
GameEvents.BuildFinished.Add(onBuildSentryTower);
