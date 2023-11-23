-- =====================
-- Pergamon: Odeon Wonder Production. By JFD
-- =====================
local buildingOdeonID = GameInfoTypes["BUILDING_MC_PERGAMENE_ODEON"]
local buildingOdeonProductionID = GameInfoTypes["BUILDING_MC_ODEON_PRODUCTION"]
local buildingClassAmphitheaterID = GameInfoTypes["BUILDINGCLASS_AMPHITHEATER"]
local civilizationPergamonID = GameInfoTypes["CIVILIZATION_MC_PERGAMON"]
function MC_OdeonProductionFromGreatWorks(playerID)
	local player = Players[playerID]
	if (player:IsAlive() and player:GetCivilizationType() == civilizationPergamonID) then
		for city in player:Cities() do
			--if (city:IsHasBuilding() == buildingOdeonID and city:GetNumGreatWorksInBuilding(buildingClassAmphitheaterID) > 0) then
			if (city:IsHasBuilding(buildingOdeonID) and city:GetNumGreatWorksInBuilding(buildingClassAmphitheaterID) > 0) then
				city:SetNumRealBuilding(buildingOdeonProductionID, 1)
			end
		end
	end
end
GameEvents.PlayerDoTurn.Add(MC_OdeonProductionFromGreatWorks)

-- =====================
-- Pergamon: GPP on Wonder completion. By JFD
-- =====================
local civilizationPergamonID = GameInfoTypes["CIVILIZATION_MC_PERGAMON"]
local iMod = ((GameInfo.GameSpeeds[Game.GetGameSpeedType()].BuildPercent)/100) 
function MC_PergamonGreatPersonPointsOnWonderConstruction(playerID, cityID, buildingID)
        local player = Players[playerID]
        if (player:IsAlive() and player:GetCivilizationType() == civilizationPergamonID) then
                local city = player:GetCityByID(cityID)
                local building = GameInfo.Buildings[buildingID]
                if GameInfo.BuildingClasses[building.BuildingClass].MaxGlobalInstances == 1 then
					local specialistID = GameInfoTypes[building.SpecialistType]
                    local greatPersonPoints = ((building.GreatPeopleRateChange*iMod)*5)
					local eraMod = (player:GetCurrentEra()+1)
					math.ceil(greatPersonPoints * eraMod)
                    city:ChangeSpecialistGreatPersonProgressTimes100(specialistID, greatPersonPoints*100)
					if specialistID then
						local sTitle = Locale.ConvertTextKey("TXT_KEY_C15_PERGAMON_WONDER_BUILT")
						local sDesc = Locale.ConvertTextKey("TXT_KEY_C15_PERGAMON_WONDER_BUILT_DESC", GameInfo.Buildings[buildingID].Description, GameInfo.Specialists[specialistID].Description, greatPersonPoints)
						player:AddNotification(NotificationTypes.NOTIFICATION_GENERIC, sDesc, sTitle)
					end
                end
        end
end
GameEvents.CityConstructed.Add(MC_PergamonGreatPersonPointsOnWonderConstruction)

-- =====================
-- Pergamon: Culture and Gold in UA. By JFD -- Add MCIS to the modifier from wonders/gold from culture? Maybe DTP as well?
-- =====================
local buildingPergamemeID = GameInfoTypes["BUILDING_MC_PERGAMEME"] 
local buildingPergamemeGoldID = GameInfoTypes["BUILDING_MC_PERGAMEME_GOLD"] 
local civilizationPergamonID = GameInfoTypes["CIVILIZATION_MC_PERGAMON"]
local mathMax = math.min
function MC_PergamemeWonderCulture(playerID)
    local player = Players[playerID]
    if player:GetCivilizationType() == civilizationPergamonID then
        for city in player:Cities() do
            local numWonders = city:GetNumWorldWonders()
            print("numWonders = ", numWonders)
            city:SetNumRealBuilding(buildingPergamemeID, mathMax(numWonders, 10))
            print("Number of Culture Modifier Buildings: ", city:GetNumRealBuilding(buildingPergamemeID))
            local culture = city:GetJONSCulturePerTurn()/2
            print("Culture = ", culture)
            city:SetNumRealBuilding(buildingPergamemeGoldID, math.floor(culture))
            print("Number of Gold Buildings: ", city:GetNumRealBuilding(buildingPergamemeGoldID))

        end
    end
end
GameEvents.PlayerDoTurn.Add(MC_PergamemeWonderCulture)
-- =====================
-- Pergamon: Civilization_FreePolicies table. By JFD
-- =====================
function IsCPDLL()
    for _, mod in pairs(Modding.GetActivatedMods()) do
        if mod.ID == "d1b6328c-ff44-4b0d-aad7-c657f83610cd" then
            return true
        end
    end
    return false
end
local isCPDLL = IsCPDLL()
 
function JFD_InitDummyPolicies()
    for playerID = 0, GameDefines.MAX_MAJOR_CIVS - 1 do
        local player = Players[playerID]
        if player:IsAlive() then
            local civType = GameInfo.Civilizations[player:GetCivilizationType()].Type
            for row in GameInfo.Civilization_FreePolicies("CivilizationType = '" .. civType .. "'") do
                if isCPDLL then
                    player:GrantPolicy(GameInfoTypes[row.PolicyType], true)
                else
                    player:SetNumFreePolicies(1)
                    player:SetNumFreePolicies(0)
                    player:SetHasPolicy(GameInfoTypes[row.PolicyType], true)
                end
            end
        end
    end
end
Events.LoadScreenClose.Add(JFD_InitDummyPolicies)

