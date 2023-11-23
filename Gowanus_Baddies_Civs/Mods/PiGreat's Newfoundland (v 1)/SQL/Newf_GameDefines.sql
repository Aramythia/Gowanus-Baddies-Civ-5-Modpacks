--=======================================================================================================================
-- BUILDINGCLASSES
--=======================================================================================================================
-- BuildingClasses
------------------------------	
INSERT INTO BuildingClasses 
		(DefaultBuilding, 		Type, 						Description)
VALUES	('BUILDING_PI_FISHING_STAGE', 	'BUILDINGCLASS_PI_FISHING_STAGE', 	'TXT_KEY_BUILDING_PI_FISHING_STAGE');

INSERT INTO BuildingClasses 
		(DefaultBuilding, 		Type, 						Description)
VALUES	('BUILDING_PI_FISHING_STAGE_EXP', 	'BUILDINGCLASS_PI_FISHING_STAGE_EXP', 	'TXT_KEY_BUILDING_PI_FISHING_STAGE');

INSERT INTO BuildingClasses 
		(DefaultBuilding, 		Type, 						Description)
VALUES	('BUILDING_PI_NAVAL_GARRISON_PRODUCTION', 	'BUILDINGCLASS_PI_NAVAL_GARRISON_PRODUCTION', 	'TXT_KEY_BUILDING_PI_NAVAL_GARRISON_PRODUCTION_DESC');
--==========================================================================================================================	
-- BUILDINGS
--==========================================================================================================================	
-- Buildings
------------------------------	
INSERT INTO Buildings 
		(Type, 						BuildingClass, 				GreatWorkCount, Cost, 	FaithCost,	GoldMaintenance,	PrereqTech, NeverCapture,	Description, 					Help)
VALUES	('BUILDING_PI_FISHING_STAGE_EXP', 		'BUILDINGCLASS_PI_FISHING_STAGE_EXP',	-1,				-1, 	-1,			0,					null, 		1,				'TXT_KEY_BUILDING_PI_FISHING_STAGE',	'TXT_KEY_BUILDING_PI_FISHING_STAGE_HELP');

INSERT INTO Buildings 
		(Type, 						BuildingClass, 				GreatWorkCount, Cost, 	FaithCost,	GoldMaintenance,	PrereqTech, NeverCapture,	Description, 					Help)
VALUES	('BUILDING_PI_NAVAL_GARRISON_PRODUCTION', 		'BUILDINGCLASS_PI_NAVAL_GARRISON_PRODUCTION',	-1,				-1, 	-1,			0,					null, 		1,				'TXT_KEY_BUILDING_PI_NAVAL_GARRISON_PRODUCTION_DESC',	'TXT_KEY_BUILDING_PI_NAVAL_GARRISON_PRODUCTION_HELP');

INSERT INTO Buildings 	
		(Type, 					BuildingClass, Cost, SpecialistType, SpecialistCount, TradeRouteRecipientBonus, TradeRouteTargetBonus, GoldMaintenance, PrereqTech,	Description, 					Civilopedia, 					  Help, 								Strategy,								 ArtDefineTag, 	MinAreaSize, NeverCapture, Espionage, EspionageModifier, HurryCostModifier, PortraitIndex, 	IconAtlas)
SELECT	'BUILDING_PI_FISHING_STAGE',	BuildingClass, Cost, SpecialistType, SpecialistCount, TradeRouteRecipientBonus, TradeRouteTargetBonus, GoldMaintenance, PrereqTech,	'TXT_KEY_BUILDING_PI_FISHING_STAGE',	'TXT_KEY_CIV5_PI_FISHING_STAGE_TEXT',  'TXT_KEY_BUILDING_PI_FISHING_STAGE_HELP', 	'TXT_KEY_BUILDING_PI_FISHING_STAGE_STRATEGY', ArtDefineTag,	MinAreaSize, NeverCapture, Espionage, EspionageModifier, HurryCostModifier, 2, 				'PI_NEWFOUNDLAND_ATLAS'
FROM Buildings WHERE Type = 'BUILDING_SEAPORT';	
------------------------------	
-- Building_Flavors
------------------------------	
INSERT INTO Building_Flavors 	
		(BuildingType, 				FlavorType,				Flavor)
SELECT	'BUILDING_PI_FISHING_STAGE',		FlavorType,				Flavor
FROM Building_Flavors WHERE BuildingType = 'BUILDING_SEAPORT';	
------------------------------	
-- Building_ClassesNeededInCity
------------------------------	
INSERT INTO Building_ClassesNeededInCity 	
		(BuildingType, 				BuildingClassType)
SELECT	'BUILDING_PI_FISHING_STAGE',		BuildingClassType
FROM Building_ClassesNeededInCity WHERE BuildingType = 'BUILDING_SEAPORT';	
------------------------------	
-- Building_SeaResourceYieldChanges
------------------------------	
INSERT INTO Building_SeaResourceYieldChanges
        (BuildingType, YieldType, Yield)
SELECT    'BUILDING_PI_FISHING_STAGE', 'YIELD_GOLD', 1
FROM Building_SeaResourceYieldChanges WHERE BuildingType = 'BUILDING_SEAPORT';
------------------------------	
-- Building_YieldModifiers
------------------------------	
INSERT INTO Building_YieldModifiers 	
		(BuildingType, 				YieldType, Yield)
SELECT	'BUILDING_PI_FISHING_STAGE',		YieldType, Yield
FROM Building_YieldModifiers WHERE BuildingType = 'BUILDING_SEAPORT';	

INSERT INTO Building_YieldModifiers 	
		(BuildingType, 				YieldType, Yield)
VALUES ('BUILDING_PI_NAVAL_GARRISON_PRODUCTION', 'YIELD_PRODUCTION', 10);
------------------------------	
-- Building_YieldChanges
------------------------------	
INSERT INTO Building_YieldChanges 	
		(BuildingType, 				YieldType, Yield)
SELECT	'BUILDING_PI_FISHING_STAGE',		YieldType, Yield
FROM Building_YieldChanges WHERE BuildingType = 'BUILDING_SEAPORT';	

INSERT INTO Building_YieldChanges 	
		(BuildingType, 				YieldType, Yield)
VALUES ('BUILDING_PI_NAVAL_GARRISON_PRODUCTION', 'YIELD_PRODUCTION', 2);
------------------------------	
-- Building_DomainFreeExperiences
------------------------------	
INSERT INTO Building_DomainFreeExperiences 	
		(BuildingType, 				DomainType, Experience)
VALUES ('BUILDING_PI_FISHING_STAGE_EXP',		'DOMAIN_LAND', 5),
('BUILDING_PI_FISHING_STAGE_EXP',        'DOMAIN_SEA', 5),
('BUILDING_PI_FISHING_STAGE_EXP',        'DOMAIN_AIR', 5);
--==========================================================================================================================	
-- LEADERS
--==========================================================================================================================	
-- Leaders
--------------------------------			
INSERT INTO Leaders 
		(Type, 						Description, 						Civilopedia, 							CivilopediaTag, 								ArtDefineTag, 			VictoryCompetitiveness, WonderCompetitiveness, 	MinorCivCompetitiveness, 	Boldness, 	DiploBalance, 	WarmongerHate, 	DenounceWillingness, 	DoFWillingness, Loyalty, 	Neediness, 	Forgiveness, 	Chattiness, Meanness, 	IconAtlas, 			PortraitIndex)
VALUES	('LEADER_PI_MORRIS', 	'TXT_KEY_LEADER_PI_MORRIS', 		'TXT_KEY_LEADER_PI_MORRIS_PEDIA', 	'TXT_KEY_CIVILOPEDIA_LEADERS_PI_MORRIS', 	'Newfoundland_Leader_Screen_Mod.xml',	6, 						4, 						8, 							8, 			6, 				6, 				6, 						4, 				3, 			7, 			3, 				4, 			6, 			'PI_NEWFOUNDLAND_ATLAS', 	1);
--------------------------------	
-- Leader_MajorCivApproachBiases
--------------------------------						
INSERT INTO Leader_MajorCivApproachBiases 
		(LeaderType, 				MajorCivApproachType, 				Bias)
VALUES	('LEADER_PI_MORRIS', 	'MAJOR_CIV_APPROACH_WAR', 			5),
		('LEADER_PI_MORRIS', 	'MAJOR_CIV_APPROACH_HOSTILE', 		3),
		('LEADER_PI_MORRIS', 	'MAJOR_CIV_APPROACH_DECEPTIVE', 	2),
		('LEADER_PI_MORRIS', 	'MAJOR_CIV_APPROACH_GUARDED', 		6),
		('LEADER_PI_MORRIS', 	'MAJOR_CIV_APPROACH_AFRAID', 		6),
		('LEADER_PI_MORRIS', 	'MAJOR_CIV_APPROACH_FRIENDLY', 		8),
		('LEADER_PI_MORRIS', 	'MAJOR_CIV_APPROACH_NEUTRAL', 		5);
--------------------------------	
-- Leader_MinorCivApproachBiases
--------------------------------						
INSERT INTO Leader_MinorCivApproachBiases 
		(LeaderType, 				MinorCivApproachType, 				Bias)
VALUES	('LEADER_PI_MORRIS', 	'MINOR_CIV_APPROACH_IGNORE', 		2),
		('LEADER_PI_MORRIS', 	'MINOR_CIV_APPROACH_FRIENDLY', 		8),
		('LEADER_PI_MORRIS', 	'MINOR_CIV_APPROACH_PROTECTIVE', 	8),
		('LEADER_PI_MORRIS', 	'MINOR_CIV_APPROACH_CONQUEST', 		3),
		('LEADER_PI_MORRIS', 	'MINOR_CIV_APPROACH_BULLY', 		2);
--------------------------------	
-- Leader_Flavors
--------------------------------						
INSERT INTO Leader_Flavors 
		(LeaderType, 				FlavorType, 						Flavor)
VALUES	('LEADER_PI_MORRIS', 	'FLAVOR_OFFENSE', 					7),
		('LEADER_PI_MORRIS', 	'FLAVOR_DEFENSE', 					6),
		('LEADER_PI_MORRIS', 	'FLAVOR_CITY_DEFENSE', 				7),
		('LEADER_PI_MORRIS', 	'FLAVOR_MILITARY_TRAINING', 		6),
		('LEADER_PI_MORRIS', 	'FLAVOR_RECON', 					4),
		('LEADER_PI_MORRIS', 	'FLAVOR_RANGED', 					6),
		('LEADER_PI_MORRIS', 	'FLAVOR_MOBILE', 					4),
		('LEADER_PI_MORRIS', 	'FLAVOR_NAVAL', 					7),
		('LEADER_PI_MORRIS', 	'FLAVOR_NAVAL_RECON', 				6),
		('LEADER_PI_MORRIS', 	'FLAVOR_NAVAL_GROWTH', 				6),
		('LEADER_PI_MORRIS', 	'FLAVOR_NAVAL_TILE_IMPROVEMENT', 	9),
		('LEADER_PI_MORRIS', 	'FLAVOR_AIR', 						5),
		('LEADER_PI_MORRIS', 	'FLAVOR_EXPANSION', 				6),
		('LEADER_PI_MORRIS', 	'FLAVOR_GROWTH', 					6),
		('LEADER_PI_MORRIS', 	'FLAVOR_TILE_IMPROVEMENT', 			6),
		('LEADER_PI_MORRIS', 	'FLAVOR_INFRASTRUCTURE', 			8),
		('LEADER_PI_MORRIS', 	'FLAVOR_PRODUCTION', 				6),
		('LEADER_PI_MORRIS', 	'FLAVOR_GOLD', 						7),
		('LEADER_PI_MORRIS', 	'FLAVOR_SCIENCE', 					5),
		('LEADER_PI_MORRIS', 	'FLAVOR_CULTURE', 					4),
		('LEADER_PI_MORRIS', 	'FLAVOR_HAPPINESS', 				5),
		('LEADER_PI_MORRIS', 	'FLAVOR_GREAT_PEOPLE', 				5),
		('LEADER_PI_MORRIS', 	'FLAVOR_WONDER', 					3),
		('LEADER_PI_MORRIS', 	'FLAVOR_RELIGION', 					4),
		('LEADER_PI_MORRIS', 	'FLAVOR_DIPLOMACY', 				9),
		('LEADER_PI_MORRIS', 	'FLAVOR_SPACESHIP', 				1),
		('LEADER_PI_MORRIS', 	'FLAVOR_WATER_CONNECTION', 			7),
		('LEADER_PI_MORRIS', 	'FLAVOR_NUKE', 						2),
		('LEADER_PI_MORRIS', 	'FLAVOR_USE_NUKE', 					2),
		('LEADER_PI_MORRIS', 	'FLAVOR_ESPIONAGE', 				3),
		('LEADER_PI_MORRIS', 	'FLAVOR_AIRLIFT', 					6),
		('LEADER_PI_MORRIS', 	'FLAVOR_I_TRADE_DESTINATION', 		5),
		('LEADER_PI_MORRIS', 	'FLAVOR_I_TRADE_ORIGIN', 			5),
		('LEADER_PI_MORRIS', 	'FLAVOR_I_SEA_TRADE_ROUTE', 		5),
		('LEADER_PI_MORRIS', 	'FLAVOR_I_LAND_TRADE_ROUTE', 		5),
		('LEADER_PI_MORRIS', 	'FLAVOR_ARCHAEOLOGY', 				4),
		('LEADER_PI_MORRIS', 	'FLAVOR_AIR_CARRIER', 				5);
--------------------------------	
-- Leader_Traits
--------------------------------	
INSERT INTO Leader_Traits 
		(LeaderType, 				TraitType)
VALUES	('LEADER_PI_MORRIS', 	'TRAIT_PI_FAR_EAST_OF_THE_WEST');
--==========================================================================================================================	
-- TRAITS
--==========================================================================================================================	
-- Traits
--------------------------------	
INSERT INTO Traits 
		(Type, 						Description, 					ShortDescription)
VALUES	('TRAIT_PI_FAR_EAST_OF_THE_WEST', 		'TXT_KEY_TRAIT_PI_FAR_EAST_OF_THE_WEST', 		'TXT_KEY_TRAIT_PI_FAR_EAST_OF_THE_WEST_SHORT');	
--==========================================================================================================================	
-- PROMOTIONS
--==========================================================================================================================	
-- UnitPromotions
------------------------------
INSERT INTO UnitPromotions 
		(Type, 						Description, 						Help, 									Sound, 				CannotBeChosen, PortraitIndex,  IconAtlas, 			PediaType, 			PediaEntry)
VALUES	('PROMOTION_PI_CHEAP_EMBARKATION_EMBARKED',	'TXT_KEY_PROMOTION_PI_CHEAP_EMBARKATION_EMBARKED',	'TXT_KEY_PROMOTION_PI_CHEAP_EMBARKATION_EMBARKED_HELP',	'AS2D_IF_LEVELUP', 	1, 				59, 			'ABILITY_ATLAS', 	'PEDIA_ATTRIBUTES', 'TXT_KEY_PROMOTION_PI_CHEAP_EMBARKATION_EMBARKED'),
        ('PROMOTION_PI_CHEAP_EMBARKATION_DISEMBARKED',	'TXT_KEY_PROMOTION_PI_CHEAP_EMBARKATION_DISEMBARKED',	'TXT_KEY_PROMOTION_PI_CHEAP_EMBARKATION_DISEMBARKED_HELP',	'AS2D_IF_LEVELUP', 	1, 				59, 			'ABILITY_ATLAS', 	'PEDIA_ATTRIBUTES', 'TXT_KEY_PROMOTION_PI_CHEAP_EMBARKATION_DISEMBARKED');
--==========================================================================================================================	
-- UNITS
--==========================================================================================================================
-- Units
--------------------------------	
INSERT INTO Units 	
		(Type, 					Class,	PrereqTech,	Combat,		FaithCost,		RequiresFaithPurchaseEnabled, Cost,		Moves, 	CombatClass, Domain, DefaultUnitAI, Description, 					Civilopedia, 						Strategy, 								Help, 								MilitarySupport, MilitaryProduction, Pillage, ObsoleteTech, AdvancedStartCost, GoodyHutUpgradeUnitClass, CombatLimit, XPValueAttack, XPValueDefense, Conscription, UnitArtInfo, 				UnitFlagAtlas, 					UnitFlagIconOffset, PortraitIndex,	IconAtlas)
SELECT	'UNIT_PI_BLUE_PUTTEE', 	Class,	PrereqTech,	Combat,	FaithCost,	RequiresFaithPurchaseEnabled, Cost,	Moves, 	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_PI_BLUE_PUTTEE', 	'TXT_KEY_CIV5_PI_BLUE_PUTTEE_TEXT',	'TXT_KEY_UNIT_PI_BLUE_PUTTEE_STRATEGY',	'TXT_KEY_UNIT_PI_BLUE_PUTTEE_HELP',	MilitarySupport, MilitaryProduction, Pillage, ObsoleteTech, AdvancedStartCost, GoodyHutUpgradeUnitClass, CombatLimit, XPValueAttack, XPValueDefense, Conscription, 'ART_DEF_UNIT_PI_BLUE_PUTTEE', 	'PI_UNIT_FLAG_PUTTEE_ATLAS',	0,					3, 				'PI_NEWFOUNDLAND_ATLAS'
FROM Units WHERE Type = 'UNIT_GREAT_WAR_INFANTRY';
--------------------------------
-- UnitGameplay2DScripts
--------------------------------	
INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				SelectionSound, FirstSelectionSound)
SELECT	'UNIT_PI_BLUE_PUTTEE', 	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_GREAT_WAR_INFANTRY';	
--------------------------------
-- Unit_AITypes
--------------------------------	
INSERT INTO Unit_AITypes 	
		(UnitType, 				UnitAIType)
SELECT	'UNIT_PI_BLUE_PUTTEE', 	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_GREAT_WAR_INFANTRY';
--------------------------------
-- Unit_Flavors
--------------------------------	
INSERT INTO Unit_Flavors 	
		(UnitType, 				FlavorType, Flavor)
SELECT	'UNIT_PI_BLUE_PUTTEE', 	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_GREAT_WAR_INFANTRY';
--------------------------------
-- Unit_FreePromotions
--------------------------------	
INSERT INTO Unit_FreePromotions 
		(UnitType, 				PromotionType)
VALUES ('UNIT_PI_BLUE_PUTTEE', 	'PROMOTION_PI_CHEAP_EMBARKATION_DISEMBARKED'),
	   ('UNIT_PI_BLUE_PUTTEE', 	'PROMOTION_PI_CHEAP_EMBARKATION_EMBARKED'),
	   ('UNIT_PI_BLUE_PUTTEE', 	'PROMOTION_DEFENSIVE_EMBARKATION');
--------------------------------
-- Unit_ClassUpgrades
--------------------------------	
INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 				UnitClassType)
SELECT	'UNIT_PI_BLUE_PUTTEE',		UnitClassType
FROM Unit_ClassUpgrades WHERE UnitType = 'UNIT_GREAT_WAR_INFANTRY';
--==========================================================================================================================	
-- CIVILIZATIONS
--==========================================================================================================================	
-- Civilizations
--------------------------------		
INSERT INTO Civilizations 		
		(Type, 						Description,					ShortDescription, 					Adjective, 							Civilopedia,						CivilopediaTag,				DefaultPlayerColor,			ArtDefineTag, ArtStyleType, ArtStyleSuffix, ArtStylePrefix, IconAtlas, 			PortraitIndex, 	AlphaIconAtlas, 			SoundtrackTag, 	MapImage, 			DawnOfManQuote, 				DawnOfManImage)
SELECT	'CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CIV_PI_NEWFOUNDLAND_DESC', 	'TXT_KEY_CIV_PI_NEWFOUNDLAND_SHORT_DESC',	'TXT_KEY_CIV_PI_NEWFOUNDLAND_ADJECTIVE',	'TXT_KEY_CIV5_PI_NEWFOUNDLAND_TEXT_1', 	'TXT_KEY_CIV5_PI_NEWFOUNDLAND', 	'PLAYERCOLOR_PI_NEWFOUNDLAND',	ArtDefineTag, ArtStyleType, ArtStyleSuffix, ArtStylePrefix, 'PI_NEWFOUNDLAND_ATLAS', 	0, 				'PI_NEWFOUNDLAND_ALPHA_ATLAS', 	'England', 		'Newfoundland_Map.dds',	'TXT_KEY_CIV5_DAWN_NEWFOUNDLAND_TEXT',	'DOM_Morris.dds'
FROM Civilizations WHERE Type = 'CIVILIZATION_ENGLAND';
--------------------------------	
-- Civilization_CityNames
--------------------------------	
INSERT INTO Civilization_CityNames 
		(CivilizationType, 			CityName)
VALUES	('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_01'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_02'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_03'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_04'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_05'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_06'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_07'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_08'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_09'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_10'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_11'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_12'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_13'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_14'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_15'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_16'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_17'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_18'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_19'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_20'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_21'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_22'),	
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_23'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_24'),	
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_25'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_26'),	
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_CITY_NAME_PI_NEWFOUNDLAND_27');
--------------------------------	
-- Civilization_FreeBuildingClasses
--------------------------------			
INSERT INTO Civilization_FreeBuildingClasses 
		(CivilizationType, 			BuildingClassType)
SELECT	'CIVILIZATION_PI_NEWFOUNDLAND', 	BuildingClassType
FROM Civilization_FreeBuildingClasses WHERE CivilizationType = 'CIVILIZATION_ENGLAND';
--------------------------------	
-- Civilization_FreeTechs
--------------------------------		
INSERT INTO Civilization_FreeTechs 
		(CivilizationType, 			TechType)
SELECT	'CIVILIZATION_PI_NEWFOUNDLAND',	TechType
FROM Civilization_FreeTechs WHERE CivilizationType = 'CIVILIZATION_ENGLAND';
--------------------------------	
-- Civilization_FreeUnits
--------------------------------		
INSERT INTO Civilization_FreeUnits 
		(CivilizationType, 			UnitClassType, Count, UnitAIType)
SELECT	'CIVILIZATION_PI_NEWFOUNDLAND', 	UnitClassType, Count, UnitAIType
FROM Civilization_FreeUnits WHERE CivilizationType = 'CIVILIZATION_ENGLAND';
--------------------------------	
-- Civilization_Leaders
--------------------------------		
INSERT INTO Civilization_Leaders 
		(CivilizationType, 			LeaderheadType)
VALUES	('CIVILIZATION_PI_NEWFOUNDLAND', 	'LEADER_PI_MORRIS');
--------------------------------	
-- Civilization_BuildingClassOverrides 
--------------------------------		
INSERT INTO Civilization_BuildingClassOverrides 
		(CivilizationType, 			BuildingClassType, 		BuildingType)
VALUES	('CIVILIZATION_PI_NEWFOUNDLAND', 	'BUILDINGCLASS_SEAPORT',	'BUILDING_PI_FISHING_STAGE');
--------------------------------	
-- Civilization_UnitClassOverrides 
--------------------------------		
INSERT INTO Civilization_UnitClassOverrides 
		(CivilizationType, 			UnitClassType, 			UnitType)
VALUES	('CIVILIZATION_PI_NEWFOUNDLAND', 	'UNITCLASS_GREAT_WAR_INFANTRY',	'UNIT_PI_BLUE_PUTTEE');
--------------------------------	
-- Civilization_Religions
--------------------------------		
INSERT INTO Civilization_Religions 
		(CivilizationType, 			ReligionType)
VALUES	('CIVILIZATION_PI_NEWFOUNDLAND', 	'RELIGION_CHRISTIANITY');
--------------------------------	
-- Civilization_SpyNames
--------------------------------	
INSERT INTO Civilization_SpyNames 
		(CivilizationType, 			SpyName)
VALUES	('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_SPY_NAME_PI_NEWFOUNDLAND_0'),	
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_SPY_NAME_PI_NEWFOUNDLAND_1'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_SPY_NAME_PI_NEWFOUNDLAND_2'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_SPY_NAME_PI_NEWFOUNDLAND_3'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_SPY_NAME_PI_NEWFOUNDLAND_4'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_SPY_NAME_PI_NEWFOUNDLAND_5'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_SPY_NAME_PI_NEWFOUNDLAND_6'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_SPY_NAME_PI_NEWFOUNDLAND_7'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_SPY_NAME_PI_NEWFOUNDLAND_8'),
		('CIVILIZATION_PI_NEWFOUNDLAND', 	'TXT_KEY_SPY_NAME_PI_NEWFOUNDLAND_9');
---------------------------------
-- Civilization_Start_Along_Ocean
---------------------------------
INSERT INTO Civilization_Start_Along_Ocean
        (CivilizationType,    StartAlongOcean)
VALUES        ('CIVILIZATION_PI_NEWFOUNDLAND',    1);

---------------------------------
-- Civilization_Start_Place_First_Along_Ocean
---------------------------------
INSERT INTO Civilization_Start_Place_First_Along_Ocean
        (CivilizationType,    PlaceFirst)
VALUES        ('CIVILIZATION_PI_NEWFOUNDLAND',    1);

--==========================================
-- EVENTS AND DECISIONS
--==========================================
CREATE TABLE IF NOT EXISTS DecisionsAddin_Support(FileName);

INSERT INTO DecisionsAddin_Support (FileName) VALUES ('Newf_Decisions.lua');
--------------------------------------------
-- Expand the Railway
--------------------------------------------
------------------------------
-- Policies
------------------------------
INSERT INTO Policies
		(Type,		Description,	RouteGoldMaintenanceMod)
VALUES	('POLICY_DECISIONS_PI_RAILWAY',	'TXT_KEY_DECISIONS_PI_NEWFOUNDLAND_RAILWAY', -50);
--------------------------------------------
-- Wartime Nat'l Gov't
--------------------------------------------
------------------------------	
-- BuildingClasses
------------------------------	
INSERT INTO BuildingClasses 	
		(Type, 						 						DefaultBuilding, 								Description)
VALUES	('BUILDINGCLASS_PI_WAR_GOVT', 		'BUILDING_PI_WAR_GOVT',			'TXT_KEY_BUILDING_PI_FISHING_STAGE');
------------------------------
-- Buildings
------------------------------
INSERT INTO Buildings 
		(Type, Description, Cost, FaithCost, PrereqTech, BuildingClass, GreatWorkCount, Happiness)
VALUES	('BUILDING_PI_WAR_GOVT', 'TXT_KEY_BUILDING_PI_FISHING_STAGE', -1, -1, NULL, 'BUILDINGCLASS_PI_WAR_GOVT', -1, 5);
------------------------------
-- Policies
------------------------------
INSERT INTO Policies
		(Type,		Description)
VALUES	('POLICY_DECISIONS_PI_WAR_GOVT',	'TXT_KEY_DECISIONS_PI_NEWFOUNDLAND_WAR_GOVT');
--==========================================================================================================================
--==========================================================================================================================