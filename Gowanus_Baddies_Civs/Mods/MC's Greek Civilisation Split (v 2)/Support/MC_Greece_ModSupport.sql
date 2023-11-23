--=======================================================================================================================
-- BINGLES CIV IV TRAITS
--=======================================================================================================================
-- Leader_SharedTraits
------------------------------  
CREATE TABLE IF NOT EXISTS
    Leader_SharedTraits (
    LeaderType          text    REFERENCES Leaders(TYPE)        DEFAULT NULL,
    TraitOne            text    REFERENCES Policies(TYPE)       DEFAULT NULL,
    TraitTwo            text    REFERENCES Policies(TYPE)       DEFAULT NULL);
 
INSERT OR REPLACE INTO Leader_SharedTraits
			(LeaderType,							TraitOne,					TraitTwo)
SELECT		('LEADER_MC_PERICLES'),		            ('POLICY_INVENTIVE_X'),		('POLICY_DIPLOMATIC_X')
WHERE EXISTS (SELECT Type FROM Policies WHERE Type = 'POLICY_PHILOSOPHICAL_X');

INSERT OR REPLACE INTO Leader_SharedTraits
			(LeaderType,									          TraitOne,					 TraitTwo)
SELECT		('LEADER_MC_LEONIDAS'),		            ('POLICY_AGGRESSIVE_X'),	  ('POLICY_PROTECTIVE_X')
WHERE EXISTS (SELECT Type FROM Policies WHERE Type = 'POLICY_PHILOSOPHICAL_X');

INSERT OR REPLACE INTO Leader_SharedTraits
			(LeaderType,									          TraitOne,					 TraitTwo)
SELECT		('LEADER_MC_ATTALUS'),		            ('POLICY_PHILOSOPHICAL_X'),	  ('POLICY_INDUSTRIOUS_X')
WHERE EXISTS (SELECT Type FROM Policies WHERE Type = 'POLICY_PHILOSOPHICAL_X');
 
------------------------------  
-- Leaders
------------------------------  
UPDATE Leaders
SET Description = (CASE WHEN EXISTS(SELECT * FROM Policies WHERE TYPE = 'POLICY_PHILOSOPHICAL_X' )
THEN 'Pericles [ICON_SCIENCE][ICON_INFLUENCE]'
ELSE 'TXT_KEY_LEADER_MC_PERICLES_DESC' END)
WHERE TYPE = 'LEADER_MC_PERICLES';
 
UPDATE Leaders
SET Description = (CASE WHEN EXISTS(SELECT * FROM Policies WHERE TYPE = 'POLICY_PHILOSOPHICAL_X' )
THEN 'Leonidas [ICON_WAR][ICON_STRENGTH]'
ELSE 'TXT_KEY_LEADER_MC_LEONIDAS_DESC' END)
WHERE TYPE = 'LEADER_MC_LEONIDAS';
 
UPDATE Leaders
SET Description = (CASE WHEN EXISTS(SELECT * FROM Policies WHERE TYPE = 'POLICY_PHILOSOPHICAL_X' )
THEN 'Attalus I [ICON_GREAT_PEOPLE][ICON_PRODUCTION]'
ELSE 'TXT_KEY_LEADER_MC_ATTALUS_DESC' END)
WHERE TYPE = 'LEADER_MC_ATTALUS';
--==========================================================================================================================
-- ENLIGHTENMENT ERA
--==========================================================================================================================
------------------------------
-- Unit_ClassUpgrades
------------------------------
UPDATE Unit_ClassUpgrades
SET UnitClassType = 'UNITCLASS_EE_CARRACK'
WHERE UnitType ='UNIT_MC_ATHENIAN_ASSAULT_TRIERES'
AND EXISTS (SELECT * FROM Units WHERE Class = 'UNITCLASS_EE_CARRACK');
 
--==========================================================================================================================
-- JFD USER SETTINGS
--==========================================================================================================================
-- JFD_GlobalUserSettings
-------------------------------------
CREATE TABLE IF NOT EXISTS
JFD_GlobalUserSettings (
    TYPE                                            text                                        DEFAULT NULL,
    VALUE                                           INTEGER                                     DEFAULT 1);
--==========================================================================================================================
-- Events & Decisions
--==========================================================================================================================
-- DecisionsAddin_Support
------------------------------
CREATE TABLE IF NOT EXISTS DecisionsAddin_Support(FileName);
INSERT INTO DecisionsAddin_Support (FileName) VALUES ('MC_Greece_Decisions.lua');

CREATE TABLE IF NOT EXISTS EventsAddin_Support(FileName);
INSERT INTO EventsAddin_Support (FileName) VALUES ('MC_Greece_Events.lua');

CREATE TABLE IF NOT EXISTS Building_YieldFromCityStates (
  BuildingType text,
  YieldType text,
  Yield integer default 0,
  IncludeFriendly boolean default false
);
--===============================================================================================	
-- WONDER YIELD
--===============================================================================================	
INSERT INTO Building_YieldFromCityStates 
		(BuildingType,						YieldType,			Yield)
VALUES	('BUILDING_DECISIONS_MC_ACADEMY',	'YIELD_SCIENCE',	1);
--===============================================================================================	
-- UNITS
--===============================================================================================

INSERT INTO Units 	
			  (Type, 							   Class,	          PrereqTech,			 Cost,   Moves,	 CivilianAttackPriority, Special,	Domain,		DefaultUnitAI, Description,								Civilopedia, Strategy, ShowInPedia,	AdvancedStartCost,  WorkRate, CombatLimit, GoldenAgeTurns, UnitArtInfoEraVariation, UnitArtInfo, UnitFlagIconOffset,   UnitFlagAtlas, PortraitIndex, MoveRate, IconAtlas)
SELECT		  ('UNIT_MC_GREECE_DECISION_DUMMY'),   Class,	('TECH_AGRICULTURE'),	         Cost,   Moves,	 CivilianAttackPriority, Special,	Domain,		DefaultUnitAI, Description,								Civilopedia, Strategy, 	         0, AdvancedStartCost,  WorkRate, CombatLimit, GoldenAgeTurns, UnitArtInfoEraVariation, UnitArtInfo, UnitFlagIconOffset,   UnitFlagAtlas, PortraitIndex, MoveRate, IconAtlas
FROM Units WHERE (Type = 'UNIT_ARTIST') AND EXISTS (SELECT Type FROM Buildings WHERE Type = 'BUILDING_DECISIONS_THAIALPHABET');

INSERT INTO Unit_UniqueNames 
			(UnitType, 							                               UniqueName,							  GreatWorkType)
SELECT		('UNIT_MC_GREECE_DECISION_DUMMY'), 	('TXT_KEY_UNIT_MC_GREECE_DECISION_DUMMY'),	 ('GREAT_WORK_MC_GREECE_DECISION_DUMMY')
WHERE EXISTS (SELECT Type FROM Buildings WHERE Type = 'BUILDING_DECISIONS_THAIALPHABET');

INSERT INTO Civilization_UnitClassOverrides 
		(CivilizationType, 					           UnitClassType, 			                    UnitType)
SELECT	('CIVILIZATION_BARBARIAN'), 			('UNITCLASS_ARTIST'),		('UNIT_MC_GREECE_DECISION_DUMMY')
WHERE EXISTS (SELECT Type FROM Buildings WHERE Type = 'BUILDING_DECISIONS_THAIALPHABET');

INSERT INTO GreatWorks 
			(Type, 										  GreatWorkClassType,		                                     Description,						             Audio,			              Image)
SELECT		('GREAT_WORK_MC_GREECE_DECISION_DUMMY'), 	  ('GREAT_WORK_ART'),		 ('TXT_KEY_GREAT_WORK_MC_GREECE_DECISION_DUMMY'),		     ('AS2D_GREAT_ARTIST_ARTWORK'), 	('gw_mc_dying_gaul.dds')
WHERE EXISTS (SELECT Type FROM Buildings WHERE Type = 'BUILDING_DECISIONS_THAIALPHABET');

CREATE TRIGGER MCEventDyingGaul
AFTER INSERT ON Buildings WHEN 'BUILDING_DECISIONS_THAIALPHABET' = NEW.Type
BEGIN

	INSERT INTO Units 	
				  (Type, 							   Class,	          PrereqTech,			 Cost,   Moves,	 CivilianAttackPriority, Special,	Domain,		DefaultUnitAI, Description,								Civilopedia, Strategy, ShowInPedia,	AdvancedStartCost,  WorkRate, CombatLimit, GoldenAgeTurns, UnitArtInfoEraVariation, UnitArtInfo, UnitFlagIconOffset,   UnitFlagAtlas, PortraitIndex, MoveRate, IconAtlas)
	SELECT		  ('UNIT_MC_GREECE_DECISION_DUMMY'),   Class,	('TECH_AGRICULTURE'),	         Cost,   Moves,	 CivilianAttackPriority, Special,	Domain,		DefaultUnitAI, Description,								Civilopedia, Strategy, 	         0, AdvancedStartCost,  WorkRate, CombatLimit, GoldenAgeTurns, UnitArtInfoEraVariation, UnitArtInfo, UnitFlagIconOffset,   UnitFlagAtlas, PortraitIndex, MoveRate, IconAtlas
	FROM Units WHERE (Type = 'UNIT_ARTIST') AND EXISTS (SELECT Type FROM Buildings WHERE Type = 'BUILDING_DECISIONS_THAIALPHABET');

	INSERT INTO Unit_UniqueNames 
				(UnitType, 							                               UniqueName,							  GreatWorkType)
	SELECT		('UNIT_MC_GREECE_DECISION_DUMMY'), 	('TXT_KEY_UNIT_MC_GREECE_DECISION_DUMMY'),	 ('GREAT_WORK_MC_GREECE_DECISION_DUMMY')
	WHERE EXISTS (SELECT Type FROM Buildings WHERE Type = 'BUILDING_DECISIONS_THAIALPHABET');

	INSERT INTO Civilization_UnitClassOverrides 
			(CivilizationType, 					           UnitClassType, 			                    UnitType)
	SELECT	('CIVILIZATION_BARBARIAN'), 			('UNITCLASS_ARTIST'),		('UNIT_MC_GREECE_DECISION_DUMMY')
	WHERE EXISTS (SELECT Type FROM Buildings WHERE Type = 'BUILDING_DECISIONS_THAIALPHABET');

	INSERT INTO GreatWorks 
				(Type, 										  GreatWorkClassType,		                                     Description,						             Audio,			              Image)
	SELECT		('GREAT_WORK_MC_GREECE_DECISION_DUMMY'), 	  ('GREAT_WORK_ART'),		 ('TXT_KEY_GREAT_WORK_MC_GREECE_DECISION_DUMMY'),		     ('AS2D_GREAT_ARTIST_ARTWORK'), 	('gw_mc_dying_gaul.dds')
	WHERE EXISTS (SELECT Type FROM Buildings WHERE Type = 'BUILDING_DECISIONS_THAIALPHABET');

END;
--===============================================================================================	
-- BUILDINGS
--===============================================================================================
-- Buildings: Invisible
------------------------------	
INSERT INTO Buildings
			(Type, 												BuildingClass, 											Description,													GreatWorkCount,	Cost,	FaithCost,	PrereqTech, 	NeverCapture)
VALUES		('BUILDING_DECISIONS_ATHENIANTREASURY', 			'BUILDINGCLASS_DECISIONS_ATHENIANTREASURY',				'TXT_KEY_DECISIONS_ATHENIANTREASURY',					-1, 			-1,   		-1,		null,			1);

INSERT INTO BuildingClasses 
			(Type, 			DefaultBuilding,	Description)
SELECT 		BuildingClass,	Type,				Description
FROM Buildings WHERE (Type = 'BUILDING_DECISIONS_ATHENIANTREASURY');
--===============================================================================================
-- Building_YieldChanges
--===============================================================================================
INSERT INTO Building_YieldChanges
			(BuildingType, 							YieldType, 			Yield)
VALUES		('BUILDING_DECISIONS_ATHENIANTREASURY',	'YIELD_GOLD',		2);
--===============================================================================================
-- Policies
--===============================================================================================
INSERT INTO Policies
		(Type, 										Description) 
SELECT 	'POLICY_DECISIONS_ATHENIANTREASURY', 		'TXT_KEY_DECISIONS_ATHENIANTREASURY'
WHERE EXISTS (SELECT * FROM JFD_GlobalUserSettings WHERE Type = 'JFD_RTP_CLAIMS_CORE' AND Value = 1);
------------------------------------------------------------
-- Policy_JFD_ClaimCauses
------------------------------------------------------------
CREATE TABLE IF NOT EXISTS 
	Policy_JFD_ClaimCauses (
	PolicyType  			text 		REFERENCES Policies(Type) 		default null,
	CauseIncrease			integer		default 0);	
------------------------------------------------------------
------------------------------------------------------------
INSERT INTO Policy_JFD_ClaimCauses
		(PolicyType,							CauseIncrease)
SELECT	'POLICY_DECISIONS_ATHENIANTREASURY',	1
WHERE EXISTS (SELECT * FROM JFD_GlobalUserSettings WHERE Type = 'JFD_RTP_CLAIMS_CORE' AND Value = 1);

INSERT INTO Policies 
		(Type,														                 Description,								              Civilopedia,                                           Help,	   WonderProductionModifier,  GridX,	GridY,	PortraitIndex,			 IconAtlas,		   IconAtlasAchieved)
VALUES	('POLICY_MC_DYING_GAUL_DECISION_DUMMY',			    'TXT_KEY_POLICY_MC_DYING_GAUL_DUMMY',			    'TXT_KEY_POLICY_MC_DYING_GAUL_DUMMY_TEXT',		'TXT_KEY_POLICY_MC_DYING_GAUL_DUMMY_HELP',	                         15,   1000,	 1000,		       47,		'POLICY_ATLAS',			'POLICY_A_ATLAS');


--===============================================================================================
-- Language_en_US
--===============================================================================================

INSERT OR REPLACE INTO Language_en_US (Tag, Text)
SELECT	'TXT_KEY_DECISIONS_ATHENIANTREASURY_DESC',
		'{1_Capital} as the greatest city in the Delian League is surely the safest place for our funds; why not move the treasury there for security? Such a move would also have the side effect of giving us much greater control over our allies, effectively establishing an Athenian empire; but they don’t need to know that, do they?[NEWLINE]
		[NEWLINE]Requirement/Restrictions:
		[NEWLINE][ICON_BULLET]Player must be Athens
		[NEWLINE][ICON_BULLET]Player must have a Gymnasium in one of their cities
		[NEWLINE][ICON_BULLET]Must be allied with at least 4 City-States
		[NEWLINE][ICON_BULLET]May only be enacted once per game
		[NEWLINE]Costs:
		[NEWLINE][ICON_BULLET]-15 [ICON_INFLUENCE] Influence with all allied City-States
		[NEWLINE][ICON_BULLET]1 {2_Resource}
		[NEWLINE]Rewards:
		[NEWLINE][ICON_BULLET]{3_Gold} [ICON GOLD] Gold
		[NEWLINE][ICON_BULLET][ICON_JFD_CLAIM_MEDIUM] Claims are stronger with befriended City-States'
WHERE EXISTS (SELECT * FROM JFD_GlobalUserSettings WHERE Type = 'JFD_RTP_CLAIMS_CORE' AND Value = 1);

INSERT OR REPLACE INTO Language_en_US (Tag, Text)
SELECT	'TXT_KEY_DECISIONS_ATHENIANTREASURY_ENACTED_DESC',
		'{1_Capital} as the greatest city in the Delian League is surely the safest place for our funds; why not move the treasury there for security? Such a move would also have the side effect of giving us much greater control over our allies, effectively establishing an Athenian empire; but they don’t need to know that, do they?[NEWLINE]
		[NEWLINE]Rewards:
		[NEWLINE][ICON_BULLET][ICON GOLD] Gold
		[NEWLINE][ICON_BULLET][ICON_JFD_CLAIM_MEDIUM] Claims are stronger with befriended City-States'
WHERE EXISTS (SELECT * FROM JFD_GlobalUserSettings WHERE Type = 'JFD_RTP_CLAIMS_CORE' AND Value = 1);
--==========================================================================================================================
-- JFD CULTURAL DIVERSITY
--==========================================================================================================================
-- Civilization_JFD_CultureTypes
------------------------------  
CREATE TABLE IF NOT EXISTS 
Civilization_JFD_CultureTypes(
	CivilizationType 							text 	REFERENCES Civilizations(Type) 			default null,
	CultureType 								text											default null,
	ArtDefineTag								text											default	null,
	DefeatScreenEarlyTag						text											default	null,
	DefeatScreenMidTag							text											default	null,
	DefeatScreenLateTag							text											default	null,
	IdealsTag									text											default	null,
	SplashScreenTag								text											default	null,
	SoundtrackTag								text											default	null,
	UnitDialogueTag								text											default null);
     
INSERT INTO Civilization_JFD_CultureTypes
        (CivilizationType,              ArtDefineTag, CultureType, IdealsTag, SplashScreenTag, SoundtrackTag, UnitDialogueTag)
SELECT  'CIVILIZATION_MC_ATHENS',		ArtDefineTag, CultureType, IdealsTag, SplashScreenTag, SoundtrackTag, UnitDialogueTag
FROM Civilization_JFD_CultureTypes WHERE CivilizationType = 'CIVILIZATION_GREECE';

INSERT INTO Civilization_JFD_CultureTypes
        (CivilizationType,              ArtDefineTag, CultureType, IdealsTag, SplashScreenTag, SoundtrackTag, UnitDialogueTag)
SELECT  'CIVILIZATION_MC_SPARTA',       ArtDefineTag, CultureType, IdealsTag, SplashScreenTag, SoundtrackTag, UnitDialogueTag
FROM Civilization_JFD_CultureTypes WHERE CivilizationType = 'CIVILIZATION_GREECE';

INSERT INTO Civilization_JFD_CultureTypes
        (CivilizationType,              ArtDefineTag, CultureType, IdealsTag, SplashScreenTag, SoundtrackTag, UnitDialogueTag)
SELECT  'CIVILIZATION_MC_PERGAMON',     ArtDefineTag, CultureType, IdealsTag, SplashScreenTag, SoundtrackTag, UnitDialogueTag
FROM Civilization_JFD_CultureTypes WHERE CivilizationType = 'CIVILIZATION_GREECE';

INSERT INTO Civilization_JFD_CultureTypes
        (CivilizationType,              ArtDefineTag, CultureType, IdealsTag, SplashScreenTag, SoundtrackTag, UnitDialogueTag)
SELECT  'CIVILIZATION_MC_MACEDON',      ArtDefineTag, CultureType, IdealsTag, SplashScreenTag, SoundtrackTag, UnitDialogueTag
FROM Civilization_JFD_CultureTypes WHERE CivilizationType = 'CIVILIZATION_GREECE';
 
------------------------------  
-- Civilizations
------------------------------  
UPDATE Civilizations
SET SoundtrackTag = 'JFD_Mediterranean'
WHERE TYPE = 'CIVILIZATION_MC_ATHENS'
AND EXISTS (SELECT * FROM Civilization_JFD_CultureTypes WHERE SoundtrackTag = 'JFD_Mediterranean')
AND EXISTS (SELECT * FROM JFD_GlobalUserSettings WHERE TYPE = 'JFD_CULDIV_SOUNDTRACK_ADDON' AND VALUE = 1);
 
UPDATE Civilizations
SET SoundtrackTag = 'JFD_Mediterranean'
WHERE TYPE = 'CIVILIZATION_MC_SPARTA'
AND EXISTS (SELECT * FROM Civilization_JFD_CultureTypes WHERE SoundtrackTag = 'JFD_Mediterranean')
AND EXISTS (SELECT * FROM JFD_GlobalUserSettings WHERE TYPE = 'JFD_CULDIV_SOUNDTRACK_ADDON' AND VALUE = 1);
 
UPDATE Civilizations
SET SoundtrackTag = 'JFD_Mediterranean'
WHERE TYPE = 'CIVILIZATION_MC_PERGAMON'
AND EXISTS (SELECT * FROM Civilization_JFD_CultureTypes WHERE SoundtrackTag = 'JFD_Mediterranean')
AND EXISTS (SELECT * FROM JFD_GlobalUserSettings WHERE TYPE = 'JFD_CULDIV_SOUNDTRACK_ADDON' AND VALUE = 1);
 
UPDATE Civilizations
SET SoundtrackTag = 'JFD_Mediterranean'
WHERE TYPE = 'CIVILIZATION_MC_MACEDON'
AND EXISTS (SELECT * FROM Civilization_JFD_CultureTypes WHERE SoundtrackTag = 'JFD_Mediterranean')
AND EXISTS (SELECT * FROM JFD_GlobalUserSettings WHERE TYPE = 'JFD_CULDIV_SOUNDTRACK_ADDON' AND VALUE = 1);
 
 -------------------------------------
-- MinorCivilization_JFD_CultureTypes
-------------------------------------  
CREATE TABLE IF NOT EXISTS
MinorCivilization_JFD_CultureTypes (
    MinorCivilizationType                       text    REFERENCES MinorCivilizations(TYPE)      DEFAULT NULL,
    CultureType                                 text											 DEFAULT NULL);
     
INSERT INTO MinorCivilization_JFD_CultureTypes
        (MinorCivilizationType,		CultureType)
VALUES  ('MINOR_CIV_MC_CORINTH',	'JFD_Classical'),
		('MINOR_CIV_MC_DELPHI',		'JFD_Classical'),
		('MINOR_CIV_MC_EPHESUS',	'JFD_Classical'),
		('MINOR_CIV_MC_EPIDAUROS',	'JFD_Classical'),
		('MINOR_CIV_MC_MILETUS',	'JFD_Classical'),
		('MINOR_CIV_MC_OLYMPIA',	'JFD_Classical'),
		('MINOR_CIV_MC_RODOS',		'JFD_Classical'),
		('MINOR_CIV_MC_THEBES',		'JFD_Classical');
--==========================================================================================================================
-- JFD's Cities in Development
--==========================================================================================================================
-- Civilization_JFD_ColonialCityNames
------------------------------  
CREATE TABLE IF NOT EXISTS
Civilization_JFD_ColonialCityNames (
    CivilizationType                            text    REFERENCES Civilizations(TYPE)      DEFAULT NULL,
    ColonyName                                  text                                        DEFAULT NULL,
    LinguisticType                              text                                        DEFAULT NULL,
    CultureType                                 text                                        DEFAULT NULL);
 
DELETE FROM Civilization_JFD_ColonialCityNames WHERE CivilizationType = 'CIVILIZATION_GREECE';
INSERT OR REPLACE INTO Civilization_JFD_ColonialCityNames
            (CivilizationType,							ColonyName,                              LinguisticType)
VALUES      ('CIVILIZATION_MC_ATHENS',					NULL,                                    'JFD_Hellenic'),
            ('CIVILIZATION_MC_SPARTA',					NULL,                                    'JFD_Hellenic'),
            ('CIVILIZATION_MC_PERGAMON',				NULL,                                    'JFD_Hellenic'),
            ('CIVILIZATION_MC_MACEDON',					'TXT_KEY_MC_MACEDON_ALEXANDRIA_01',      NULL),
			('CIVILIZATION_MC_MACEDON',					'TXT_KEY_MC_MACEDON_ALEXANDRIA_02',      NULL),
			('CIVILIZATION_MC_MACEDON',					'TXT_KEY_MC_MACEDON_ALEXANDRIA_03',      NULL),
			('CIVILIZATION_MC_MACEDON',					'TXT_KEY_MC_MACEDON_ALEXANDRIA_04',      NULL),
			('CIVILIZATION_MC_MACEDON',					'TXT_KEY_MC_MACEDON_ALEXANDRIA_05',      NULL),
			('CIVILIZATION_MC_MACEDON',					'TXT_KEY_MC_MACEDON_ALEXANDRIA_06',      NULL),
			('CIVILIZATION_MC_MACEDON',					'TXT_KEY_MC_MACEDON_ALEXANDRIA_07',      NULL),
			('CIVILIZATION_MC_MACEDON',					'TXT_KEY_MC_MACEDON_ALEXANDRIA_08',      NULL),
			('CIVILIZATION_MC_MACEDON',					'TXT_KEY_MC_MACEDON_ALEXANDRIA_09',      NULL),
			('CIVILIZATION_MC_MACEDON',					'TXT_KEY_MC_MACEDON_ALEXANDRIA_10',      NULL),
			('CIVILIZATION_MC_MACEDON',					'TXT_KEY_MC_MACEDON_ALEXANDRIA_11',      NULL),
			('CIVILIZATION_MC_MACEDON',					'TXT_KEY_MC_MACEDON_ALEXANDRIA_12',      NULL),
			('CIVILIZATION_MC_MACEDON',					'TXT_KEY_MC_MACEDON_ALEXANDRIA_13',      NULL),
			('CIVILIZATION_MC_MACEDON',					'TXT_KEY_MC_MACEDON_ALEXANDRIA_14',      NULL),
			('CIVILIZATION_MC_MACEDON',					'TXT_KEY_MC_MACEDON_ALEXANDRIA_15',      NULL),
			('CIVILIZATION_MC_MACEDON',					NULL,                                    'JFD_Hellenic');
--==========================================================  
-- JFD's CiD: Slavery
--==========================================================    
-- Flavors
------------------------------------------------------------    
INSERT OR REPLACE INTO Flavors
        (TYPE)
VALUES  ('FLAVOR_JFD_SLAVERY');
------------------------------------------------------------
-- Leader_Flavors
------------------------------------------------------------    
--A value of 0-10 may be set. This value determines the proclivity a civ has toward enslaving a captured city and toward spending Slavery on Units.
INSERT INTO Leader_Flavors
        (LeaderType,                FlavorType,             Flavor)
VALUES  ('LEADER_MC_PERICLES',		'FLAVOR_JFD_SLAVERY',   6),
        ('LEADER_MC_LEONIDAS',      'FLAVOR_JFD_SLAVERY',   8),
        ('LEADER_MC_ATTALUS',       'FLAVOR_JFD_SLAVERY',   6);
--==========================================================================================================================
-- TOMATEKH HISTORICAL RELIGIONS
--==========================================================================================================================
-- Civilization_Religions
------------------------------
UPDATE Civilization_Religions
SET ReligionType = 'RELIGION_HELLENISM'
WHERE CivilizationType = 'CIVILIZATION_MC_ATHENS'
AND EXISTS (SELECT * FROM Religions WHERE Type = 'RELIGION_HELLENISM');

UPDATE Civilization_Religions
SET ReligionType = 'RELIGION_HELLENISM'
WHERE CivilizationType = 'CIVILIZATION_MC_SPARTA'
AND EXISTS (SELECT * FROM Religions WHERE Type = 'RELIGION_HELLENISM');

UPDATE Civilization_Religions
SET ReligionType = 'RELIGION_HELLENISM'
WHERE CivilizationType = 'CIVILIZATION_MC_PERGAMON'
AND EXISTS (SELECT * FROM Religions WHERE Type = 'RELIGION_HELLENISM');

UPDATE Civilization_Religions
SET ReligionType = 'RELIGION_HELLENISM'
WHERE CivilizationType = 'CIVILIZATION_MC_MACEDON'
AND EXISTS (SELECT * FROM Religions WHERE Type = 'RELIGION_HELLENISM');
--==========================================================================================================================
-- HAZEL MAP LABELS
--==========================================================================================================================
-- ML_CivCultures
------------------------------  
CREATE TABLE IF NOT EXISTS ML_CivCultures (ID INTEGER PRIMARY KEY AUTOINCREMENT, CivType TEXT, CultureType TEXT, CultureEra TEXT DEFAULT 'ANY');
INSERT INTO ML_CivCultures
            (CivType,                       CultureType,			CultureEra)
VALUES      ('CIVILIZATION_MC_ATHENS',      'MEDITERRANEAN',		'ANY'),
            ('CIVILIZATION_MC_SPARTA',      'MEDITERRANEAN',		'ANY'),
            ('CIVILIZATION_MC_PERGAMON',    'MEDITERRANEAN',		'ANY'),
            ('CIVILIZATION_MC_MACEDON',	    'MEDITERRANEAN',		'ANY');
--==========================================================================================================================  
-- JFD's and Pouakai's MERCENARIES
--==========================================================================================================================
-- Flavors
------------------------------------------------------------    
INSERT OR REPLACE INTO Flavors
        (TYPE)
VALUES  ('FLAVOR_JFD_MERCENARY');
------------------------------------------------------------
-- Leader_Flavors
------------------------------------------------------------    
--A value of 1-10 may be set. This value determines the likelihood that a leader will take out Mercenary Contracts (provided they have the funds).
--A value of 10 means this civilization will always take a Contract if available. A value of 0 means this civilization will never take out a contract.
INSERT OR REPLACE INTO Leader_Flavors
        (LeaderType,                    FlavorType,                 Flavor)
VALUES  ('LEADER_MC_PERICLES',          'FLAVOR_JFD_MERCENARY',     5),
        ('LEADER_MC_LEONIDAS',          'FLAVOR_JFD_MERCENARY',     4),
        ('LEADER_MC_ATTALUS',			'FLAVOR_JFD_MERCENARY',     7);
--==========================================================================================================================    
-- JFD's Rise to Power
--==========================================================================================================================
--==========================================================  
-- JFD's RtP: Piety
--==========================================================
-- Flavors
------------------------------------------------------------    
INSERT OR REPLACE INTO Flavors
        (TYPE)
VALUES  ('FLAVOR_JFD_RELIGIOUS_INTOLERANCE');
------------------------------------------------------------
-- Leader_Flavors
------------------------------------------------------------    
--A value of 1-12 may be set. This value determines the diplomatic penalty/bonus with civilizations of a different/same state religion
--A value higher than 9 means this civilization will never secularise. A value of 0 means this civilization has no interest in State Religion.
INSERT INTO Leader_Flavors
            (LeaderType,					FlavorType,                             Flavor)
VALUES      ('LEADER_MC_PERICLES',			'FLAVOR_JFD_RELIGIOUS_INTOLERANCE',     5),
            ('LEADER_MC_LEONIDAS',			'FLAVOR_JFD_RELIGIOUS_INTOLERANCE',     5),
            ('LEADER_MC_ATTALUS',			'FLAVOR_JFD_RELIGIOUS_INTOLERANCE',     5);
--==========================================================  
-- JFD's RtP: Prosperity
--==========================================================
-- Civilization_JFD_Currencies
------------------------------------------------------------
--CREATE TABLE IF NOT EXISTS
--    Civilization_JFD_Currencies (
--    CivilizationType                text        REFERENCES Civilizations(TYPE)  DEFAULT NULL,
--    CurrencyType                    text                                        DEFAULT NULL);
-- 
--INSERT INTO Civilization_JFD_Currencies
--        (CivilizationType,                  CurrencyType)
--VALUES    ( 'CIVILIZATION_MC_SERBIA',         'CURRENCY_JFD_DINAR');
--==========================================================  
-- JFD's RtP: Sovereignty
--==========================================================
------------------------------------------------------------    
-- Civilization_JFD_Governments
------------------------------------------------------------
CREATE TABLE IF NOT EXISTS
    Civilization_JFD_Governments (
    CivilizationType                text        REFERENCES Civilizations(TYPE)                  DEFAULT NULL,
    CultureType                     text                                                        DEFAULT NULL,
    LegislatureName                 text                                                        DEFAULT NULL,
    OfficeTitle                     text                                                        DEFAULT NULL,
    GovernmentType                  text                                                        DEFAULT NULL,
    Weight                          INTEGER                                                     DEFAULT 0);
 
INSERT INTO Civilization_JFD_Governments
        (CivilizationType,          LegislatureName, OfficeTitle, GovernmentType, Weight)
SELECT  'CIVILIZATION_MC_ATHENS',   LegislatureName, OfficeTitle, GovernmentType, Weight
FROM Civilization_JFD_Governments WHERE CivilizationType = 'CIVILIZATION_GREECE';

INSERT INTO Civilization_JFD_Governments
        (CivilizationType,          LegislatureName, OfficeTitle, GovernmentType, Weight)
SELECT  'CIVILIZATION_MC_SPARTA',   LegislatureName, OfficeTitle, GovernmentType, Weight
FROM Civilization_JFD_Governments WHERE CivilizationType = 'CIVILIZATION_GREECE';

INSERT INTO Civilization_JFD_Governments
        (CivilizationType,           LegislatureName, OfficeTitle, GovernmentType, Weight)
SELECT  'CIVILIZATION_MC_PERGAMON',  LegislatureName, OfficeTitle, GovernmentType, Weight
FROM Civilization_JFD_Governments WHERE CivilizationType = 'CIVILIZATION_GREECE';

INSERT INTO Civilization_JFD_Governments
        (CivilizationType,           LegislatureName, OfficeTitle, GovernmentType, Weight)
SELECT  'CIVILIZATION_MC_MACEDON',   LegislatureName, OfficeTitle, GovernmentType, Weight
FROM Civilization_JFD_Governments WHERE CivilizationType = 'CIVILIZATION_GREECE';

------------------------------------------------------------
-- Civilization_JFD_Politics
------------------------------------------------------------
CREATE TABLE IF NOT EXISTS
    Civilization_JFD_Politics (
    CivilizationType                    text        REFERENCES Civilizations(TYPE)                  DEFAULT NULL,
    PoliticsType                        text                                                        DEFAULT NULL,
    UniqueName                          text                                                        DEFAULT NULL);
 
INSERT INTO Civilization_JFD_Politics
        (CivilizationType,           PoliticsType, UniqueName)
SELECT  ('CIVILIZATION_MC_ATHENS'),  PoliticsType, UniqueName
FROM Civilization_JFD_Politics WHERE CivilizationType = 'CIVILIZATION_GREECE';

INSERT INTO Civilization_JFD_Politics
        (CivilizationType,            PoliticsType, UniqueName)
SELECT  ('CIVILIZATION_MC_SPARTA'),   PoliticsType, UniqueName
FROM Civilization_JFD_Politics WHERE CivilizationType = 'CIVILIZATION_GREECE';

INSERT INTO Civilization_JFD_Politics
        (CivilizationType,             PoliticsType, UniqueName)
SELECT  ('CIVILIZATION_MC_PERGAMON'),  PoliticsType, UniqueName
FROM Civilization_JFD_Politics WHERE CivilizationType = 'CIVILIZATION_GREECE';

INSERT INTO Civilization_JFD_Politics
        (CivilizationType,            PoliticsType, UniqueName)
SELECT  ('CIVILIZATION_MC_MACEDON'),  PoliticsType, UniqueName
FROM Civilization_JFD_Politics WHERE CivilizationType = 'CIVILIZATION_GREECE';

------------------------------------------------------------
-- Flavors
------------------------------------------------------------    
INSERT OR REPLACE INTO Flavors
        (TYPE)
VALUES  ('FLAVOR_JFD_REFORM_GOVERNMENT'),
        ('FLAVOR_JFD_REFORM_CULTURE'),
        ('FLAVOR_JFD_REFORM_ECONOMIC'),
        ('FLAVOR_JFD_REFORM_FOREIGN'),
        ('FLAVOR_JFD_REFORM_INDUSTRY'),
        ('FLAVOR_JFD_REFORM_LEGAL'),
        ('FLAVOR_JFD_REFORM_MILITARY'),
        ('FLAVOR_JFD_REFORM_RELIGION');
------------------------------------------------------------
-- Leader_Flavors
------------------------------------------------------------    
--Each flavour corresponds to one of the seven Reform Categories, and how likely a civ is to take a reform in either the Right, Centre, or Left column.
--A value of 1-3 will favour Left Reforms. A value of 4-6 will value Centre Reforms. A value of 7-10 will value Right Reforms. The strength of the value will determine how soon a Leader will implement that Reform.
INSERT OR REPLACE INTO Leader_Flavors
        (LeaderType,                FlavorType,                         Flavor)
VALUES  ('LEADER_MC_PERICLES',		'FLAVOR_JFD_REFORM_GOVERNMENT',     6),
        ('LEADER_MC_PERICLES',		'FLAVOR_JFD_REFORM_CULTURE',        5),
        ('LEADER_MC_PERICLES',		'FLAVOR_JFD_REFORM_ECONOMIC',       4),
        ('LEADER_MC_PERICLES',		'FLAVOR_JFD_REFORM_FOREIGN',        5),
        ('LEADER_MC_PERICLES',		'FLAVOR_JFD_REFORM_INDUSTRY',       5),
        ('LEADER_MC_PERICLES',		'FLAVOR_JFD_REFORM_LEGAL',          5),
        ('LEADER_MC_PERICLES',		'FLAVOR_JFD_REFORM_MILITARY',       7),
        ('LEADER_MC_PERICLES',		'FLAVOR_JFD_REFORM_RELIGION',       6),
        ('LEADER_MC_LEONIDAS',      'FLAVOR_JFD_REFORM_GOVERNMENT',     6),
        ('LEADER_MC_LEONIDAS',      'FLAVOR_JFD_REFORM_CULTURE',        5),
        ('LEADER_MC_LEONIDAS',      'FLAVOR_JFD_REFORM_ECONOMIC',       4),
        ('LEADER_MC_LEONIDAS',      'FLAVOR_JFD_REFORM_FOREIGN',        5),
        ('LEADER_MC_LEONIDAS',      'FLAVOR_JFD_REFORM_INDUSTRY',       5),
        ('LEADER_MC_LEONIDAS',      'FLAVOR_JFD_REFORM_LEGAL',          5),
        ('LEADER_MC_LEONIDAS',      'FLAVOR_JFD_REFORM_MILITARY',       7),
        ('LEADER_MC_ATTALUS',       'FLAVOR_JFD_REFORM_RELIGION',       6),
        ('LEADER_MC_ATTALUS',       'FLAVOR_JFD_REFORM_GOVERNMENT',     6),
        ('LEADER_MC_ATTALUS',       'FLAVOR_JFD_REFORM_CULTURE',        5),
        ('LEADER_MC_ATTALUS',       'FLAVOR_JFD_REFORM_ECONOMIC',       4),
        ('LEADER_MC_ATTALUS',       'FLAVOR_JFD_REFORM_FOREIGN',        5),
        ('LEADER_MC_ATTALUS',       'FLAVOR_JFD_REFORM_INDUSTRY',       5),
        ('LEADER_MC_ATTALUS',       'FLAVOR_JFD_REFORM_LEGAL',          5),
        ('LEADER_MC_ATTALUS',       'FLAVOR_JFD_REFORM_MILITARY',       7),
        ('LEADER_MC_ATTALUS',       'FLAVOR_JFD_REFORM_RELIGION',       6);
--==========================================================================================================================
-- R.E.D. / Ethnic Units
--==========================================================================================================================
-- Civilizations
------------------------------  
UPDATE Civilizations
SET ArtStyleSuffix = (CASE WHEN EXISTS(SELECT ArtStyleSuffix FROM Civilizations WHERE ArtStyleSuffix = '_POLYNESIA')
    THEN '_GREECE'
    ELSE '_MED' END)
WHERE TYPE IN ('CIVILIZATION_MC_ATHENS', 'CIVILIZATION_MC_SPARTA', 'CIVILIZATION_MC_PERGAMON', 'CIVILIZATION_MC_MACEDON');
--==========================================================================================================================
-- YnAEMP v24
--==========================================================================================================================
-- Civilizations_YagemStartPosition (Earth Giant)
------------------------------------------------------------    
CREATE TABLE IF NOT EXISTS Civilizations_YagemStartPosition(TYPE, X, Y, AltX, AltY);
INSERT OR REPLACE INTO Civilizations_YagemStartPosition
            (TYPE,                          X,      Y)
VALUES      ('CIVILIZATION_MC_MACEDON',		28,		58),
			('CIVILIZATION_MC_ATHENS',		28,		55),
			('CIVILIZATION_MC_PERGAMON',	30,		57),
			('CIVILIZATION_MC_SPARTA',		27,		53);
			
CREATE TABLE IF NOT EXISTS MinorCiv_YagemStartPosition(TYPE, X, Y, AltX, AltY);
INSERT OR REPLACE INTO MinorCiv_YagemStartPosition
			(Type,							X,		Y)
VALUES		('MINOR_CIV_MC_CORINTH',		28,		54),
			('MINOR_CIV_MC_DELPHI',			27,		55),
			('MINOR_CIV_MC_EPHESUS',		31,		56),
			('MINOR_CIV_MC_EPIDAUROS',		28,		54),
			('MINOR_CIV_MC_MILETUS',		31,		55),
			('MINOR_CIV_MC_OLYMPIA',		26,		55),
			('MINOR_CIV_MC_THEBES',			28,		56);

------------------------------------------------------------    
-- Civilizations_YahemStartPosition (Earth Huge)
------------------------------------------------------------    
CREATE TABLE IF NOT EXISTS Civilizations_YahemStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO Civilizations_YahemStartPosition									
			(Type,								X,			Y)
VALUES		('CIVILIZATION_MC_MACEDON',			67,			54),
			('CIVILIZATION_MC_ATHENS',			67,			51),
			('CIVILIZATION_MC_PERGAMON',		69,			52),
			('CIVILIZATION_MC_SPARTA',			66,			51);

CREATE TABLE IF NOT EXISTS MinorCiv_YahemStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO MinorCiv_YahemStartPosition									
			(Type,								X,			Y)
VALUES		('MINOR_CIV_MC_CORINTH',			67,			52),
			('MINOR_CIV_MC_DELPHI',				66,			52),
			('MINOR_CIV_MC_EPHESUS',			69,			51),
			('MINOR_CIV_MC_EPIDAUROS',			67,			52),
			('MINOR_CIV_MC_MILETUS',			69,			51),
			('MINOR_CIV_MC_OLYMPIA',			66,			52),
			('MINOR_CIV_MC_THEBES',				67,			53);

------------------------------------------------------------    									
--Civilizations_CordiformStartPosition (Earth Standard)									
------------------------------------------------------------    									
CREATE TABLE IF NOT EXISTS Civilizations_CordiformStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO Civilizations_CordiformStartPosition									
			(Type,								X,			Y)
VALUES		('CIVILIZATION_MC_MACEDON',			43,			24),
			('CIVILIZATION_MC_ATHENS',			43,			22),
			('CIVILIZATION_MC_PERGAMON',		45,			23),
			('CIVILIZATION_MC_SPARTA',			41,			21);
												
CREATE TABLE IF NOT EXISTS MinorCiv_CordiformStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO MinorCiv_CordiformStartPosition									
			(Type,								X,			Y)
VALUES		('MINOR_CIV_MC_CORINTH',			42,			23),
			('MINOR_CIV_MC_DELPHI',				41,			23),
			('MINOR_CIV_MC_EPHESUS',			46,			22),
			('MINOR_CIV_MC_EPIDAUROS',			44,			22),
			('MINOR_CIV_MC_MILETUS',			46,			22),
			('MINOR_CIV_MC_OLYMPIA',			41,			23),
			('MINOR_CIV_MC_THEBES',				42,			23);

------------------------------------------------------------    									
--Civilizations_GreatestEarthStartPosition (Earth Greatest)									
------------------------------------------------------------    									
CREATE TABLE IF NOT EXISTS Civilizations_GreatestEarthStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO Civilizations_GreatestEarthStartPosition									
			(Type,								X,			Y)
VALUES		('CIVILIZATION_MC_MACEDON',			57,			44),
			('CIVILIZATION_MC_ATHENS',			58,			42),
			('CIVILIZATION_MC_PERGAMON',		59,			44),
			('CIVILIZATION_MC_SPARTA',			56,			39);

CREATE TABLE IF NOT EXISTS MinorCiv_GreatestEarthStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO MinorCiv_GreatestEarthStartPosition									
			(Type,								X,			Y)
VALUES		('MINOR_CIV_MC_CORINTH',			57,			41),
			('MINOR_CIV_MC_DELPHI',				56,			41),
			('MINOR_CIV_MC_EPHESUS',			60,			42),
			('MINOR_CIV_MC_EPIDAUROS',			57,			40),
			('MINOR_CIV_MC_MILETUS',			59,			43),
			('MINOR_CIV_MC_OLYMPIA',			56,			40),
			('MINOR_CIV_MC_THEBES',				57,			42);

------------------------------------------------------------    									
--Civilizations_AdriaticStartPosition (Adriatic Sea / Balkans)									
------------------------------------------------------------    									
CREATE TABLE IF NOT EXISTS Civilizations_AdriaticStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO Civilizations_AdriaticStartPosition									
			(Type,								X,			Y)
VALUES		('CIVILIZATION_MC_MACEDON',			87,			66),
			('CIVILIZATION_MC_ATHENS',			111,		58),
			('CIVILIZATION_MC_MACEDON',			87,			66),
			('CIVILIZATION_MC_SPARTA',			114,		41);
									
CREATE TABLE IF NOT EXISTS MinorCiv_AdriaticStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO MinorCiv_AdriaticStartPosition									
			(Type,								X,			Y)
VALUES		('MINOR_CIV_MC_CORINTH',			109,		50),
			('MINOR_CIV_MC_DELPHI',				104,		53),
			('MINOR_CIV_MC_EPIDAUROS',			112,		50),
			('MINOR_CIV_MC_OLYMPIA',			106,		37),
			('MINOR_CIV_MC_THEBES',				106,		57);

------------------------------------------------------------    									
--Civilizations_AegeanStartPosition (Aegean Standard)									
------------------------------------------------------------    									
CREATE TABLE IF NOT EXISTS Civilizations_AegeanStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO Civilizations_AegeanStartPosition									
			(Type,								X,			Y)
VALUES		('CIVILIZATION_MC_MACEDON',			10,			41),
			('CIVILIZATION_MC_ATHENS',			13,			21),
			('CIVILIZATION_MC_PERGAMON',		31,			30),
			('CIVILIZATION_MC_SPARTA',			8,			15);

CREATE TABLE IF NOT EXISTS MinorCiv_AegeanStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO MinorCiv_AegeanStartPosition									
			(Type,								X,			Y)
VALUES		('MINOR_CIV_MC_CORINTH',			10,			20),
			('MINOR_CIV_MC_DELPHI',				8,			24),
			('MINOR_CIV_MC_EPHESUS',			31,			24),
			('MINOR_CIV_MC_EPIDAUROS',			11,			17),
			('MINOR_CIV_MC_MILETUS',			30,			21),
			('MINOR_CIV_MC_OLYMPIA',			5,			18),
			('MINOR_CIV_MC_RODOS',				36,			12),
			('MINOR_CIV_MC_THEBES',				11,			23);

------------------------------------------------------------    									
--Civilizations_AfriAsiaAustStartPosition (Africa, Asia, Oceania Huge)									
------------------------------------------------------------    									
CREATE TABLE IF NOT EXISTS Civilizations_AfriAsiaAustStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO Civilizations_AfriAsiaAustStartPosition									
			(Type,								X,			Y)
VALUES		('CIVILIZATION_MC_MACEDON',			43,			22),
			('CIVILIZATION_MC_ATHENS',			36,			70),
			('CIVILIZATION_MC_PERGAMON',		39,			71),
			('CIVILIZATION_MC_SPARTA',			34,			70);

UPDATE Civilizations_AfriAsiaAustStartPosition
SET X = 37, Y = 74
WHERE Type = 'CIVILIZATION_GREECE';
									
CREATE TABLE IF NOT EXISTS MinorCiv_AfriAsiaAustStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO MinorCiv_AfriAsiaAustStartPosition									
			(Type,								X,			Y)
VALUES		('MINOR_CIV_MC_CORINTH',			35,			71),
			('MINOR_CIV_MC_DELPHI',				35,			72),
			('MINOR_CIV_MC_EPHESUS',			40,			70),
			('MINOR_CIV_MC_EPIDAUROS',			36,			71),
			('MINOR_CIV_MC_MILETUS',			41,			70),
			('MINOR_CIV_MC_OLYMPIA',			34,			71),
			('MINOR_CIV_MC_RODOS',				41,			68),
			('MINOR_CIV_MC_THEBES',				36,			72);

------------------------------------------------------------    									
--Civilizations_AfriGiantStartPosition (Africa Giant)									
------------------------------------------------------------    									
CREATE TABLE IF NOT EXISTS Civilizations_AfriGiantStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO Civilizations_AfriGiantStartPosition									
			(Type,								X,			Y)
VALUES		('CIVILIZATION_MC_SPARTA',			76,			139);
									
CREATE TABLE IF NOT EXISTS MinorCiv_AfriGiantStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO MinorCiv_AfriGiantStartPosition									
			(Type,								X,			Y)
VALUES		('MINOR_CIV_MC_EPHESUS',			83,			139),
			('MINOR_CIV_MC_MILETUS',			84,			138);

------------------------------------------------------------    									
--Civilizations_AfriSouthEuroStartPosition (Africa & Southern Europe Large)									
------------------------------------------------------------    									
CREATE TABLE IF NOT EXISTS Civilizations_AfriSouthEuroStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO Civilizations_AfriSouthEuroStartPosition									
			(Type,								X,			Y)
VALUES		('CIVILIZATION_MC_MACEDON',			43,			22),
			('CIVILIZATION_MC_ATHENS',			46,			65),
			('CIVILIZATION_MC_PERGAMON',		49,			68),
			('CIVILIZATION_MC_SPARTA',			45,			64);

UPDATE Civilizations_AfriSouthEuroStartPosition
SET X = 46, Y = 70
WHERE Type = 'CIVILIZATION_GREECE';
									
CREATE TABLE IF NOT EXISTS MinorCiv_AfriSouthEuroStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO MinorCiv_AfriSouthEuroStartPosition									
			(Type,								X,			Y)
VALUES		('MINOR_CIV_MC_CORINTH',			46,			66),
			('MINOR_CIV_MC_DELPHI',				43,			67),
			('MINOR_CIV_MC_EPHESUS',			49,			67),
			('MINOR_CIV_MC_EPIDAUROS',			46,			65),
			('MINOR_CIV_MC_MILETUS',			51,			66),
			('MINOR_CIV_MC_OLYMPIA',			44,			65),
			('MINOR_CIV_MC_RODOS',				51,			64),
			('MINOR_CIV_MC_THEBES',				46,			68);

------------------------------------------------------------    									
--Civilizations_CaucasusStartPosition (Caucasus Giant)									
------------------------------------------------------------    									
CREATE TABLE IF NOT EXISTS Civilizations_CaucasusStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO Civilizations_CaucasusStartPosition									
			(Type,								X,			Y)
VALUES		('CIVILIZATION_MC_MACEDON',			43,			22),
			('CIVILIZATION_MC_ATHENS',			21,			20),
			('CIVILIZATION_MC_PERGAMON',		35,			26),
			('CIVILIZATION_MC_SPARTA',			16,			14);

UPDATE Civilizations_CaucasusStartPosition
SET X = 16, Y = 37
WHERE Type = 'CIVILIZATION_GREECE';
									
CREATE TABLE IF NOT EXISTS MinorCiv_CaucasusStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO MinorCiv_CaucasusStartPosition									
			(Type,								X,			Y)
VALUES		('MINOR_CIV_MC_CORINTH',			17,			19),
			('MINOR_CIV_MC_DELPHI',				14,			24),
			('MINOR_CIV_MC_EPHESUS',			36,			20),
			('MINOR_CIV_MC_EPIDAUROS',			18,			18),
			('MINOR_CIV_MC_MILETUS',			36,			17),
			('MINOR_CIV_MC_OLYMPIA',			13,			18),
			('MINOR_CIV_MC_RODOS',				40,			10),
			('MINOR_CIV_MC_THEBES',				18,			23);

------------------------------------------------------------    									
--Civilizations_EuroGiantStartPosition (Europe Giant)									
------------------------------------------------------------    									
CREATE TABLE IF NOT EXISTS Civilizations_EuroGiantStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO Civilizations_EuroGiantStartPosition									
			(Type,								X,			Y)
VALUES		('CIVILIZATION_MC_MACEDON',			43,			22),
			('CIVILIZATION_MC_ATHENS',			94,			21),
			('CIVILIZATION_MC_PERGAMON',		106,		25),
			('CIVILIZATION_MC_SPARTA',			91,			19);

UPDATE Civilizations_EuroGiantStartPosition
SET X = 92, Y = 32
WHERE Type = 'CIVILIZATION_GREECE';
									
CREATE TABLE IF NOT EXISTS MinorCiv_EuroGiantStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO MinorCiv_EuroGiantStartPosition									
			(Type,								X,			Y)
VALUES		('MINOR_CIV_MC_CORINTH',			93,			21),
			('MINOR_CIV_MC_DELPHI',				91,			23),
			('MINOR_CIV_MC_EPHESUS',			109,		20),
			('MINOR_CIV_MC_EPIDAUROS',			93,			20),
			('MINOR_CIV_MC_MILETUS',			111,		19),
			('MINOR_CIV_MC_OLYMPIA',			90,			20),
			('MINOR_CIV_MC_RODOS',				110,		16),
			('MINOR_CIV_MC_THEBES',				93,			23);

------------------------------------------------------------    									
--Civilizations_EuroLargeStartPosition (Europe Large)									
------------------------------------------------------------    									
CREATE TABLE IF NOT EXISTS Civilizations_EuroLargeStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO Civilizations_EuroLargeStartPosition									
			(Type,								X,			Y)
VALUES		('CIVILIZATION_MC_MACEDON',			43,			22),
			('CIVILIZATION_MC_ATHENS',			47,			25),
			('CIVILIZATION_MC_PERGAMON',		52,			27),
			('CIVILIZATION_MC_SPARTA',			47,			23);

UPDATE Civilizations_EuroLargeStartPosition
SET X = 48, Y = 30
WHERE Type = 'CIVILIZATION_GREECE';
									
CREATE TABLE IF NOT EXISTS MinorCiv_EuroLargeStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO MinorCiv_EuroLargeStartPosition									
			(Type,								X,			Y)
VALUES		('MINOR_CIV_MC_CORINTH',			48,			25),
			('MINOR_CIV_MC_DELPHI',				47,			26),
			('MINOR_CIV_MC_EPHESUS',			53,			25),
			('MINOR_CIV_MC_EPIDAUROS',			48,			23),
			('MINOR_CIV_MC_MILETUS',			54,			24),
			('MINOR_CIV_MC_OLYMPIA',			46,			24),
			('MINOR_CIV_MC_RODOS',				53,			22),
			('MINOR_CIV_MC_THEBES',				48,			26);

------------------------------------------------------------    									
--Civilizations_EuroLargeNewStartPosition (Europe (Greatest) Large)									
------------------------------------------------------------    									
CREATE TABLE IF NOT EXISTS Civilizations_EuroLargeNewStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO Civilizations_EuroLargeNewStartPosition									
			(Type,								X,			Y)
VALUES		('CIVILIZATION_MC_MACEDON',			43,			22),
			('CIVILIZATION_MC_ATHENS',			53,			15),
			('CIVILIZATION_MC_PERGAMON',		58,			18),
			('CIVILIZATION_MC_SPARTA',			52,			13);

UPDATE Civilizations_EuroLargeNewStartPosition
SET X = 52, Y = 19
WHERE Type = 'CIVILIZATION_GREECE';
									
CREATE TABLE IF NOT EXISTS MinorCiv_EuroLargeNewStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO MinorCiv_EuroLargeNewStartPosition									
			(Type,								X,			Y)
VALUES		('MINOR_CIV_MC_CORINTH',			54,			14),
			('MINOR_CIV_MC_DELPHI',				52,			16),
			('MINOR_CIV_MC_EPHESUS',			59,			17),
			('MINOR_CIV_MC_EPIDAUROS',			55,			14),
			('MINOR_CIV_MC_MILETUS',			61,			16),
			('MINOR_CIV_MC_OLYMPIA',			51,			13),
			('MINOR_CIV_MC_RODOS',				61,			13),
			('MINOR_CIV_MC_THEBES',				52,			17);

------------------------------------------------------------    									
--Civilizations_MediterraneanStartPosition (Mediterranean Large)									
------------------------------------------------------------    									
CREATE TABLE IF NOT EXISTS Civilizations_MediterraneanStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO Civilizations_MediterraneanStartPosition									
			(Type,								X,			Y)
VALUES		('CIVILIZATION_MC_MACEDON',			43,			22),
			('CIVILIZATION_MC_ATHENS',			64,			30),
			('CIVILIZATION_MC_PERGAMON',		71,			34),
			('CIVILIZATION_MC_SPARTA',			62,			28);

UPDATE Civilizations_MediterraneanStartPosition
SET X = 38, Y = 38
WHERE Type = 'CIVILIZATION_GREECE';
									
CREATE TABLE IF NOT EXISTS MinorCiv_MediterraneanStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO MinorCiv_MediterraneanStartPosition									
			(Type,								X,			Y)
VALUES		('MINOR_CIV_MC_CORINTH',			63,			29),
			('MINOR_CIV_MC_DELPHI',				62,			31),
			('MINOR_CIV_MC_EPHESUS',			71,			31),
			('MINOR_CIV_MC_EPIDAUROS',			63,			28),
			('MINOR_CIV_MC_MILETUS',			73,			30),
			('MINOR_CIV_MC_OLYMPIA',			60,			29),
			('MINOR_CIV_MC_RODOS',				74,			26),
			('MINOR_CIV_MC_THEBES',				63,			31);

------------------------------------------------------------    									
--Civilizations_MesopotamiaGiantStartPosition (Mesopotamia Giant)									
------------------------------------------------------------    									
CREATE TABLE IF NOT EXISTS Civilizations_MesopotamiaGiantStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO Civilizations_MesopotamiaGiantStartPosition									
			(Type,								X,			Y)
VALUES		('CIVILIZATION_MC_PERGAMON',		10,			77);
									
CREATE TABLE IF NOT EXISTS MinorCiv_MesopotamiaGiantStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO MinorCiv_MesopotamiaGiantStartPosition									
			(Type,								X,			Y)
VALUES		('MINOR_CIV_MC_EPHESUS',			11,			72),
			('MINOR_CIV_MC_MILETUS',			12,			69),
			('MINOR_CIV_MC_RODOS',				16,			64);

------------------------------------------------------------    									
--Civilizations_MesopotamiaStartPosition (Mesopotamia Standard)									
------------------------------------------------------------    									
CREATE TABLE IF NOT EXISTS Civilizations_MesopotamiaStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO Civilizations_MesopotamiaStartPosition									
			(Type,								X,			Y)
VALUES		('CIVILIZATION_MC_MACEDON',			43,			22),
			('CIVILIZATION_MC_ATHENS',			7,			22),
			('CIVILIZATION_MC_PERGAMON',		10,			32),
			('CIVILIZATION_MC_SPARTA',			5,			19);

UPDATE Civilizations_MesopotamiaStartPosition
SET X = 2, Y = 39
WHERE Type = 'CIVILIZATION_GREECE';
									
CREATE TABLE IF NOT EXISTS MinorCiv_MesopotamiaStartPosition(TYPE, X, Y, AltX, AltY);									
INSERT OR REPLACE INTO MinorCiv_MesopotamiaStartPosition									
			(Type,								X,			Y)
VALUES		('MINOR_CIV_MC_CORINTH',			5,			22),
			('MINOR_CIV_MC_DELPHI',				2,			26),
			('MINOR_CIV_MC_EPHESUS',			12,			30),
			('MINOR_CIV_MC_EPIDAUROS',			6,			20),
			('MINOR_CIV_MC_MILETUS',			13,			28),
			('MINOR_CIV_MC_OLYMPIA',			1,			22),
			('MINOR_CIV_MC_RODOS',				17,			26),
			('MINOR_CIV_MC_THEBES',				6,			26);

--==========================================================================================================================
--==========================================================================================================================