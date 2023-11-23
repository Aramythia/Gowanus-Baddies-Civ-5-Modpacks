-- Inazuma_UA
-- Author: Mathetes tou Megalou Alexandrou
-- DateCreated: 7/9/2022 4:02:53 AM
--------------------------------------------------------------
local iInazuma = GameInfoTypes["CIVILIZATION_MATHALX_INAZUMA"]

local iCommission = GameInfoTypes["BUILDING_MATHALX_COMMISSION"]
local iKanjou = GameInfoTypes["BUILDING_MATHALX_KANJOU_COMMISSION"]
local iTenryou = GameInfoTypes["BUILDING_MATHALX_TENRYOU_COMMISSION"]
local iSha = GameInfoTypes["BUILDING_MATHALX_YASHIRO_COMMISSION"]

local iPureLandHurryDummy = GameInfoTypes["BUILDING_MATHALX_PURE_LAND_ONE_MIND_HURRY_DUMMY"]
local iPureLandDummy = GameInfoTypes["BUILDING_MATHALX_PURE_LAND_ONE_MIND_DUMMY"]

local iDoushin = GameInfoTypes["UNIT_MATHALX_DOUSHIN"]
local iFriendlyLandAttack = GameInfoTypes["PROMOTION_MATHALX_DOUSHIN_STRIKE"]

function lockCommissions(iPlayer, iCity, eBuilding, gold, FoC)
	local agonistes = Players[iPlayer]
	local asty = agonistes:GetCityByID(iCity)
	if eBuilding == iKanjou or eBuilding == iTenryou or eBuilding == iSha then
		return asty:IsHasBuilding(iCommission)
	end
	return true
end
GameEvents.CityCanConstruct.Add(lockCommissions)

function gibPromotionPlease(iPlayer)
	local agonistes = Players[iPlayer]
	if agonistes:GetCivilizationType() == iInazuma then
		for asty in agonistes:Cities() do
			ponosAionos(asty)
		end
	end

	for taxeis in agonistes:Units() do
		if taxeis:GetUnitType() == iDoushin then
			taxeis:SetHasPromotion(iFriendlyLandAttack, taxeis:GetPlot():GetOwner() == iPlayer)
		end
	end
end
GameEvents.PlayerDoTurn.Add(gibPromotionPlease)

function ponosAionos(asty)
	if asty:GetProductionBuilding() == -1 then
		return
	end
	if GameInfo.BuildingClasses[GameInfo.Buildings[asty:GetProductionBuilding()].BuildingClass].MaxGlobalInstances <= 0 then
		return
	end

	local agonistes = Players[asty:GetOwner()]

	local proteuousa = agonistes:GetCapitalCity()
	if proteuousa:GetNumRealBuilding(iPureLandDummy) < agonistes:GetCurrentEra()+1 then
		asty:SetNumRealBuilding(iPureLandHurryDummy, 1)
	else
		asty:SetNumRealBuilding(iPureLandHurryDummy, 0)
	end
end

function cityInfoDirty()
	local asty = UI.GetHeadSelectedCity();
	
    if asty == nil  then
        return;
    end

	if Players[asty:GetOwner()]:GetCivilizationType() == iInazuma then
		ponosAionos(asty)
	end
end
Events.SerialEventCityHexHighlightDirty.Add(cityInfoDirty)

function oikodomesisThaumes(iPlayer, iCity, eBuilding, gold, FoC)
	local agonistes = Players[iPlayer]
	local asty = agonistes:GetCityByID(iCity)
	if GameInfo.BuildingClasses[GameInfo.Buildings[eBuilding].BuildingClass].MaxGlobalInstances <= 0 then
		return
	end
	if agonistes:GetCivilizationType() ~= iInazuma then
		return
	end
	local proteuousa = agonistes:GetCapitalCity()
	if proteuousa:GetNumRealBuilding(iPureLandDummy) < agonistes:GetCurrentEra()+1 then
		proteuousa:SetNumRealBuilding(iPureLandDummy, agonistes:GetCurrentEra()+1)
		asty:SetNumRealBuilding(eBuilding, 2)
	end
end

local loaded = false
for iPlayer = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
	local agonistes = Players[iPlayer]
	if agonistes:GetCivilizationType() == iInazuma then
		if not loaded then
			GameEvents.CityConstructed.Add(oikodomesisThaumes)
			loaded = true
		end
	end
end