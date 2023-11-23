-- =====================
-- Macedon: Culture from conquered cities in Golden Ages. By GPuzzle and JFD
-- =====================

function IsCivilisationActive(civilisationID)
        for iSlot = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
                local slotStatus = PreGame.GetSlotStatus(iSlot)
                if (slotStatus == SlotStatus["SS_TAKEN"] or slotStatus == SlotStatus["SS_COMPUTER"]) then
                        if PreGame.GetCivilization(iSlot) == civilisationID then
                                return true
                        end
                end
        end
 
        return false
end
--=======================================================================================================================
-- CORE FUNCTIONS      
--=======================================================================================================================
-- Globals
----------------------------------------------------------------------------------------------------------------------------
local activePlayerID            = Game.GetActivePlayer()
local activePlayer                      = Players[activePlayerID]
local civilisationID            = GameInfoTypes["CIVILIZATION_MC_MACEDON"]
local isCivActive                       = IsCivilisationActive(civilisationID)
local isCivActivePlayer         = activePlayer:GetCivilizationType() == civilisationID
 
if isCivActive then
        print("Greek Split is in this game")
end
------------------------------------------------------------------------------------------------------------------------
-- GoldenAgeCultureConquered
------------------------------------------------------------------------------------------------------------------------
local buildingGoldenAgeCultureID = GameInfoTypes["BUILDING_MC_GREECE_GOLDEN_AGE_CULTURE"]
 
function GoldenAgeCultureConquered(playerID)
        local player = Players[playerID]
        if (player:IsAlive() and player:GetCivilizationType() == civilisationID) then
                if player:IsGoldenAge() then
                        for city in player:Cities() do
                                if city:GetOriginalOwner() ~= playerID then
                                        if (not city:IsHasBuilding(buildingGoldenAgeCultureID)) then
                                                city:SetNumRealBuilding(buildingGoldenAgeCultureID, 1)
										end
                                else
                                        if city:IsHasBuilding(buildingGoldenAgeCultureID) then
                                                city:SetNumRealBuilding(buildingGoldenAgeCultureID, 0)
                                        end
                                end
						end
                else
                        for city in player:Cities() do
                                if city:IsHasBuilding(buildingGoldenAgeCultureID) then
                                        city:SetNumRealBuilding(buildingGoldenAgeCultureID, 0)
                                end
                        end
                end    
        end
end
 
if isCivActive then
        GameEvents.PlayerDoTurn.Add(GoldenAgeCultureConquered)
end
-- =====================
-- Macedon: Heavy Charge when with spear units. By JFD
-- =====================
include("PlotIterators.lua")
local promotionHeavyChargeID = GameInfoTypes["PROMOTION_HEAVY_CHARGE"]
local unitPhalangitaiID    = GameInfoTypes["UNIT_MC_MACEDONIAN_PHALANGITAI"]
local unitClassPikemanID   = GameInfoTypes["UNITCLASS_PIKEMAN"]
local unitClassSpearmanID  = GameInfoTypes["UNITCLASS_SPEARMAN"]
function MC_Phalangitai(playerID)
    local player = Players[playerID]
    if (player:IsAlive() and (not player:IsBarbarian())) then  
        for unit in player:Units() do
            if unit:GetUnitType() == unitPhalangitaiID then
                local numAdjacentSpear = 0
                local unitPlot = unit:GetPlot()
                if unitPlot then
                    for loopPlot in PlotAreaSpiralIterator(unitPlot, 1, SECTOR_NORTH, DIRECTION_CLOCKWISE, DIRECTION_OUTWARDS, CENTRE_EXCLUDE) do
                        local loopUnit = loopPlot:GetUnit()
                        if (loopUnit and (loopUnit:GetOwner() == playerID and (loopUnit:GetUnitClassType() == unitClassPikemanID or loopUnit:GetUnitClassType() == unitClassSpearmanID))) then
                            numAdjacentSpear = numAdjacentSpear + 1
                            if numAdjacentSpear >= 2 then break end
                        end
                    end
                end
                if numAdjacentSpear >= 2 then
                    if (not unit:IsHasPromotion(promotionHeavyChargeID)) then
                        unit:SetHasPromotion(promotionHeavyChargeID, true)
                    end
                else
                    if unit:IsHasPromotion(promotionHeavyChargeID) then
                        unit:SetHasPromotion(promotionHeavyChargeID, false)
                    end
                end
            end
        end
    end
end
GameEvents.PlayerDoTurn.Add(MC_Phalangitai)
-- =====================
-- Macedon: +1 Moves in enemy territory. By JFD
-- =====================
local civilizationMacedoniaID = GameInfoTypes["CIVILIZATION_MC_MACEDON"]
function MC_Macedonia(playerID)
	local player = Players[playerID]
	if player:GetCivilizationType() ~= civilizationMacedoniaID then return end
	if (not player:IsAlive()) then return end
	for unit in player:Units() do
		local unitPlot = unit:GetPlot()
		local plotOwnerID = unitPlot:GetOwner()
		if plotOwnerID > -1 then
			local plotOwner = Players[plotOwnerID]
			if Teams[player:GetTeam()]:IsAtWar(plotOwner:GetTeam()) then
				unit:ChangeMoves(60)
			end
		end
	end
end
GameEvents.PlayerDoTurn.Add(MC_Macedonia)