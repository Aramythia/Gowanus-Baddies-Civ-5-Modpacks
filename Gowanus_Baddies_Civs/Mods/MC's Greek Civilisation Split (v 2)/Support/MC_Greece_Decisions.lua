print("Greek Decisions")

------------------------------------------------------------------------------------------------------------------
-- Pergamon: Commission the Heroons
------------------------------------------------------------------------------------------------------------------

local bTemple = GameInfoTypes.BUILDING_TEMPLE;
local bcTemple = GameInfoTypes.BUILDINGCLASS_TEMPLE;
local mathCeil = math.ceil

local Decisions_PergamonHeroon = {}
	Decisions_PergamonHeroon.Name = "TXT_KEY_DECISIONS_MC_PERGAMON_HEROONS"
	Decisions_PergamonHeroon.Desc = "TXT_KEY_DECISIONS_MC_PERGAMON_HEROONS_DESC"
	HookDecisionCivilizationIcon(Decisions_PergamonHeroon, "CIVILIZATION_MC_PERGAMON")
	Decisions_PergamonHeroon.Weight = nil
	Decisions_PergamonHeroon.CanFunc = (
	function(pPlayer)		
		if (pPlayer:GetCivilizationType() ~= GameInfoTypes["CIVILIZATION_MC_PERGAMON"]) then return false, false end
		if load(pPlayer, "Decisions_PergamonHeroon") == true then
			Decisions_PergamonHeroon.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_MC_PERGAMON_HEROONS_ENACTED_DESC")
			return false, false, true
		end	

		local iCost = math.ceil(200 * iMod)
		Decisions_PergamonHeroon.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_MC_PERGAMON_HEROONS_DESC", iCost)

		if (pPlayer:GetGold() < iCost) then return true, false end
		if (pPlayer:GetNumResourceAvailable(iMagistrate, false) < 1) then return true, false end

		local cTemple = pPlayer:GetBuildingClassCount(bcTemple)
		if cTemple < 2 then return true, false end	

		local Level3Check = 0;
		for pUnit in pPlayer:Units() do
			local iLevel = pUnit:GetLevel();
			if iLevel >= 4 then
				Level3Check = 1;
				break
			end
		end
		if Level3Check < 1 then return true, false end	

		return true, true
	end
	)
	
	Decisions_PergamonHeroon.DoFunc = (
	function(pPlayer)

		local iCost = math.ceil(200 * iMod)
		pPlayer:ChangeGold(-iCost);
		pPlayer:ChangeNumResourceTotal(iMagistrate, -1)

		save(pPlayer, "Decisions_PergamonHeroon", true)

		for pCity in pPlayer:Cities() do
			if (pCity:IsHasBuilding(bTemple)) then
				if (pCity:GetWeLoveTheKingDayCounter() >= 1) then
					pCity:ChangeWeLoveTheKingDayCounter(20)
				elseif (pCity:GetWeLoveTheKingDayCounter() <= 0) then
					pCity:SetWeLoveTheKingDayCounter(20)
				end
			end
		end

	end
	)

Decisions_AddCivilisationSpecific(GameInfoTypes["CIVILIZATION_MC_PERGAMON"], "Decisions_PergamonHeroon", Decisions_PergamonHeroon)

-------------------------------------------------------------------------------------------------------------------------
-- Pergamon: Build the Pergamon Altar
-------------------------------------------------------------------------------------------------------------------------
local buildingPergamonAltarID = GameInfoTypes["BUILDING_DECISIONS_MC_PERGAMON_ALTAR"]
local buildingClassPergamonAltarID = GameInfoTypes["BUILDINGCLASS_DECISIONS_MC_PERGAMON_ALTAR"]
local civilizationPergamonID = GameInfoTypes["CIVILIZATION_MC_PERGAMON"]
local techMathematicsID = GameInfoTypes["TECH_MATHEMATICS"]
local Decisions_MC_Pergamon_Altar = {}
    Decisions_MC_Pergamon_Altar.Name = "TXT_KEY_DECISIONS_MC_PERGAMON_ALTAR"
    Decisions_MC_Pergamon_Altar.Desc = "TXT_KEY_DECISIONS_MC_PERGAMON_ALTAR_DESC"
    Decisions_MC_Pergamon_Altar.Pedia = "TXT_KEY_DECISIONS_WONDER_MC_PERGAMON_ALTAR"
    HookDecisionCivilizationIcon(Decisions_MC_Pergamon_Altar, "CIVILIZATION_MC_PERGAMON")
    Decisions_MC_Pergamon_Altar.CanFunc = (
    function(player)
        if player:GetCivilizationType() ~= civilizationPergamonID then return false, false end
        if Game.GetBuildingClassCreatedCount(buildingClassPergamonAltarID) > 0 then
            Decisions_MC_Pergamon_Altar.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_MC_PERGAMON_ALTAR_ENACTED_DESC")
            return false, false, true
        end
        local goldCost = mathCeil(1500*iMod)
        Decisions_MC_Pergamon_Altar.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_MC_PERGAMON_ALTAR_DESC", goldCost)
        if (not Teams[player:GetTeam()]:IsHasTech(techMathematicsID)) then return true, false end
	    if (not player:GetCapitalCity()) then return true, false end
        if player:GetNumResourceAvailable(iMagistrate, false) < 2 then return true, false end
        if player:GetGold() < goldCost then return true, false end
        return true, true
    end
    )
 
    Decisions_MC_Pergamon_Altar.DoFunc = (
    function(player)
        local playerID = player:GetID()
        local goldCost = mathCeil(1500*iMod)
        player:ChangeNumResourceTotal(iMagistrate, -2)
        player:ChangeGold(-goldCost)
        player:GetCapitalCity():SetNumRealBuilding(buildingPergamonAltarID, 1) 
    end
    )
 
Decisions_AddCivilisationSpecific(civilizationPergamonID, "Decisions_MC_Pergamon_Altar", Decisions_MC_Pergamon_Altar)
------------------------------------------------------------------------------------------------------------------
-- Sparta: Call the Greeks to War!
------------------------------------------------------------------------------------------------------------------

local Decisions_SpartaToWar = {}
	Decisions_SpartaToWar.Name = "TXT_KEY_DECISIONS_MC_SPARTA_WAR"
	Decisions_SpartaToWar.Desc = "TXT_KEY_DECISIONS_MC_SPARTA_WAR_DESC"
	HookDecisionCivilizationIcon(Decisions_SpartaToWar, "CIVILIZATION_MC_SPARTA")
	Decisions_SpartaToWar.Weight = nil
	Decisions_SpartaToWar.CanFunc = (
	function(pPlayer)		
		if (pPlayer:GetCivilizationType() ~= GameInfoTypes["CIVILIZATION_MC_SPARTA"]) then return false, false end
		if load(pPlayer, "Decisions_SpartaToWar") == true then
			Decisions_SpartaToWar.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_MC_SPARTA_WAR_ENACTED_DESC")
			return false, false, true
		end	

		local iCost = math.ceil(500 * iMod)
		Decisions_SpartaToWar.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_MC_SPARTA_WAR_DESC", iCost)

		if (pPlayer:GetGold() < iCost) then return true, false end
		if (pPlayer:GetNumResourceAvailable(iMagistrate, false) < 1) then return true, false end

		local pTeam = pPlayer:GetTeam();
		if Teams[pTeam]:GetAtWarCount(true) == 0 then return true, false end

		local pID = pPlayer:GetID();
		local CityStateOther = 0;
		for i = GameDefines.MAX_MAJOR_CIVS, GameDefines.MAX_CIV_PLAYERS - 2 do 
			local cPlayer = Players[i];
			if (cPlayer:IsAlive()) then
				if (cPlayer:GetMinorCivFriendshipLevelWithMajor(pID) >= 1) then
					CityStateOther = 1;
				end
				if (cPlayer:CanMajorBullyGold(pID)) then
					CityStateOther = 1;
				end
			end
		end
		if CityStateOther < 1 then return true, false end

		return true, true
	end
	)
	
	Decisions_SpartaToWar.DoFunc = (
	function(pPlayer)

		local iCost = math.ceil(500 * iMod)
		pPlayer:ChangeGold(-iCost);
		pPlayer:ChangeNumResourceTotal(iMagistrate, -1)

		local pcCity = pPlayer:GetCapitalCity();

		local LandInfantry = { 
			GameInfo.Units.UNIT_MECHANIZED_INFANTRY.ID, 
			GameInfo.Units.UNIT_INFANTRY.ID, 
			GameInfo.Units.UNIT_GREAT_WAR_INFANTRY.ID, 
			GameInfo.Units.UNIT_RIFLEMAN.ID, 
			GameInfo.Units.UNIT_MUSKETMAN.ID, 
			GameInfo.Units.UNIT_PIKEMAN.ID, 
			GameInfo.Units.UNIT_SPEARMAN.ID, 
			GameInfo.Units.UNIT_WARRIOR.ID
			}

		local pID = pPlayer:GetID();
		for i = GameDefines.MAX_MAJOR_CIVS, GameDefines.MAX_CIV_PLAYERS - 2 do 
			local cPlayer = Players[i];
			if (cPlayer:IsAlive()) then
				if (cPlayer:GetMinorCivFriendshipLevelWithMajor(pID) >= 1) or (cPlayer:CanMajorBullyGold(pID)) then
					local tcCity = cPlayer:GetCapitalCity();
					for _, iUnit in pairs(LandInfantry) do
						if pcCity:CanTrain(iUnit) then
							pUnit = pPlayer:InitUnit(iUnit, tcCity:GetX(), tcCity:GetY())
							pUnit:JumpToNearestValidPlot()
							break
						end	
					end
				end
			end
		end

		save(pPlayer, "Decisions_SpartaToWar", true)

	end
	)

Decisions_AddCivilisationSpecific(GameInfoTypes["CIVILIZATION_MC_SPARTA"], "Decisions_SpartaToWar", Decisions_SpartaToWar)

------------------------------------------------------------------------------------------------------------------
-- Sparta: Institute the Krypteia
------------------------------------------------------------------------------------------------------------------

local speed = Game.GetGameSpeedType();
local tBronzeWorking = GameInfoTypes.TECH_BRONZE_WORKING;
local bCourthouse = GameInfoTypes.BUILDING_COURTHOUSE;
local bKrypteia = GameInfoTypes.BUILDING_MC_SPARTA_KRYPTEIA_DUMMY;

local Decisions_SpartaKrypteia = {}
	Decisions_SpartaKrypteia.Name = "TXT_KEY_DECISIONS_MC_SPARTA_KRYPTEIA"
	Decisions_SpartaKrypteia.Desc = "TXT_KEY_DECISIONS_MC_SPARTA_KRYPTEIA_DESC"
	HookDecisionCivilizationIcon(Decisions_SpartaKrypteia, "CIVILIZATION_MC_SPARTA")
	Decisions_SpartaKrypteia.Weight = nil
	Decisions_SpartaKrypteia.CanFunc = (
	function(pPlayer)		
		if (pPlayer:GetCivilizationType() ~= GameInfoTypes["CIVILIZATION_MC_SPARTA"]) then return false, false end
		if load(pPlayer, "Decisions_SpartaKrypteia") == true then
			Decisions_SpartaKrypteia.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_MC_SPARTA_KRYPTEIA_ENACTED_DESC")
			return false, false, true
		end	

		local iCost = math.ceil(200 * iMod)	
		local iResist = 2;
		if speed == GameInfo.GameSpeeds['GAMESPEED_QUICK'].ID then
			iResist = 2;
		elseif speed == GameInfo.GameSpeeds['GAMESPEED_STANDARD'].ID then
			iResist = 3;
		elseif speed == GameInfo.GameSpeeds['GAMESPEED_EPIC'].ID then
			iResist = 4;
		elseif speed == GameInfo.GameSpeeds['GAMESPEED_MARATHON'].ID then
			iResist = 6;
		else
			iResist = 6;
		end
		Decisions_SpartaKrypteia.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_MC_SPARTA_KRYPTEIA_DESC", iCost, iResist)
		if (pPlayer:GetJONSCulture() < iCost) then return true, false end
		if (pPlayer:GetNumResourceAvailable(iMagistrate, false) < 2) then return true, false end

		local pTeam = pPlayer:GetTeam();
		if not (Teams[pTeam]:IsHasTech(tBronzeWorking)) then return true, false end	

		return true, true

	end
	)
	
	Decisions_SpartaKrypteia.DoFunc = (
	function(pPlayer)

		local iCost = math.ceil(200 * iMod)	
		local iResist = 2;
		if speed == GameInfo.GameSpeeds['GAMESPEED_QUICK'].ID then
			iResist = 2;
		elseif speed == GameInfo.GameSpeeds['GAMESPEED_STANDARD'].ID then
			iResist = 3;
		elseif speed == GameInfo.GameSpeeds['GAMESPEED_EPIC'].ID then
			iResist = 4;
		elseif speed == GameInfo.GameSpeeds['GAMESPEED_MARATHON'].ID then
			iResist = 6;
		else
			iResist = 6;
		end
		local iCost = math.ceil(200) * iMod
		pPlayer:ChangeJONSCulture(-iCost)
		pPlayer:ChangeNumResourceTotal(iMagistrate, -2)

		local pcCity = pPlayer:GetCapitalCity();
		pcCity:ChangeResistanceTurns(iResist);

		if not pcCity:IsHasBuilding(bKrypteia) then
			pcCity:SetNumRealBuilding(bKrypteia, 1);
		end

		save(pPlayer, "Decisions_SpartaKrypteia", true)

	end
	)

Decisions_AddCivilisationSpecific(GameInfoTypes["CIVILIZATION_MC_SPARTA"], "Decisions_SpartaKrypteia", Decisions_SpartaKrypteia)

function SpartaKrypteia(playerID, cityID, unitID)
	local pPlayer = Players[playerID];
	if (pPlayer:GetCivilizationType() == GameInfoTypes.CIVILIZATION_MC_SPARTA) then
		if load(pPlayer, "Decisions_SpartaKrypteia") == true then	
			local pCity = pPlayer:GetCityByID(cityID);
			if pCity:IsHasBuilding(bCourthouse) then	
				local pUnit = pPlayer:GetUnitByID(unitID)
				if pUnit:IsCombatUnit() then
					local BaseXP = pUnit:GetExperience()
					local BonusXP = BaseXP + 15;
					pUnit:SetExperience(BonusXP);					
				end
			end
		end
	end
end
GameEvents.CityTrained.Add(SpartaKrypteia)

-------------------------------------------------------------------------------------------------------------------------
-- Athens: Establish the Academy
-------------------------------------------------------------------------------------------------------------------------
local buildingAcademyID = GameInfoTypes["BUILDING_DECISIONS_MC_ACADEMY"]
local buildingClassAcademyID = GameInfoTypes["BUILDINGCLASS_DECISIONS_MC_ACADEMY"]
local civilizationAthensID = GameInfoTypes["CIVILIZATION_MC_ATHENS"]
local Decisions_MC_Athens_Academy = {}
	Decisions_MC_Athens_Academy.Name = "TXT_KEY_DECISIONS_MC_ATHENS_ACADEMY"
	Decisions_MC_Athens_Academy.Desc = "TXT_KEY_DECISIONS_MC_ATHENS_ACADEMY_DESC"
	Decisions_MC_Athens_Academy.Pedia = "TXT_KEY_WONDER_MC_ATHENIAN_ACADEMY_PEDIA"
	HookDecisionCivilizationIcon(Decisions_MC_Athens_Academy, "CIVILIZATION_MC_ATHENS")
	Decisions_MC_Athens_Academy.CanFunc = (
	function(player)
		if player:GetCivilizationType() ~= civilizationAthensID then return false, false end
		if Game.GetBuildingClassCreatedCount(buildingClassAcademyID) > 0 then
			Decisions_MC_Athens_Academy.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_MC_ATHENS_ACADEMY_ENACTED_DESC")
			return false, false, true 
		end
		local cultureCost = mathCeil((50*player:GetNumCities())*iMod)
		local goldCost = mathCeil(1200*iMod)
		Decisions_MC_Athens_Academy.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_MC_ATHENS_ACADEMY_DESC", cultureCost, goldCost)
		if (not player:GetCapitalCity()) then return true, false end
		if player:GetNumResourceAvailable(iMagistrate, false) < 1 then return true, false end
		if player:GetJONSCulture() < cultureCost then return true, false end
		if player:GetGold() < goldCost then return true, false end
		return true, true
	end
	)

	Decisions_MC_Athens_Academy.DoFunc = (
	function(player)
		local playerID = player:GetID()
		local cultureCost = mathCeil((50*player:GetNumCities())*iMod)
		local goldCost = mathCeil(1200*iMod)
		player:ChangeNumResourceTotal(iMagistrate, -1)
		player:ChangeJONSCulture(-cultureCost)
		player:ChangeGold(-goldCost)
		player:GetCapitalCity():SetNumRealBuilding(buildingAcademyID, 1)	
	end
	)

Decisions_AddCivilisationSpecific(civilizationAthensID, "Decisions_MC_Athens_Academy", Decisions_MC_Athens_Academy)

------------------------------------------------------------------------------------------------------------------
-- Athens: Relocate the Delian Treasury
------------------------------------------------------------------------------------------------------------------

local Decisions_AthenianTreasury = {}
	Decisions_AthenianTreasury.Name = "TXT_KEY_DECISIONS_ATHENIANTREASURY"
	Decisions_AthenianTreasury.Desc = "TXT_KEY_DECISIONS_ATHENIANTREASURY_DESC"
	HookDecisionCivilizationIcon(Decisions_AthenianTreasury, "CIVILIZATION_MC_ATHENS")
	Decisions_AthenianTreasury.CanFunc = (
	function(pPlayer)
		if pPlayer:GetCivilizationType() ~= GameInfoTypes.CIVILIZATION_MC_ATHENS then return false, false end

		local sCapital = "Athens"
		local pCity = pPlayer:GetCapitalCity()
		if pCity then
			sCapital =  pCity:GetName()
		end

		if load(pPlayer, "Decisions_AthenianTreasury") == true then
			Decisions_AthenianTreasury.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_ATHENIANTREASURY_ENACTED_DESC", sCapital)
			return false, false, true
		end

		local iResource = iMagistrate
		local sResource = "[ICON_MAGISTRATES] Magistrates"
		if GameInfoTypes.POLICY_DECISIONS_ATHENIANTREASURY then
			iResource = GameInfoTypes.RESOURCE_JFD_DIGNITARIES
			sResource = "[ICON_JFD_DIGNITARY] Dignitaries"
		end

		local iNumCS = 0
		for iLPlayer, pLPlayer in pairs(Players) do
			if (pLPlayer:IsAlive() and pLPlayer:IsMinorCiv() and pLPlayer:GetAlly() == pPlayer:GetID()) then
				iNumCS = iNumCS + 1
			end
		end
		local iReward = math.max(1, iNumCS)
		local iReward =  math.ceil(iMod * iReward * 100)

		Decisions_AthenianTreasury.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_ATHENIANTREASURY_DESC", sCapital, sResource, iReward)

		if not pCity then return true, false end
		if iNumCS < 4 then return true, false end
		if pPlayer:GetNumResourceAvailable(iResource, false) < 1 then return true, false end
		if pPlayer:CountNumBuildings(GameInfoTypes.BUILDING_MC_ATHENIAN_GYMNASIUM) < 1 then return true, false end

		return true, true
	end
	)
	
	Decisions_AthenianTreasury.DoFunc = (
	function(pPlayer)
		local iResource = iMagistrate
		if GameInfoTypes.POLICY_DECISIONS_ATHENIANTREASURY then
			iResource = GameInfoTypes.RESOURCE_JFD_DIGNITARIES
		end
		pPlayer:ChangeNumResourceTotal(iResource, -1)

		local iNumCS = 0
		for iLPlayer, pLPlayer in pairs(Players) do
			if (pLPlayer:IsAlive() and pLPlayer:IsMinorCiv() and pLPlayer:GetAlly() == pPlayer:GetID()) then
				pLPlayer:ChangeMinorCivFriendshipWithMajor(pPlayer:GetID(), -15)
				iNumCS = iNumCS + 1
			end
		end
		local iReward = math.max(1, iNumCS)
		local iReward =  math.ceil(iMod * iReward * 100)
		pPlayer:ChangeGold(iReward)

		if GameInfoTypes.POLICY_DECISIONS_ATHENIANTREASURY then
			pPlayer:SetHasPolicy(GameInfoTypes.POLICY_DECISIONS_ATHENIANTREASURY , true)
		end

		save(pPlayer, "Decisions_AthenianTreasury", true)
	end
	)
	
	---------------------------------------------------
	-- Only runs if the Claims policy does not exist
	---------------------------------------------------	
	if not(GameInfoTypes.POLICY_DECISIONS_ATHENIANTREASURY) then
		Decisions_AthenianTreasury.Monitors = {}
		Decisions_AthenianTreasury.Monitors[GameEvents.PlayerDoTurn] = (	
		function(iPlayer)
			local pPlayer = Players[iPlayer]
			if load(pPlayer, "Decisions_AthenianTreasury") == true then
				for pCity in pPlayer:Cities() do
					pCity:SetNumRealBuilding(GameInfoTypes.BUILDING_DECISIONS_ATHENIANTREASURY, 0)
				end

				local pCity = pPlayer:GetCapitalCity()
				if not(pCity) then return end
				---------------------------------------------------
				-- Add buildings in Capital equivalent to number of CS allies
				---------------------------------------------------	
				local iNumCS = 0
				for iLPlayer, pLPlayer in pairs(Players) do
					if (pLPlayer:IsAlive() and pLPlayer:IsMinorCiv() and pLPlayer:GetAlly() == pPlayer:GetID()) then
						iNumCS = iNumCS + 1
					end
				end
				pCity:SetNumRealBuilding(GameInfoTypes.BUILDING_DECISIONS_ATHENIANTREASURY, iNumCS)
			end
		end
		)
		---------------------------------------------------
		-- Hook to GameEvents.CityCaptureComplete
		---------------------------------------------------	
		Decisions_AthenianTreasury.Monitors[GameEvents.CityCaptureComplete] =  (	
		function(iOldOwner, bIsCapital, iX, iY, iNewOwner, iPop, bConquest)
			Decisions_AthenianTreasury.Monitors[GameEvents.PlayerDoTurn](iOldOwner)
			Decisions_AthenianTreasury.Monitors[GameEvents.PlayerDoTurn](iNewOwner)
		end
		)
	end

Decisions_AddCivilisationSpecific(GameInfoTypes.CIVILIZATION_MC_ATHENS, "Decisions_AthenianTreasury", Decisions_AthenianTreasury)

------------------------------------------------------------------------------------------------------------------
-- Macedon: Develop the Phalanx formation
------------------------------------------------------------------------------------------------------------------
Decisions_GreecePhilhellenism = nil
tDecisions.Decisions_GreecePhilhellenism = nil

Decisions_GreecePhalanx = nil
tDecisions.Decisions_GreecePhalanx = nil

local Decisions_GreecePhalanx = {}
    Decisions_GreecePhalanx.Name = "TXT_KEY_DECISIONS_GREECEPHALANX"
	Decisions_GreecePhalanx.Desc = "TXT_KEY_DECISIONS_MC_GREECEPHALANX_DESC"
	HookDecisionCivilizationIcon(Decisions_GreecePhalanx, "CIVILIZATION_MC_MACEDON")
	Decisions_GreecePhalanx.CanFunc = (
	function(pPlayer)
		if pPlayer:GetCivilizationType() ~= GameInfoTypes.CIVILIZATION_MC_MACEDON then return false, false end
		if load(pPlayer, "Decisions_GreecePhalanx") == true then
			Decisions_GreecePhalanx.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_MC_GREECEPHALANX_ENACTED_DESC")
			return false, false, true
		end
		
		local iCost = math.ceil(400 * iMod)
		Decisions_GreecePhalanx.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_MC_GREECEPHALANX_DESC", iCost)
		
		if (pPlayer:GetGold() < iCost) then return true, false end
		if (pPlayer:GetNumResourceAvailable(iMagistrate, false) < 1) then return true, false end
		if not(Teams[pPlayer:GetTeam()]:IsHasTech(GameInfoTypes.TECH_IRON_WORKING)) then return true, false end
		
		local iNumUnits = 0
		local iUnitType = GameInfoTypes.UNIT_SPEARMAN
		for pUnit in pPlayer:Units() do
			if pUnit:GetUnitType() == iUnitType then
				iNumUnits = iNumUnits + 1
			end
		end
		if iNumUnits < 5 then return true, false end
		
		return true, true
	end
	)
	
	Decisions_GreecePhalanx.DoFunc = (
	function(pPlayer)
		local iCost = math.ceil(400 * iMod)
		
		pPlayer:ChangeGold(-iCost)
		pPlayer:ChangeNumResourceTotal(iMagistrate, -1)
	
		local iUnitType = GameInfoTypes.UNIT_SPEARMAN
		local iNewUnitType = GameInfoTypes.UNIT_MC_MACEDONIAN_PHALANGITAI
		local iPromotion = GameInfoTypes.PROMOTION_DECISIONS_GREECEPHALANX
		
		local tHoplite = {}
		for pUnit in pPlayer:Units() do
			if pUnit:GetUnitType() == iUnitType then table.insert(tHoplite, pUnit) end
		end
		for iKey, pUnit in ipairs(tHoplite) do
			local pNewUnit = pPlayer:InitUnit(iNewUnitType, pUnit:GetX(), pUnit:GetY())
			pNewUnit:Convert(pUnit)
			pNewUnit:SetHasPromotion(iPromotion, true)
		end
		
		save(pPlayer, "Decisions_GreecePhalanx", true)
	end
	)
	
Decisions_AddCivilisationSpecific(GameInfoTypes.CIVILIZATION_MC_MACEDON, "Decisions_GreecePhalanx", Decisions_GreecePhalanx)

------------------------------------------------------------------------------------------------------------------
-- Macedon: Hellenise the Empire
------------------------------------------------------------------------------------------------------------------
--This controls how much GA points are generated by Courthouses
local HellenizationGABonus = 2;

local bcCourt = GameInfoTypes.BUILDINGCLASS_COURTHOUSE;
local bHellenicCulture = GameInfoTypes.BUILDING_MC_HELLENISE_DECISION;

function JFD_IsUsingPietyPrestige2()
        local pietyPrestigeModID = "eea66053-7579-481a-bb8d-2f3959b59974"
        local isUsingPiety = false
       
        for _, mod in pairs(Modding.GetActivatedMods()) do
          if (mod.ID == pietyPrestigeModID) then
            isUsingPiety = true
            break
          end
        end
 
        return isUsingPiety

end

local isUsingPietyPrestige = JFD_IsUsingPietyPrestige2()
local Decisions_MacedonHellenization = {}
	Decisions_MacedonHellenization.Name = "TXT_KEY_DECISIONS_MC_MACEDON_HELLENIZE"
	Decisions_MacedonHellenization.Desc = "TXT_KEY_DECISIONS_MC_MACEDON_HELLENIZE_DESC"
	HookDecisionCivilizationIcon(Decisions_MacedonHellenization, "CIVILIZATION_MC_MACEDON")
	Decisions_MacedonHellenization.Weight = nil
	Decisions_MacedonHellenization.CanFunc = (
	function(pPlayer)		
		if (pPlayer:GetCivilizationType() ~= GameInfoTypes["CIVILIZATION_MC_MACEDON"]) then return false, false end
		if load(pPlayer, "Decisions_MacedonHellenization") == true then
			Decisions_MacedonHellenization.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_MC_MACEDON_HELLENIZE_ENACTED_DESC")
			return false, false, true
		end	

		local religionPrereq = "founded a Religion or have a religious majority in your [ICON_CAPITAL] Capital"
		local religionID = pPlayer:GetReligionCreatedByPlayer()
		if religionID <= 0 then 
			if (pPlayer:GetNumCities() >= 1) then
				religionID = pPlayer:GetCapitalCity():GetReligiousMajority() 
			end
		end

		 if isUsingPietyPrestige then   
			religionPrereq = "a State Religion"
			religionID = JFD_GetStateReligion(pPlayer:GetID())
		end

		local CapCount = 0;
		for pCity in pPlayer:Cities() do
			local oPlayer = Players[pCity:GetOriginalOwner()]
			if oPlayer ~= pPlayer then
				CapCount = CapCount + 1;
			end
		end

		local iCost = math.ceil((50 * CapCount) * iMod)
		if iCost <= math.ceil(50  * iMod) then
			iCost = math.ceil(50  * iMod);
		end
		Decisions_MacedonHellenization.Desc = Locale.ConvertTextKey("TXT_KEY_DECISIONS_MC_MACEDON_HELLENIZE_DESC", religionPrereq, iCost)

		if (pPlayer:GetGold() < iCost) then return true, false end
		if (pPlayer:GetNumResourceAvailable(iMagistrate, false) < 2) then return true, false end
		if CapCount <= 0 then return true, false end
		if pPlayer:GetCurrentEra() < GameInfoTypes["ERA_CLASSICAL"] then return true, false end
		if (religionID <= 0) then return true, false end

		return true, true
	end
	)
	
	Decisions_MacedonHellenization.DoFunc = (
	function(pPlayer)

		local CapCount = 0;
		for pCity in pPlayer:Cities() do
			local oPlayer = Players[pCity:GetOriginalOwner()]
			if oPlayer ~= pPlayer then
				CapCount = CapCount + 1;
			end
		end

		local iCost = math.ceil((50 * CapCount) * iMod)
		if iCost <= math.ceil(50  * iMod) then
			iCost = math.ceil(50  * iMod);
		end
		pPlayer:ChangeGold(-iCost);
		pPlayer:ChangeNumResourceTotal(iMagistrate, -2)

		save(pPlayer, "Decisions_MacedonHellenization", true)

	end
	)

Decisions_AddCivilisationSpecific(GameInfoTypes["CIVILIZATION_MC_MACEDON"], "Decisions_MacedonHellenization", Decisions_MacedonHellenization)

GameEvents.PlayerDoTurn.Add(
function(iPlayer)
	local pPlayer = Players[iPlayer];
	if (pPlayer:IsAlive()) then
		if (pPlayer:GetCivilizationType() == GameInfoTypes["CIVILIZATION_MC_MACEDON"]) then
			if load(pPlayer, "Decisions_MacedonHellenization") == true then

				local iCourtGA = pPlayer:GetBuildingClassCount(bcCourt)
				local GAPoints = (HellenizationGABonus * iCourtGA);
				if not pPlayer:IsGoldenAge() then
					pPlayer:ChangeGoldenAgeProgressMeter(GAPoints);
				end

				local religionID = pPlayer:GetReligionCreatedByPlayer()
				if religionID <= 0 then 
					if (pPlayer:GetNumCities() >= 1) then
						religionID = pPlayer:GetCapitalCity():GetReligiousMajority() 
					end
				end

				 if isUsingPietyPrestige then   
					religionID = JFD_GetStateReligion(pPlayer:GetID())
				end

				if (religionID >= 1) then
					for pCity in pPlayer:Cities() do
						local oPlayer = Players[pCity:GetOriginalOwner()]
						if oPlayer ~= pPlayer then
							if pCity:GetReligiousMajority() == religionID then
								if not (pCity:IsHasBuilding(bHellenicCulture)) then
									pCity:SetNumRealBuilding(bHellenicCulture, 1);
								end
							elseif pCity:GetReligiousMajority() ~= religionID then
								if (pCity:IsHasBuilding(bHellenicCulture)) then
									pCity:SetNumRealBuilding(bHellenicCulture, 0);
								end
							end
						end
					end
				elseif (religionID <= 0) then
					for pCity in pPlayer:Cities() do			
						if (pCity:IsHasBuilding(bHellenicCulture)) then
							pCity:SetNumRealBuilding(bHellenicCulture, 0);
						end
					end
				end

			end
		end
	end
end)