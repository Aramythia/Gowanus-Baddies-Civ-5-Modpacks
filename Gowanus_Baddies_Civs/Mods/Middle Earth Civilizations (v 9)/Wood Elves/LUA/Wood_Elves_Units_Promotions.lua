-- Wood_Elves_Units_Promotions
-- Author: TJ 
-- Original Author and Special Thanks be to LastSword in Kyrat Mod
-- DateCreated: 1/16/2016 8:49:01 AM
--------------------------------------------------------------
print("Wood Elfs Might be Invisible");
function nearUnfriendlyCity(player, radius, x, y)
	for dx = -radius, radius do
		for dy = -radius, radius do
			local currentPlot = Map.PlotXYWithRangeCheck(x, y, dx, dy, r)
			if currentPlot then
				local city = currentPlot:GetPlotCity();
				local owner = currentPlot:GetOwner();
				if city and owner ~= player then
					print("too close to enemy city")
					return true
				end
			end
		end
	end
	print("kept distance from city");
	return false;
end

function UpdateWoodElfVisibility(player, unit, x, y)
	local cUnit = Players[player]:GetUnitByID(unit);
	local cityVisibilityRange = 3;
	--print(cUnit);
	if cUnit:IsHasPromotion( GameInfoTypes.PROMOTION_MEC_WOOD_ELF_INVISIBLE_OFF ) or cUnit:IsHasPromotion( GameInfoTypes.PROMOTION_MEC_WOOD_ELF_INVISIBLE_ON ) then
		print("has promo");
		if Map.GetPlot(x,y) ~= nil then
			print("plot OK")
			local cPlot = Map.GetPlot(x,y);
			--might be a better way to organize these if statements
			if cPlot:GetFeatureType() == GameInfoTypes.FEATURE_FOREST then
				print("on forest")
				if cPlot:IsOwned() and not cPlot:IsFriendlyTerritory() or nearUnfriendlyCity(player, cityVisibilityRange, x, y) then
					print("forest in enemy territory");
					if cUnit:IsHasPromotion( GameInfoTypes.PROMOTION_MEC_WOOD_ELF_INVISIBLE_ON ) then
						cUnit:SetHasPromotion( GameInfoTypes.PROMOTION_MEC_WOOD_ELF_INVISIBLE_ON ,false);
						cUnit:SetHasPromotion( GameInfoTypes.PROMOTION_MEC_WOOD_ELF_INVISIBLE_OFF ,true);
					end
				else 
					if not cUnit:IsHasPromotion( GameInfoTypes.PROMOTION_MEC_WOOD_ELF_INVISIBLE_ON ) then
						cUnit:SetHasPromotion( GameInfoTypes.PROMOTION_MEC_WOOD_ELF_INVISIBLE_ON ,true);
						cUnit:SetHasPromotion( GameInfoTypes.PROMOTION_MEC_WOOD_ELF_INVISIBLE_OFF ,false);
						print("should be invisible");
					end
				end
			else
				print("not on forest");
				if cUnit:IsHasPromotion( GameInfoTypes.PROMOTION_MEC_WOOD_ELF_INVISIBLE_ON ) then
					cUnit:SetHasPromotion( GameInfoTypes.PROMOTION_MEC_WOOD_ELF_INVISIBLE_ON ,false);
					cUnit:SetHasPromotion( GameInfoTypes.PROMOTION_MEC_WOOD_ELF_INVISIBLE_OFF ,true);
				end
			end
		end
	end
end

GameEvents.UnitSetXY.Add(UpdateWoodElfVisibility);