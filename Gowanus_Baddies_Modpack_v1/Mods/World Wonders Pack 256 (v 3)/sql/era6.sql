-- AXWWP632

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP632','TXT_KEY_BUILDING_AXWWP632','TXT_KEY_BUILDING_AXWWP632_PEDIA','TXT_KEY_BUILDING_AXWWP632_HELP','TXT_KEY_BUILDING_AXWWP632_QUOTE','BUILDINGCLASS_AXWWP632',1,-1,100,'AXWWP3_ATLAS',32,'axwwp632.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP632','TXT_KEY_BUILDING_AXWWP632','BUILDING_AXWWP632',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP632'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP632');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	FreeBuildingThisCity = 'BUILDINGCLASS_FACTORY',
	Cost = 1060,
	PrereqTech = 'TECH_REFRIGERATION',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP632';

INSERT INTO Building_LocalResourceAnds (BuildingType, ResourceType) VALUES ('BUILDING_AXWWP632','RESOURCE_OIL');
INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP632','YIELD_PRODUCTION',20);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP632','YIELD_PRODUCTION',10);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP632','RESOURCE_OIL','YIELD_SCIENCE',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP632','Narva Power Plants'),
('TXT_KEY_BUILDING_AXWWP632_PEDIA','The Narva Power Plants are a power generation complex in and near Narva in Estonia, near the border with Leningrad Oblast, Russia.[NEWLINE][NEWLINE]The complex consists of the world''s two largest oil shale-fired thermal power plants, Eesti Power Plant, and Balti Power Plant. In 2007, Narva Power Plants generated about 95% of total power production in Estonia.'),
('TXT_KEY_BUILDING_AXWWP632_QUOTE','[NEWLINE]"The world will eventually leave the age of oil, but there is no geologic reason for this to happen until near the end of the 21st century."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP632_HELP','+3 [ICON_RESEARCH] Science from [ICON_RES_OIL] Oil. Free Factory in the city. [COLOR_LIGHT_GREY]Requires oil resource.[ENDCOLOR]');




-- AXWWP633

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP633','TXT_KEY_BUILDING_AXWWP633','TXT_KEY_BUILDING_AXWWP633_PEDIA','TXT_KEY_BUILDING_AXWWP633_HELP','TXT_KEY_BUILDING_AXWWP633_QUOTE','BUILDINGCLASS_AXWWP633',1,-1,100,'AXWWP3_ATLAS',33,'axwwp633.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP633','TXT_KEY_BUILDING_AXWWP633','BUILDING_AXWWP633',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP633'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP633');

UPDATE Buildings SET
	River = 1,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1060,
	PrereqTech = 'TECH_REFRIGERATION',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP633';

INSERT INTO Building_LocalResourceAnds (BuildingType, ResourceType) VALUES ('BUILDING_AXWWP633','RESOURCE_OIL');
INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP633','YIELD_PRODUCTION',20);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP633','YIELD_PRODUCTION',8);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP633','RESOURCE_OIL','YIELD_SCIENCE',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP633','Surgut-2 Power Station'),
('TXT_KEY_BUILDING_AXWWP633_PEDIA','The Surgut-2 Power Station on the Ob River in Russia is the largest gas-fired power station in the world.'),
('TXT_KEY_BUILDING_AXWWP633_QUOTE','[NEWLINE]"We see natural gas as an important part of the electricity generation mix for many decades to come."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP633_HELP','+2 [ICON_RESEARCH] Science from [ICON_RES_OIL] Oil. [COLOR_LIGHT_GREY]Requires river, oil resource.[ENDCOLOR]');




-- AXWWP634

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP634','TXT_KEY_BUILDING_AXWWP634','TXT_KEY_BUILDING_AXWWP634_PEDIA','TXT_KEY_BUILDING_AXWWP634_HELP','TXT_KEY_BUILDING_AXWWP634_QUOTE','BUILDINGCLASS_AXWWP634',1,-1,100,'AXWWP3_ATLAS',34,'axwwp634.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP634','TXT_KEY_BUILDING_AXWWP634','BUILDING_AXWWP634',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP634'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP634');

UPDATE Buildings SET
	SpecialistCount = 2,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_MERCHANT',
	Cost = 1060,
	PrereqTech = 'TECH_REFRIGERATION',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP634';

INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP634','YIELD_GOLD',20);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP634','YIELD_GOLD',8);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP634','RESOURCE_COCOA','YIELD_GOLD',3),('BUILDING_AXWWP634','RESOURCE_SILK','YIELD_GOLD',3),('BUILDING_AXWWP634','RESOURCE_SPICES','YIELD_GOLD',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP634','Merchandise Mart'),
('TXT_KEY_BUILDING_AXWWP634_PEDIA','The Merchandise Mart is a commercial building located in the downtown Loop, of Chicago, Illinois, United States.[NEWLINE][NEWLINE]When it opened in 1930, it was the largest building in the world, with 4,000,000 square feet (372,000 m2) of floor space.[NEWLINE][NEWLINE]The art deco landmark is located at the junction of the Chicago River''s branches.'),
('TXT_KEY_BUILDING_AXWWP634_QUOTE','[NEWLINE]"I have money, you have money; so we are friends."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP634_HELP','+3 [ICON_GOLD] Gold from [ICON_RES_COCOA] Cocoa. +3 [ICON_GOLD] Gold from [ICON_RES_SILK] Silk. +3 [ICON_GOLD] Gold from [ICON_RES_SPICES] Spices.');




-- AXWWP635

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP635','TXT_KEY_BUILDING_AXWWP635','TXT_KEY_BUILDING_AXWWP635_PEDIA','TXT_KEY_BUILDING_AXWWP635_HELP','TXT_KEY_BUILDING_AXWWP635_QUOTE','BUILDINGCLASS_AXWWP635',1,-1,100,'AXWWP3_ATLAS',35,'axwwp635.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP635','TXT_KEY_BUILDING_AXWWP635','BUILDING_AXWWP635',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP635'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP635');

UPDATE Buildings SET
	HappinessPerCity = 1,
	GlobalCultureRateModifier = 5,
	FreeBuildingThisCity = 'BUILDINGCLASS_BROADCAST_TOWER',
	Cost = 1060,
	PrereqTech = 'TECH_RADIO',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP635';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP635','YIELD_CULTURE',8);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP635','Stuttgart TV Tower'),
('TXT_KEY_BUILDING_AXWWP635_PEDIA','Stuttgart TV Tower is a 216.61 m (710.7 ft) telecommunications tower in Stuttgart, Germany.[NEWLINE][NEWLINE]It was the first telecommunications tower in the world constructed from reinforced concrete, and it is the prototype for many such towers worldwide.'),
('TXT_KEY_BUILDING_AXWWP635_QUOTE','[NEWLINE]"I find television very educating. Every time somebody turns on the set, I go into the other room and read a book."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP635_HELP','+1 [ICON_HAPPINESS_1] Happiness per city. +5% [ICON_CULTURE] Culture in every city. Free Broadcast Tower in the city.');




-- AXWWP636

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP636','TXT_KEY_BUILDING_AXWWP636','TXT_KEY_BUILDING_AXWWP636_PEDIA','TXT_KEY_BUILDING_AXWWP636_HELP','TXT_KEY_BUILDING_AXWWP636_QUOTE','BUILDINGCLASS_AXWWP636',1,-1,100,'AXWWP3_ATLAS',36,'axwwp636.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP636','TXT_KEY_BUILDING_AXWWP636','BUILDING_AXWWP636',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP636'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP636');

UPDATE Buildings SET
	Happiness = 4,
	GoldenAgeModifier = 10,
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1060,
	PrereqTech = 'TECH_RADIO',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP636';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP636','YIELD_GOLD',5),('BUILDING_AXWWP636','YIELD_PRODUCTION',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP636','Chrysler Building'),
('TXT_KEY_BUILDING_AXWWP636_PEDIA','The Chrysler Building is an Art Deco–style skyscraper located on the East Side of Midtown Manhattan in New York City, United States.[NEWLINE][NEWLINE]The structure was the world''s tallest building for 11 months before it was surpassed by the Empire State Building in 1931.[NEWLINE][NEWLINE]It is the tallest brick building in the world with a steel framework.'),
('TXT_KEY_BUILDING_AXWWP636_QUOTE','[NEWLINE]"Everything is designed. Few things are designed well."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP636_HELP','Length of [ICON_GOLDEN_AGE] Golden Ages increased by 10%.');




-- AXWWP637

INSERT INTO Buildings (Type, Description, Civilopedia, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP637','TXT_KEY_BUILDING_AXWWP637','TXT_KEY_BUILDING_AXWWP637_PEDIA','TXT_KEY_BUILDING_AXWWP637_QUOTE','BUILDINGCLASS_AXWWP637',1,-1,100,'AXWWP3_ATLAS',37,'axwwp637.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP637','TXT_KEY_BUILDING_AXWWP637','BUILDING_AXWWP637',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP637'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP637');

UPDATE Buildings SET
	CultureRateModifier = 10,
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_WRITER',
	Cost = 1060,
	PrereqTech = 'TECH_RADIO',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP637';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP637','YIELD_CULTURE',4),('BUILDING_AXWWP637','YIELD_GOLD',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP637','Tribune Tower'),
('TXT_KEY_BUILDING_AXWWP637_PEDIA','The Tribune Tower is a neo-Gothic skyscraper located at 435 North Michigan Avenue in Chicago, Illinois, United States.[NEWLINE][NEWLINE]It was the home of the Chicago Tribune, Tribune Media, and tronc, Inc., formerly known as Tribune Publishing. WGN Radio (720 kHz) broadcasts from the building.'),
('TXT_KEY_BUILDING_AXWWP637_QUOTE','[NEWLINE]"He used statistics the way a drunkard uses lampposts - for support, not illumination."[NEWLINE]');




-- AXWWP638

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP638','TXT_KEY_BUILDING_AXWWP638','TXT_KEY_BUILDING_AXWWP638_PEDIA','TXT_KEY_BUILDING_AXWWP638_HELP','TXT_KEY_BUILDING_AXWWP638_QUOTE','BUILDINGCLASS_AXWWP638',1,-1,100,'AXWWP3_ATLAS',38,'axwwp638.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP638','TXT_KEY_BUILDING_AXWWP638','BUILDING_AXWWP638',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP638'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP638');

UPDATE Buildings SET
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1060,
	PrereqTech = 'TECH_REPLACEABLE_PARTS',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP638';

INSERT INTO Building_RiverPlotYieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP638','YIELD_GOLD',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP638','Tower Bridge'),
('TXT_KEY_BUILDING_AXWWP638_PEDIA','Tower Bridge is a combined bascule and suspension bridge in London built between 1886 and 1894.[NEWLINE][NEWLINE]The bridge crosses the River Thames close to the Tower of London and has become an iconic symbol of London.[NEWLINE][NEWLINE]The bridge consists of two bridge towers tied together at the upper level by two horizontal walkways, designed to withstand the horizontal tension forces exerted by the suspended sections of the bridge on the landward sides of the towers. The vertical components of the forces in the suspended sections and the vertical reactions of the two walkways are carried by the two robust towers. The bascule pivots and operating machinery are housed in the base of each tower.'),
('TXT_KEY_BUILDING_AXWWP638_QUOTE','[NEWLINE]"Praise the bridge that carried you over."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP638_HELP','+1 [ICON_GOLD] Gold from River tiles.');




-- AXWWP639

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP639','TXT_KEY_BUILDING_AXWWP639','TXT_KEY_BUILDING_AXWWP639_PEDIA','TXT_KEY_BUILDING_AXWWP639_HELP','TXT_KEY_BUILDING_AXWWP639_QUOTE','BUILDINGCLASS_AXWWP639',1,-1,100,'AXWWP3_ATLAS',39,'axwwp639.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP639','TXT_KEY_BUILDING_AXWWP639','BUILDING_AXWWP639',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP639'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP639');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	FreeBuildingThisCity = 'BUILDINGCLASS_WORKSHOP',
	Cost = 1060,
	PrereqTech = 'TECH_REPLACEABLE_PARTS',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP639';

INSERT INTO Building_ResourceQuantityRequirements (BuildingType, ResourceType, Cost) VALUES ('BUILDING_AXWWP639','RESOURCE_IRON', 2);
INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP639','YIELD_PRODUCTION',10);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP639','YIELD_PRODUCTION',5),('BUILDING_AXWWP639','YIELD_SCIENCE',5);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP639','RESOURCE_IRON','YIELD_SCIENCE',2),('BUILDING_AXWWP639','RESOURCE_IRON','YIELD_PRODUCTION',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP639','Volklingen Ironworks'),
('TXT_KEY_BUILDING_AXWWP639_PEDIA','The Volklingen Ironworks is located in the German town of Volklingen, Saarland.[NEWLINE][NEWLINE]In 1994, it was declared by UNESCO as a World Heritage site. It is an anchor point of the European Route of Industrial Heritage (ERIH).'),
('TXT_KEY_BUILDING_AXWWP639_QUOTE','[NEWLINE]"This extraordinary metal, the soul of every manufacture, and the mainspring perhaps of civilised society. Of iron."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP639_HELP','+2 [ICON_RESEARCH] Science from [ICON_RES_IRON] Iron. +2 [ICON_PRODUCTION] Production from [ICON_RES_IRON] Iron. Free Workshop in the city. [COLOR_LIGHT_GREY]Requires 2 iron.[ENDCOLOR]');




-- AXWWP640

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP640','TXT_KEY_BUILDING_AXWWP640','TXT_KEY_BUILDING_AXWWP640_PEDIA','TXT_KEY_BUILDING_AXWWP640_HELP','TXT_KEY_BUILDING_AXWWP640_QUOTE','BUILDINGCLASS_AXWWP640',1,-1,100,'AXWWP3_ATLAS',40,'axwwp640.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP640','TXT_KEY_BUILDING_AXWWP640','BUILDING_AXWWP640',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP640'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP640');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	FreeBuildingThisCity = 'BUILDINGCLASS_ARMORY',
	Cost = 1060,
	PrereqTech = 'TECH_REPLACEABLE_PARTS',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP640';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP640','YIELD_PRODUCTION',10);
INSERT INTO Building_UnitCombatFreeExperiences (BuildingType, UnitCombatType, Experience) VALUES ('BUILDING_AXWWP640','UNITCOMBAT_GUN',15);
INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits) VALUES ('BUILDING_AXWWP640','UNIT_GREAT_WAR_INFANTRY',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP640','Harpers Ferry Armory'),
('TXT_KEY_BUILDING_AXWWP640_PEDIA','Harpers Ferry Armory, more formally known as the United States Armory and Arsenal at Harpers Ferry, was the second federal armory commissioned by the United States government. It was located in Harpers Ferry, West Virginia.[NEWLINE][NEWLINE]Harpers Ferry National Armory was both an armory and an arsenal. Both Harpers Ferry and Springfield armories were instrumental in the development of machining techniques to make interchangeable parts.'),
('TXT_KEY_BUILDING_AXWWP640_QUOTE','[NEWLINE]"Every tool is a weapon if you hold it right."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP640_HELP','+15 [ICON_WAR] XP for Gun units. +2 free Great War Infantries. Free Armory in the city.');




-- AXWWP641

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP641','TXT_KEY_BUILDING_AXWWP641','TXT_KEY_BUILDING_AXWWP641_PEDIA','TXT_KEY_BUILDING_AXWWP641_HELP','TXT_KEY_BUILDING_AXWWP641_QUOTE','BUILDINGCLASS_AXWWP641',1,-1,100,'AXWWP3_ATLAS',41,'axwwp641.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP641','TXT_KEY_BUILDING_AXWWP641','BUILDING_AXWWP641',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP641'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP641');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	WorkerSpeedModifier = 10,
	Cost = 1060,
	PrereqTech = 'TECH_REPLACEABLE_PARTS',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP641';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP641','YIELD_PRODUCTION',10);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP641','RESOURCE_COAL','YIELD_SCIENCE',2),('BUILDING_AXWWP641','RESOURCE_IRON','YIELD_SCIENCE',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP641','Baldwin Locomotive Works'),
('TXT_KEY_BUILDING_AXWWP641_PEDIA','The Baldwin Locomotive Works was an American manufacturer of railroad locomotives from 1825 to 1956. Originally located in Philadelphia, it moved to nearby Eddystone, Pennsylvania, in the early 20th century.[NEWLINE][NEWLINE]The company was for decades the world''s largest producer of steam locomotives, but struggled to compete as demand switched to diesel locomotives.'),
('TXT_KEY_BUILDING_AXWWP641_QUOTE','[NEWLINE]"Neither a wise man nor a brave man lies down on the tracks of history to wait for the train of the future to run over him."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP641_HELP','+2 [ICON_RESEARCH] Science from [ICON_RES_COAL] Coal. +2 [ICON_RESEARCH] Science from [ICON_RES_IRON] Iron. Worker construction speed increased by 10%.');




-- AXWWP642

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP642','TXT_KEY_BUILDING_AXWWP642','TXT_KEY_BUILDING_AXWWP642_PEDIA','TXT_KEY_BUILDING_AXWWP642_HELP','TXT_KEY_BUILDING_AXWWP642_QUOTE','BUILDINGCLASS_AXWWP642',1,-1,100,'AXWWP3_ATLAS',42,'axwwp642.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP642','TXT_KEY_BUILDING_AXWWP642','BUILDING_AXWWP642',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP642'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP642');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1060,
	PrereqTech = 'TECH_FLIGHT',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP642';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP642','YIELD_PRODUCTION',5),('BUILDING_AXWWP642','YIELD_SCIENCE',5);
INSERT INTO Building_UnitCombatFreeExperiences (BuildingType, UnitCombatType, Experience) VALUES ('BUILDING_AXWWP642','UNITCOMBAT_FIGHTER',15);
INSERT INTO Building_DomainFreeExperiences (BuildingType, DomainType, Experience) VALUES ('BUILDING_AXWWP642','DOMAIN_AIR',15);
INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits) VALUES ('BUILDING_AXWWP642','UNIT_TRIPLANE',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP642','Skunk Works'),
('TXT_KEY_BUILDING_AXWWP642_PEDIA','Skunk Works is an official pseudonym for Lockheed Martin''s Advanced Development Programs (ADP), formerly called Lockheed Advanced Development Projects.[NEWLINE][NEWLINE]It is responsible for a number of famous aircraft designs, including the U-2, the Lockheed SR-71 Blackbird, the Lockheed F-117 Nighthawk, Lockheed Martin F-22 Raptor, and the Lockheed Martin F-35 Lightning II, which are used in the air forces of several countries.'),
('TXT_KEY_BUILDING_AXWWP642_QUOTE','[NEWLINE]"At that time the chief engineer was almost always the chief test pilot as well. That had the fortunate result of eliminating poor engineering early in aviation."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP642_HELP','+15 [ICON_WAR] XP for Fighter units. +15 [ICON_WAR] XP for Air units. +2 free Triplanes.');




-- AXWWP643

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP643','TXT_KEY_BUILDING_AXWWP643','TXT_KEY_BUILDING_AXWWP643_PEDIA','TXT_KEY_BUILDING_AXWWP643_HELP','TXT_KEY_BUILDING_AXWWP643_QUOTE','BUILDINGCLASS_AXWWP643',1,-1,100,'AXWWP3_ATLAS',43,'axwwp643.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP643','TXT_KEY_BUILDING_AXWWP643','BUILDING_AXWWP643',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP643'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP643');

UPDATE Buildings SET
	Happiness = 3,
	FreeBuildingThisCity = 'BUILDINGCLASS_AIRPORT',
	Cost = 1060,
	PrereqTech = 'TECH_FLIGHT',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP643';

INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP643','YIELD_GOLD',20);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP643','YIELD_CULTURE',4);
INSERT INTO Building_DomainFreeExperiences (BuildingType, DomainType, Experience) VALUES ('BUILDING_AXWWP643','DOMAIN_AIR',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP643','Princess Juliana Airport'),
('TXT_KEY_BUILDING_AXWWP643_PEDIA','Princess Juliana International Airport is the main airport on the Caribbean island of Saint Martin, located on the Dutch side of the island in the country of Sint Maarten.[NEWLINE][NEWLINE]The airport was started as a military airstrip in 1942. It was converted to a civilian airport in 1943.[NEWLINE][NEWLINE]Arriving aircraft approach the island on the last section of the final approach for Runway 10, following a 3 degree glide slope flying low over the famous Maho Beach.'),
('TXT_KEY_BUILDING_AXWWP643_QUOTE','[NEWLINE]"A man sued an airline company after it lost his luggage. Sadly, he lost his case."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP643_HELP','+10 [ICON_WAR] XP for Air units. Free Airport in the city.');




-- AXWWP644

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP644','TXT_KEY_BUILDING_AXWWP644','TXT_KEY_BUILDING_AXWWP644_PEDIA','TXT_KEY_BUILDING_AXWWP644_HELP','TXT_KEY_BUILDING_AXWWP644_QUOTE','BUILDINGCLASS_AXWWP644',1,-1,100,'AXWWP3_ATLAS',44,'axwwp644.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP644','TXT_KEY_BUILDING_AXWWP644','BUILDING_AXWWP644',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP644'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP644');

UPDATE Buildings SET
	NearbyMountainRequired = 1,
	Hill = 1,
	FreeBuildingThisCity = 'BUILDINGCLASS_AIRPORT',
	Cost = 1060,
	PrereqTech = 'TECH_FLIGHT',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP644';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP644','YIELD_CULTURE',4);
INSERT INTO Building_DomainFreeExperiences (BuildingType, DomainType, Experience) VALUES ('BUILDING_AXWWP644','DOMAIN_AIR',20);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP644','Lukla Airport'),
('TXT_KEY_BUILDING_AXWWP644_PEDIA','Tenzing–Hillary Airport, also known as Lukla Airport, is a small airport in the town of Lukla, in Khumbu, Solukhumbu District, Province No. 1, eastern Nepal.[NEWLINE][NEWLINE]The airport is popular because Lukla is the place where most people start the climb to Mount Everest Base Camp.[NEWLINE][NEWLINE]Due to the difficulties of successfully landing at the airport, the Civil Aviation Authority of Nepal sets high standards, for which only experienced pilots, who completed at least 100 short-takeoff-and-landing (STOL) missions, have over one year of STOL experience in Nepal and completed ten missions into Lukla with a certified instructor pilot, are allowed to land at the airport.'),
('TXT_KEY_BUILDING_AXWWP644_QUOTE','[NEWLINE]"If at first you don''t succeed, skydivings not for you."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP644_HELP','+20 [ICON_WAR] XP for Air units. Free Airport in the city. [COLOR_LIGHT_GREY]Requires mountain nearby, hill.[ENDCOLOR]');




-- AXWWP645

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP645','TXT_KEY_BUILDING_AXWWP645','TXT_KEY_BUILDING_AXWWP645_PEDIA','TXT_KEY_BUILDING_AXWWP645_HELP','TXT_KEY_BUILDING_AXWWP645_QUOTE','BUILDINGCLASS_AXWWP645',1,-1,100,'AXWWP3_ATLAS',45,'axwwp645.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP645','TXT_KEY_BUILDING_AXWWP645','BUILDING_AXWWP645',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP645'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP645');

UPDATE Buildings SET
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	NumTradeRouteBonus = 1,
	TradeRouteLandDistanceModifier = 50,
	TradeRouteLandGoldBonus = 100,
	Cost = 1060,
	PrereqTech = 'TECH_RAILROAD',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP645';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP645','YIELD_GOLD',5),('BUILDING_AXWWP645','YIELD_PRODUCTION',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP645','First Transcontinental Railroad'),
('TXT_KEY_BUILDING_AXWWP645_PEDIA','The First Transcontinental Railroad (also called the Great Transcontinental Railroad, known originally as the "Pacific Railroad" and later as the "Overland Route") was a 1,912-mile (3,077 km) continuous railroad line constructed between 1863 and 1869 that connected the existing eastern U.S. rail network at Omaha, Nebraska/Council Bluffs, Iowa with the Pacific coast at the Oakland Long Wharf on San Francisco Bay.[NEWLINE][NEWLINE]The railroad opened for through traffic on May 10, 1869 when CPRR President Leland Stanford ceremonially drove the gold "Last Spike" (later often referred to as the "Golden Spike") with a silver hammer at Promontory Summit.'),
('TXT_KEY_BUILDING_AXWWP645_QUOTE','[NEWLINE]"Men build bridges and throw railroads across deserts, and yet they contend successfully that the job of sewing on a button is beyond them."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP645_HELP','Increases distance for [ICON_TRADE] Land Trade Routes. Increases [ICON_GOLD] Gold for [ICON_TRADE] Land Trade Routes. Additional [ICON_TRADE] Trade Route.');




-- AXWWP646

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP646','TXT_KEY_BUILDING_AXWWP646','TXT_KEY_BUILDING_AXWWP646_PEDIA','TXT_KEY_BUILDING_AXWWP646_HELP','TXT_KEY_BUILDING_AXWWP646_QUOTE','BUILDINGCLASS_AXWWP646',1,-1,100,'AXWWP3_ATLAS',46,'axwwp646.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP646','TXT_KEY_BUILDING_AXWWP646','BUILDING_AXWWP646',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP646'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP646');

UPDATE Buildings SET
	Water = 1, MinAreaSize = 10,
	Flat = 1,
	GoldenAgeModifier = 20,
	PlotBuyCostModifier = -25,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1060,
	PrereqTech = 'TECH_RAILROAD',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP646';

INSERT INTO Building_LocalResourceAnds (BuildingType, ResourceType) VALUES ('BUILDING_AXWWP646','RESOURCE_IRON');
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP646','YIELD_GOLD',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP646','Forth Bridge'),
('TXT_KEY_BUILDING_AXWWP646_PEDIA','The Forth Bridge  is a cantilever railway bridge across the Firth of Forth in the east of Scotland, 9 miles (14 kilometres) west of Edinburgh City Centre.[NEWLINE][NEWLINE]The bridge spans the Forth between the villages of South Queensferry and North Queensferry and has a total length of 8,094 feet (2,467 m). When it opened it had the longest single cantilever bridge span in the world.'),
('TXT_KEY_BUILDING_AXWWP646_QUOTE','[NEWLINE]"It doesn''t matter which side of the tracks your from, the train still rolls the same."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP646_HELP','[ICON_GOLD] Gold cost of aquiring new tiles reduced by 25% in the city. Length of [ICON_GOLDEN_AGE] Golden Ages increased by 20%. [COLOR_LIGHT_GREY]Requires coast, flat ground, iron resource.[ENDCOLOR]');




-- AXWWP647

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP647','TXT_KEY_BUILDING_AXWWP647','TXT_KEY_BUILDING_AXWWP647_PEDIA','TXT_KEY_BUILDING_AXWWP647_HELP','TXT_KEY_BUILDING_AXWWP647_QUOTE','BUILDINGCLASS_AXWWP647',1,-1,100,'AXWWP3_ATLAS',47,'axwwp647.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP647','TXT_KEY_BUILDING_AXWWP647','BUILDING_AXWWP647',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP647'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP647');

UPDATE Buildings SET
	Hill = 1,
	NumCityCostMod = 50,
	FreeBuilding = 'BUILDINGCLASS_HOTEL',
	Cost = 1060,
	PrereqTech = 'TECH_RAILROAD',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP647';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP647','YIELD_CULTURE',5),('BUILDING_AXWWP647','YIELD_GOLD',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP647','Chateau Frontenac'),
('TXT_KEY_BUILDING_AXWWP647_PEDIA','The Chateau Frontenac is one of Canada''s grand railway hotels, located in Quebec City, Quebec.[NEWLINE][NEWLINE]Although several of Quebec City''s buildings are taller, the landmark hotel is perched atop a tall cape overlooking the Saint Lawrence River, affording a spectacular view for several kilometers. The building is the most prominent feature of the Quebec City skyline as seen from across the Saint Lawrence.'),
('TXT_KEY_BUILDING_AXWWP647_QUOTE','[NEWLINE]"Architecture begins where engineering ends."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP647_HELP','Free Hotel in every city. [COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');




-- AXWWP648

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP648','TXT_KEY_BUILDING_AXWWP648','TXT_KEY_BUILDING_AXWWP648_PEDIA','TXT_KEY_BUILDING_AXWWP648_HELP','TXT_KEY_BUILDING_AXWWP648_QUOTE','BUILDINGCLASS_AXWWP648',1,-1,100,'AXWWP3_ATLAS',48,'axwwp648.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP648','TXT_KEY_BUILDING_AXWWP648','BUILDING_AXWWP648',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP648'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP648');

UPDATE Buildings SET
	NearbyMountainRequired = 1,
	Hill = 1,
	Happiness = 5,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	CityConnectionTradeRouteModifier = 25,
	TradeRouteLandGoldBonus = 127,
	Cost = 1060,
	PrereqTech = 'TECH_RAILROAD',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP648';


INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP648','Wiesen Viaduct'),
('TXT_KEY_BUILDING_AXWWP648_PEDIA','The Wiesen Viaduct is a single-track railway viaduct, made from concrete blocks with dimension stone coverage. It spans the Landwasser southwest of the hamlet of Wiesen, in the canton of Graubunden, Switzerland.[NEWLINE][NEWLINE]The Wiesen Viaduct is 88.9 metres (292 ft) high and 210 metres (690 ft) long. Its main span is only 3.7 metres (12 ft) wide, but also 55 metres (180 ft) long, which makes it one of the longest main spans of any masonry bridge.'),
('TXT_KEY_BUILDING_AXWWP648_QUOTE','[NEWLINE]"A railroad engineer must be sure not to lose his train of thought or he might go down the wrong track."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP648_HELP','+25% [ICON_GOLD] Gold from [ICON_TRADE] City Connections. Increases [ICON_GOLD] Gold for [ICON_TRADE] Land Trade Routes. [COLOR_LIGHT_GREY]Requires mountain nearby, hill.[ENDCOLOR]');




-- AXWWP649

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP649','TXT_KEY_BUILDING_AXWWP649','TXT_KEY_BUILDING_AXWWP649_PEDIA','TXT_KEY_BUILDING_AXWWP649_HELP','TXT_KEY_BUILDING_AXWWP649_QUOTE','BUILDINGCLASS_AXWWP649',1,-1,100,'AXWWP3_ATLAS',49,'axwwp649.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP649','TXT_KEY_BUILDING_AXWWP649','BUILDING_AXWWP649',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP649'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP649');

UPDATE Buildings SET
	NearbyTerrainRequired = 'TERRAIN_SNOW',
	SpecialistCount = 2,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_LABORATORY',
	Cost = 1250,
	PrereqTech = 'TECH_PLASTIC',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP649';

INSERT INTO Building_TerrainYieldChanges (BuildingType, TerrainType, YieldType, Yield) VALUES ('BUILDING_AXWWP649','TERRAIN_SNOW','YIELD_SCIENCE',2);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP649','YIELD_SCIENCE',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP649','Amundsen–Scott South Pole Station'),
('TXT_KEY_BUILDING_AXWWP649_PEDIA','Amundsen–Scott South Pole Station is a United States scientific research station at the South Pole, the southernmost place on the Earth.[NEWLINE][NEWLINE]The station is located on the high plateau of Antarctica at an elevation of 2,835 metres (9,301 feet) above sea level.[NEWLINE][NEWLINE]Since the station is located at the South Pole, it is at the only inhabited place on the land surface of the Earth from which the Sun is continuously visible for six months and is then continuously dark for the next six months.'),
('TXT_KEY_BUILDING_AXWWP649_QUOTE','[NEWLINE]"I read in one of the scandal sheets that there are UFO aliens living right now down deep in the Antarctic."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP649_HELP','+2 [ICON_RESEARCH] Science from Snow tiles. Free Laboratory in the city. [COLOR_LIGHT_GREY]Requires snow.[ENDCOLOR]');




-- AXWWP650

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP650','TXT_KEY_BUILDING_AXWWP650','TXT_KEY_BUILDING_AXWWP650_PEDIA','TXT_KEY_BUILDING_AXWWP650_HELP','TXT_KEY_BUILDING_AXWWP650_QUOTE','BUILDINGCLASS_AXWWP650',1,-1,100,'AXWWP3_ATLAS',50,'axwwp650.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP650','TXT_KEY_BUILDING_AXWWP650','BUILDING_AXWWP650',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP650'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP650');

UPDATE Buildings SET
	GreatPeopleRateModifier = 20,
	GlobalGreatPeopleRateModifier = 10,
	GreatPersonExpendGold = 100,
	FreeGreatPeople = 2,
	Cost = 1250,
	PrereqTech = 'TECH_PLASTIC',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP650';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP650','YIELD_SCIENCE',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP650','Institute for Advanced Study'),
('TXT_KEY_BUILDING_AXWWP650_PEDIA','The Institute for Advanced Study (IAS) in Princeton, New Jersey, in the United States, is an independent, postdoctoral research center for theoretical research and intellectual inquiry founded in 1930.[NEWLINE][NEWLINE]The IAS is perhaps best known as the academic home of Albert Einstein, Hermann Weyl, John von Neumann and Kurt Godel, after their immigration to the United States.'),
('TXT_KEY_BUILDING_AXWWP650_QUOTE','[NEWLINE]"The scientist discovers a new type of material or energy and the engineer discovers a new use for it."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP650_HELP','100 [ICON_GOLD] Gold for each [ICON_GREAT_PEOPLE] Great Person expended. +20% [ICON_GREAT_PEOPLE] Great People rate in the city. +10% [ICON_GREAT_PEOPLE] Great People rate in every city. 2 [ICON_GREAT_PEOPLE] Great People arrive.');




-- AXWWP651

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP651','TXT_KEY_BUILDING_AXWWP651','TXT_KEY_BUILDING_AXWWP651_PEDIA','TXT_KEY_BUILDING_AXWWP651_HELP','TXT_KEY_BUILDING_AXWWP651_QUOTE','BUILDINGCLASS_AXWWP651',1,-1,100,'AXWWP3_ATLAS',51,'axwwp651.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP651','TXT_KEY_BUILDING_AXWWP651','BUILDING_AXWWP651',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP651'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP651');

UPDATE Buildings SET
	FreeGreatPeople = 1,
	SpecialistCount = 2,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_LABORATORY',
	Cost = 1250,
	PrereqTech = 'TECH_PLASTIC',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP651';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP651','YIELD_SCIENCE',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP651','Max Planck Society'),
('TXT_KEY_BUILDING_AXWWP651_PEDIA','The Max Planck Society for the Advancement of Science is a formally independent non-governmental and non-profit association of German research institutes founded in 1911 as the Kaiser Wilhelm Society.[NEWLINE][NEWLINE]The discovery of nuclear fission occurred in 1938 in the buildings of Kaiser Wilhelm Society for Chemistry, following nearly five decades of work on the science of radioactivity and the elaboration of new nuclear physics that described the components of atoms.'),
('TXT_KEY_BUILDING_AXWWP651_QUOTE','[NEWLINE]"By changing nothing, nothing changes."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP651_HELP','[ICON_GREAT_PEOPLE] Great Person arrives. Free Laboratory in the city.');




-- AXWWP652

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP652','TXT_KEY_BUILDING_AXWWP652','TXT_KEY_BUILDING_AXWWP652_PEDIA','TXT_KEY_BUILDING_AXWWP652_HELP','TXT_KEY_BUILDING_AXWWP652_QUOTE','BUILDINGCLASS_AXWWP652',1,-1,100,'AXWWP3_ATLAS',52,'axwwp652.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP652','TXT_KEY_BUILDING_AXWWP652','BUILDING_AXWWP652',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP652'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP652');

UPDATE Buildings SET
	Happiness = 4,
	FoodKept = 20,
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_LABORATORY',
	Cost = 1250,
	PrereqTech = 'TECH_PLASTIC',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP652';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP652','YIELD_FOOD',6),('BUILDING_AXWWP652','YIELD_SCIENCE',6);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP652','Pasteur Institute'),
('TXT_KEY_BUILDING_AXWWP652_PEDIA','The Pasteur Institute is a French non-profit private foundation dedicated to the study of biology, micro-organisms, diseases, and vaccines.[NEWLINE][NEWLINE]It is named after Louis Pasteur, who made some of the greatest breakthroughs in modern medicine at the time, including pasteurization and vaccines for anthrax and rabies.[NEWLINE][NEWLINE]For over a century, the Institut Pasteur has been at the forefront of the battle against infectious disease.'),
('TXT_KEY_BUILDING_AXWWP652_QUOTE','[NEWLINE]"First the doctor told me the good news: I was going to have a disease named after me."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP652_HELP','20% [ICON_FOOD] Food kept in the city after [ICON_CITIZEN] Citizen is born. Free Laboratory in the city.');




-- AXWWP653

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP653','TXT_KEY_BUILDING_AXWWP653','TXT_KEY_BUILDING_AXWWP653_PEDIA','TXT_KEY_BUILDING_AXWWP653_HELP','TXT_KEY_BUILDING_AXWWP653_QUOTE','BUILDINGCLASS_AXWWP653',1,-1,100,'AXWWP3_ATLAS',53,'axwwp653.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP653','TXT_KEY_BUILDING_AXWWP653','BUILDING_AXWWP653',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP653'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP653');

UPDATE Buildings SET
	UnhappinessModifier = -5,
	GoldenAge = 1,
	SpecialistCount = 1,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_MUSICIAN',
	Cost = 1250,
	PrereqTech = 'TECH_ELECTRONICS',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP653';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP653','YIELD_CULTURE',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP653','Red Rocks Amphitheatre'),
('TXT_KEY_BUILDING_AXWWP653_PEDIA','Red Rocks Amphitheatre is a rock structure near Morrison, Colorado, west of Denver, where concerts are given in the open-air amphitheatre.[NEWLINE][NEWLINE]There is a large, tilted, disc-shaped rock behind the stage, a huge vertical rock angled outwards from stage right, several large outcrops angled outwards from stage left and a seating area for up to 9,525 people in between.'),
('TXT_KEY_BUILDING_AXWWP653_QUOTE','[NEWLINE]"The golden age never was the present age."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP653_HELP','[ICON_HAPPINESS_4] Unhappiness from citizens in non-occupied cities reduced by 5%. Starts [ICON_GOLDEN_AGE] Golden Age.');




-- AXWWP654

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP654','TXT_KEY_BUILDING_AXWWP654','TXT_KEY_BUILDING_AXWWP654_PEDIA','TXT_KEY_BUILDING_AXWWP654_HELP','TXT_KEY_BUILDING_AXWWP654_QUOTE','BUILDINGCLASS_AXWWP654',1,-1,100,'AXWWP3_ATLAS',54,'axwwp654.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP654','TXT_KEY_BUILDING_AXWWP654','BUILDING_AXWWP654',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP654'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP654');

UPDATE Buildings SET
	GreatPersonExpendGold = 100,
	FreeGreatPeople = 1,
	SpecialistCount = 3,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1250,
	PrereqTech = 'TECH_ELECTRONICS',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP654';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP654','YIELD_GOLD',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP654','Flatiron Building'),
('TXT_KEY_BUILDING_AXWWP654_PEDIA','The Flatiron Building, is a triangular 22-story steel-framed landmarked building located at 175 Fifth Avenue in the borough of Manhattan, New York City, which is considered to be a groundbreaking skyscraper.[NEWLINE][NEWLINE]Upon completion in 1902, it was one of the tallest buildings in the city at 20 floors high.'),
('TXT_KEY_BUILDING_AXWWP654_QUOTE','[NEWLINE]"I always arrive late at the office, but I make up for it by leaving early."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP654_HELP','100 [ICON_GOLD] Gold for each [ICON_GREAT_PEOPLE] Great Person expended. [ICON_GREAT_PEOPLE] Great Person arrives.');




-- AXWWP655

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP655','TXT_KEY_BUILDING_AXWWP655','TXT_KEY_BUILDING_AXWWP655_PEDIA','TXT_KEY_BUILDING_AXWWP655_HELP','TXT_KEY_BUILDING_AXWWP655_QUOTE','BUILDINGCLASS_AXWWP655',1,-1,100,'AXWWP3_ATLAS',55,'axwwp655.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP655','TXT_KEY_BUILDING_AXWWP655','BUILDING_AXWWP655',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP655'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP655');

UPDATE Buildings SET
	River = 1,
	NumCityCostMod = 50,
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1250,
	PrereqTech = 'TECH_ELECTRONICS',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP655';

INSERT INTO Building_RiverPlotYieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP655','YIELD_PRODUCTION',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP655','Hoover Dam'),
('TXT_KEY_BUILDING_AXWWP655_PEDIA','Hoover Dam is a concrete arch-gravity dam in the Black Canyon of the Colorado River, on the border between the U.S. states of Nevada and Arizona.[NEWLINE][NEWLINE]Its construction was the result of a massive effort involving thousands of workers, and cost over one hundred lives.'),
('TXT_KEY_BUILDING_AXWWP655_QUOTE','[NEWLINE]"Industry entirely left to itself, would soon fall to ruin, and a nation letting everything alone would commit suicide."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP655_HELP','+1 [ICON_PRODUCTION] Production from River tiles. [COLOR_LIGHT_GREY]Requires river.[ENDCOLOR]');




-- AXWWP656

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP656','TXT_KEY_BUILDING_AXWWP656','TXT_KEY_BUILDING_AXWWP656_PEDIA','TXT_KEY_BUILDING_AXWWP656_HELP','TXT_KEY_BUILDING_AXWWP656_QUOTE','BUILDINGCLASS_AXWWP656',1,-1,100,'AXWWP3_ATLAS',56,'axwwp656.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP656','TXT_KEY_BUILDING_AXWWP656','BUILDING_AXWWP656',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP656'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP656');

UPDATE Buildings SET
	GlobalDefenseMod = 5,
	Espionage = 1,
	ExtraSpies = 1,
	Cost = 1250,
	PrereqTech = 'TECH_ELECTRONICS',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP656';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP656','YIELD_SCIENCE',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP656','Enigma Machine'),
('TXT_KEY_BUILDING_AXWWP656_PEDIA','The Enigma machines were a series of electro-mechanical rotor cipher machines developed and used in the early- to mid-20th century to protect commercial, diplomatic and military communication.[NEWLINE][NEWLINE]Enigma was invented by the German engineer Arthur Scherbius at the end of World War I.'),
('TXT_KEY_BUILDING_AXWWP656_QUOTE','[NEWLINE]"Three may keep a secret if two are dead."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP656_HELP','+1 [ICON_SPY] Spy. [ICON_STRENGTH] Defense of every city increased by 5%.');




-- AXWWP657

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP657','TXT_KEY_BUILDING_AXWWP657','TXT_KEY_BUILDING_AXWWP657_PEDIA','TXT_KEY_BUILDING_AXWWP657_HELP','TXT_KEY_BUILDING_AXWWP657_QUOTE','BUILDINGCLASS_AXWWP657',1,-1,100,'AXWWP3_ATLAS',57,'axwwp657.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP657','TXT_KEY_BUILDING_AXWWP657','BUILDING_AXWWP657',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP657'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP657');

UPDATE Buildings SET
	Hill = 1,
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_OBSERVATORY',
	Cost = 1250,
	PrereqTech = 'TECH_BALLISTICS',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP657';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP657','YIELD_SCIENCE',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP657','Mount Wilson Observatory'),
('TXT_KEY_BUILDING_AXWWP657_PEDIA','The Mount Wilson Observatory is an astronomical observatory located on Mount Wilson, a 1,740-metre (5,710-foot) peak in the San Gabriel Mountains near Pasadena, northeast of Los Angeles, California, United States.[NEWLINE][NEWLINE]The observatory contains two historically important telescopes: the 100-inch (2.5 m) Hooker telescope, which was the largest aperture telescope in the world from its completion in 1917 to 1949, and the 60-inch telescope which was the largest operational telescope in the world when it was completed in 1908.'),
('TXT_KEY_BUILDING_AXWWP657_QUOTE','[NEWLINE]"Sometimes I think the surest sign that intelligent life exists elsewhere in the universe is that none of it has tried to contact us."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP657_HELP','Free Observatory in the city. [COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');




-- AXWWP658

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP658','TXT_KEY_BUILDING_AXWWP658','TXT_KEY_BUILDING_AXWWP658_PEDIA','TXT_KEY_BUILDING_AXWWP658_HELP','TXT_KEY_BUILDING_AXWWP658_QUOTE','BUILDINGCLASS_AXWWP658',1,-1,100,'AXWWP3_ATLAS',58,'axwwp658.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP658','TXT_KEY_BUILDING_AXWWP658','BUILDING_AXWWP658',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP658'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP658');

UPDATE Buildings SET
	River = 1,
	Happiness = 2,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	WorkerSpeedModifier = 10,
	TradeRouteLandGoldBonus = 100,
	Cost = 1250,
	PrereqTech = 'TECH_BALLISTICS',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP658';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP658','YIELD_PRODUCTION',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP658','Vizcaya Bridge'),
('TXT_KEY_BUILDING_AXWWP658_PEDIA','The Vizcaya Bridge is a transporter bridge that links the towns of Portugalete and Las Arenas in the Biscay province of Spain, crossing the mouth of the Nervion River.[NEWLINE][NEWLINE]It is the world''s oldest transporter bridge and was built in 1893, designed by Alberto Palacio, one of Gustave Eiffel''s disciples.[NEWLINE][NEWLINE]It was the solution given by the engineer to the problem of connecting the towns of Portugalete and Getxo without disrupting the maritime traffic of the Port of Bilbao and without having to build a massive structure with long ramps.'),
('TXT_KEY_BUILDING_AXWWP658_QUOTE','[NEWLINE]"Traffic is only one of the side effects of growth."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP658_HELP','Worker construction speed increased by 10%. Increases [ICON_GOLD] Gold for [ICON_TRADE] Land Trade Routes. [COLOR_LIGHT_GREY]Requires river.[ENDCOLOR]');




-- AXWWP659

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP659','TXT_KEY_BUILDING_AXWWP659','TXT_KEY_BUILDING_AXWWP659_PEDIA','TXT_KEY_BUILDING_AXWWP659_HELP','TXT_KEY_BUILDING_AXWWP659_QUOTE','BUILDINGCLASS_AXWWP659',1,-1,100,'AXWWP3_ATLAS',59,'axwwp659.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP659','TXT_KEY_BUILDING_AXWWP659','BUILDING_AXWWP659',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP659'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP659');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1250,
	PrereqTech = 'TECH_BALLISTICS',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP659';

INSERT INTO Building_LocalResourceAnds (BuildingType, ResourceType) VALUES ('BUILDING_AXWWP659','RESOURCE_COPPER');
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP659','YIELD_PRODUCTION',10);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP659','RESOURCE_COPPER','YIELD_SCIENCE',5),('BUILDING_AXWWP659','RESOURCE_COPPER','YIELD_GOLD',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP659','Bingham Canyon Mine'),
('TXT_KEY_BUILDING_AXWWP659_PEDIA','The Bingham Canyon Mine is an open-pit mining operation extracting a large porphyry copper deposit southwest of Salt Lake City, Utah, in the Oquirrh Mountains.[NEWLINE][NEWLINE]The mine is the largest man-made excavation in the world and is considered to have produced more copper than any other mine in history – more than 19 million tonnes.'),
('TXT_KEY_BUILDING_AXWWP659_QUOTE','[NEWLINE]"If you don''t like what one geologist says, ask another."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP659_HELP','+5 [ICON_RESEARCH] Science from [ICON_RES_COPPER] Copper. +5 [ICON_GOLD] Gold from [ICON_RES_COPPER] Copper. [COLOR_LIGHT_GREY]Requires copper resource.[ENDCOLOR]');




-- AXWWP660

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP660','TXT_KEY_BUILDING_AXWWP660','TXT_KEY_BUILDING_AXWWP660_PEDIA','TXT_KEY_BUILDING_AXWWP660_HELP','TXT_KEY_BUILDING_AXWWP660_QUOTE','BUILDINGCLASS_AXWWP660',1,-1,100,'AXWWP3_ATLAS',60,'axwwp660.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP660','TXT_KEY_BUILDING_AXWWP660','BUILDING_AXWWP660',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP660'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP660');

UPDATE Buildings SET
	River = 1,
	Happiness = 6,
	Cost = 1250,
	PrereqTech = 'TECH_COMBUSTION',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP660';

INSERT INTO Building_RiverPlotYieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP660','YIELD_CULTURE',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP660','White Rim Road'),
('TXT_KEY_BUILDING_AXWWP660_PEDIA','The White Rim Road is a 71.2-mile-long (114.6 km) unpaved four-wheel drive road that traverses the top of the White Rim Sandstone formation below the Island in the Sky mesa of Canyonlands National Park in southern Utah in the United States.[NEWLINE][NEWLINE]The road was constructed in the 1950s by the Atomic Energy Commission to provide access for individual prospectors intent on mining uranium deposits for use in nuclear weapons production during the Cold War.'),
('TXT_KEY_BUILDING_AXWWP660_QUOTE','[NEWLINE]"Welcome to Utah: set your watch back 20 years."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP660_HELP','+1 [ICON_CULTURE] Culture from River tiles. [COLOR_LIGHT_GREY]Requires river.[ENDCOLOR]');




-- AXWWP661

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP661','TXT_KEY_BUILDING_AXWWP661','TXT_KEY_BUILDING_AXWWP661_PEDIA','TXT_KEY_BUILDING_AXWWP661_HELP','TXT_KEY_BUILDING_AXWWP661_QUOTE','BUILDINGCLASS_AXWWP661',1,-1,100,'AXWWP3_ATLAS',61,'axwwp661.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP661','TXT_KEY_BUILDING_AXWWP661','BUILDING_AXWWP661',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP661'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP661');

UPDATE Buildings SET
	Water = 1, MinAreaSize = 10,
	Happiness = 6,
	Cost = 1250,
	PrereqTech = 'TECH_COMBUSTION',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP661';

INSERT INTO Building_TerrainYieldChanges (BuildingType, TerrainType, YieldType, Yield) VALUES ('BUILDING_AXWWP661','TERRAIN_COAST','YIELD_CULTURE',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP661','Great Ocean Road'),
('TXT_KEY_BUILDING_AXWWP661_PEDIA','The Great Ocean Road is an Australian National Heritage listed 243 kilometres (151 mi) stretch of road along the south-eastern coast of Australia between the Victorian cities of Torquay and Allansford.[NEWLINE][NEWLINE]Built by returned soldiers between 1919 and 1932 and dedicated to soldiers killed during World War I, the road is the world''s largest war memorial.'),
('TXT_KEY_BUILDING_AXWWP661_QUOTE','[NEWLINE]"I couldn''t repair your brakes, so I made your horn louder."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP661_HELP','+1 [ICON_CULTURE] Culture from Coast tiles. [COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP662

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP662','TXT_KEY_BUILDING_AXWWP662','TXT_KEY_BUILDING_AXWWP662_PEDIA','TXT_KEY_BUILDING_AXWWP662_HELP','TXT_KEY_BUILDING_AXWWP662_QUOTE','BUILDINGCLASS_AXWWP662',1,-1,100,'AXWWP3_ATLAS',62,'axwwp662.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP662','TXT_KEY_BUILDING_AXWWP662','BUILDING_AXWWP662',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP662'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP662');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1250,
	PrereqTech = 'TECH_COMBUSTION',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP662';

INSERT INTO Building_LocalResourceAnds (BuildingType, ResourceType) VALUES ('BUILDING_AXWWP662','RESOURCE_OIL');
INSERT INTO Building_ResourceQuantityRequirements (BuildingType, ResourceType, Cost) VALUES ('BUILDING_AXWWP662','RESOURCE_COAL', 1);
INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP662','YIELD_PRODUCTION',25);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP662','YIELD_PRODUCTION',10);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP662','RESOURCE_COAL','YIELD_PRODUCTION',4),('BUILDING_AXWWP662','RESOURCE_OIL','YIELD_PRODUCTION',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP662','Shatura Power Station'),
('TXT_KEY_BUILDING_AXWWP662_PEDIA','The Shatura Power Station is one of the oldest power stations in Russia.[NEWLINE][NEWLINE]Built in 1925, the power station initially used peat as its fuel source. Later on, the power plant has been diversified into multifuel.'),
('TXT_KEY_BUILDING_AXWWP662_QUOTE','[NEWLINE]"All options to produce, transmit, and store electricity should be considered."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP662_HELP','+4 [ICON_PRODUCTION] Production from [ICON_RES_COAL] Coal. +4 [ICON_PRODUCTION] Production from [ICON_RES_OIL] Oil. [COLOR_LIGHT_GREY]Requires oil resource, 1 coal.[ENDCOLOR]');




-- AXWWP663

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP663','TXT_KEY_BUILDING_AXWWP663','TXT_KEY_BUILDING_AXWWP663_PEDIA','TXT_KEY_BUILDING_AXWWP663_HELP','TXT_KEY_BUILDING_AXWWP663_QUOTE','BUILDINGCLASS_AXWWP663',1,-1,100,'AXWWP3_ATLAS',63,'axwwp663.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP663','TXT_KEY_BUILDING_AXWWP663','BUILDING_AXWWP663',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP663'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP663');

UPDATE Buildings SET
	HappinessPerCity = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	CityConnectionTradeRouteModifier = 20,
	TradeRouteLandDistanceModifier = 50,
	Cost = 1250,
	PrereqTech = 'TECH_COMBUSTION',
	MaxStartEra = 'ERA_POSTMODERN'
WHERE Type = 'BUILDING_AXWWP663';


INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP663','Trans-Siberian Railway'),
('TXT_KEY_BUILDING_AXWWP663_PEDIA','The Trans-Siberian Railway is a network of railways connecting Moscow with the Russian Far East.[NEWLINE][NEWLINE]With a length of 9,289 kilometres (5,772 miles), it is the longest railway line in the world. [NEWLINE][NEWLINE]There are connecting branch lines into Mongolia, China and North Korea. It has connected Moscow with Vladivostok since 1916, and is still being expanded.'),
('TXT_KEY_BUILDING_AXWWP663_QUOTE','[NEWLINE]"Dreams don''t work unless you do."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP663_HELP','+1 [ICON_HAPPINESS_1] Happiness per city. +20% [ICON_GOLD] Gold from [ICON_TRADE] City Connections. Increases distance for [ICON_TRADE] Land Trade Routes.');
