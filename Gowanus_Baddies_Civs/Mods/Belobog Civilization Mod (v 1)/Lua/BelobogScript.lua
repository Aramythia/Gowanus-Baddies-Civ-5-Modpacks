-- The Belobog March
-- DateCreated: 6/12/2023 10:21:17 PM
--------------------------------------------------------------

function FixedScript(iPlayer, iUnitID, iX, iY)
	local pPlayer = Players[iPlayer]
	local BelobogMarch = GameInfo.UnitPromotions["PROMOTION_BELOBOG_MARCH"].ID
	local SilvermaneBuff = GameInfo.UnitPromotions["PROMOTION_SILVERMANE_BUFF"].ID
	local pUnit = pPlayer:GetUnitByID(iUnitID)
	local pCapital = pPlayer:GetCapitalCity()

	if pPlayer:GetCivilizationType() == GameInfo.Civilizations["CIVILIZATION_BELOBOG"].ID then
		if (pUnit:IsHasPromotion(BelobogMarch) == false) and (pCapital ~= nil and pCapital:GetX() == iX and pCapital:GetY() == iY) then
			pUnit:SetHasPromotion(BelobogMarch, true)
		end
		if (pUnit:GetUnitType() == GameInfoTypes["UNIT_SILVERMANE_GUARD"]) and pUnit:IsHasPromotion(SilvermaneBuff) == false then
			pUnit:SetHasPromotion(SilvermaneBuff, true)
		end
	end
end

GameEvents.UnitSetXY.Add(FixedScript)