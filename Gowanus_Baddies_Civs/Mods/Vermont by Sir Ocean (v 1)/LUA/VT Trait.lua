-- VT Trait
-- Author: Sir Ocean
-- DateCreated:ddd 
--------------------------------------------------------------

print ("VT Trait.lua has loaded.");

function VT_Trait_Load (player)
	for playerID, player in pairs(Players) do
	local player = Players[playerID];
	if player:GetCivilizationType() == GameInfoTypes["CIVILIZATION_SOVERMONT"] then
		GameEvents.PlayerAdoptPolicy.Add(VT_Trait)
		print("VT_Trait_Load is Running.")
		end
	end
end

Events.SequenceGameInitComplete.Add(VT_Trait_Load)

function VT_Trait (PlayerID, PolicyID)
	local pPlayer = Players[PlayerID]
	local VT = GameInfoTypes["CIVILIZATION_SOVERMONT"]

	if pPlayer:GetCivilizationType() == VT then

		for pCity in pPlayer:Cities() do
		local CityName = pCity:GetName()
			
			if pCity:GetPopulation() < 8 then

			print(CityName.." is fewer than 8 Population.")
			
			if pCity:IsProductionBuilding() then
			
			local NeededProduction = pCity:GetProductionNeeded()
			local Building = pCity:GetProductionBuilding()
			local BuildingInfo = GameInfo.Buildings[pCity:GetProductionBuilding()]
			local BuildingClassInfo = GameInfo.BuildingClasses[BuildingInfo.BuildingClass]
		
			if BuildingClassInfo.MaxGlobalInstances == -1 then
			local CurrentProdcution = pCity:GetProduction()
			print("Needed Production: "..NeededProduction..", Building: "..tostring(Building)..", Get Production: "..CurrentProdcution)
			pCity:SetProduction(CurrentProdcution + NeededProduction)
			Events.GameplayAlertMessage(Locale.ConvertTextKey("Thanks to our new Social Policy, {1_City}'s small town economy rallies to complete [ICON_PRODUCTION] Production on its current building!", CityName))
			elseif BuildingClassInfo.MaxGlobalInstances == 1 then

			print(CityName.." is working on a Wonder, sorry!") 
			
			end
			
			elseif pCity:IsProductionUnit() then
			local NeededProduction = pCity:GetProductionNeeded()
			local CurrentProdcution = pCity:GetProduction()
			print("Needed Production: "..NeededProduction..", Building: "..tostring(Building)..", Get Production: "..CurrentProdcution)
			pCity:SetProduction(CurrentProdcution + NeededProduction)
			
			Events.GameplayAlertMessage(Locale.ConvertTextKey("Thanks to our new Social Policy, {1_City}'s small town economy rallies to complete [ICON_PRODUCTION] Production on its current unit!", CityName))
			
			elseif pCity:IsProductionProject() then
			
			print(CityName.." is working on a Project.")
			
			end

			print(CityName.." is greater than 7 Population, so they get nothing.")

			end
		end	
	end
end