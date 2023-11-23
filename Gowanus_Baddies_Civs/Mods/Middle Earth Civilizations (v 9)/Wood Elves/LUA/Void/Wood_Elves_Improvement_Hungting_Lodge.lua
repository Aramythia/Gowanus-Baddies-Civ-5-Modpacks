-- Wood_Elves_Improvements
-- Author: TJ
-- DateCreated: 5/2/2015 8:48:36 AM
--------------------------------------------------------------
local totalFood = 1
local huntersLodgeID = GameInfoTypes["IMPROVEMENT_MEC_HUNTERS_LODGE" .. totalFood]
local fursID = GameInfoTypes["RESOURCE_FURS"]
local deerID = GameInfoTypes["RESOURCE_DEER"]
local trufflesID = GameInfoTypes["RESOURCE_TRUFFLES"]
local bisonID = GameInfoTypes["RESOURCE_BISON"]  
local resourceList = {fursID, deerID, trufflesID, bisonID}
print(totalFood)
print(huntersLodgeID)

function OnUpdateHuntersLodge(playerID, x, y, improvementID)
	if (improvementID ~= huntersLodgeID) then return end
	local xmods = {-1, 0, -1, 1, 0, 1}
	local ymods = {-1, -1, 0, 0, 1, 1}
	local count = 6
	local lodgePlot = Plot:At(x,y)
	for i = 0, count do
		print(i)
		local currentPlot = Plot:At(x + xmods[i], y + ymods[i])
		for row in resourceList do
			print(resourceList[row])
			if currentPlot.getResourceType() == resourceList[row] then
				totalFood = totalFood + 1
				huntersLodgeID = GameInfoTypes["IMPROVEMENT_MEC_HUNTERS_LODGE" .. totalFood]
				lodgePlot.SetImprovementType[huntersLodgeID]
			end
			print(totalFood)
			print(huntersLodgeID)
		end
	end
end

GameEvents.BuildFinished.Add(OnUpdateHuntersLodge)