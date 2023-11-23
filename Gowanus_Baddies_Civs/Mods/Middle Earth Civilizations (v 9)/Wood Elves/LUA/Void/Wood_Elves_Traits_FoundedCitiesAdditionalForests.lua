-- Wood_Elves_Traits_FoundedCitiesAdditionalForests
-- Author: TJ
-- DateCreated: 1/12/2016 7:29:21 PM
--------------------------------------------------------------
local woodElfCivilizationID = GameInfoTypes["CIVILIZATION_MEC_WOOD_ELVES"];
local freePlots = 6;
local plotRange = 3;
print("Hellow World");
function OnUpdateFoundedAdditionalForest(playerID, x, y)
	local currentPlayer = Players[playerID]
	-- only wood elfs can get promotions
	if currentPlayer:GetCivilizationType() ~= woodElfCivilizationID then return end
	local currentCityPlot = Map.GetPlot(x, y);
	if currentCityPlot then
		print("currentCityPlot exists");
	else 
		print("Error with currentCityPlot");
	end
	local currentCity = currentCityPlot:GetPlotCity();
	if currentCity then
		print("currentCity exists");
	else 
		print("Error with currentCity");
	end
	print("Hi Function");
	for i=1, freePlots do
		print(i);
		local purchasablePlots = {currentCity:GetBuyablePlotList()};
		local foundForest = false;
		
		for row in purchasablePlots do
			print(purchasablePlots[row])
			--if foundForest == false  then
				--if (currentPlot:GetFeatureType() == FeatureTypes.FEATURE_FOREST) then
					--currentPlot:SetOwner(currentPlayer, currentCity:GetID(), true, true);
					--foundForest = true;
				--end
			--end
		end
	end
end

GameEvents.PlayerCityFounded.Add(OnUpdateFoundedAdditionalForest)
	
