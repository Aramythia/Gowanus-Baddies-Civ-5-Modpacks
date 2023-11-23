-- AXWWP832

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP832','TXT_KEY_BUILDING_AXWWP832','TXT_KEY_BUILDING_AXWWP832_PEDIA','TXT_KEY_BUILDING_AXWWP832_HELP','TXT_KEY_BUILDING_AXWWP832_QUOTE','BUILDINGCLASS_AXWWP832',1,-1,100,'AXWWP4_ATLAS',32,'axwwp832.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP832','TXT_KEY_BUILDING_AXWWP832','BUILDING_AXWWP832',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP832'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP832');

UPDATE Buildings SET
	NearbyTerrainRequired = 'TERRAIN_DESERT',
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_OBSERVATORY',
	Cost = 1250,
	PrereqTech = 'TECH_TELECOM',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP832';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP832','YIELD_SCIENCE',12);
INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits) VALUES ('BUILDING_AXWWP832','UNIT_SCIENTIST',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP832','Atacama Large Millimeter Array'),
('TXT_KEY_BUILDING_AXWWP832_PEDIA','The Atacama Large Millimeter/submillimeter Array (ALMA) is an astronomical interferometer of radio telescopes in the Atacama Desert of northern Chile.[NEWLINE][NEWLINE]Costing about US$1.4 billion, it is the most expensive ground-based telescope in operation.'),
('TXT_KEY_BUILDING_AXWWP832_QUOTE','[NEWLINE]"The history of astronomy is a history of receding horizons."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP832_HELP','+1 free Scientist. Free Observatory in the city. [COLOR_LIGHT_GREY]Requires desert.[ENDCOLOR]');




-- AXWWP833

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP833','TXT_KEY_BUILDING_AXWWP833','TXT_KEY_BUILDING_AXWWP833_PEDIA','TXT_KEY_BUILDING_AXWWP833_HELP','TXT_KEY_BUILDING_AXWWP833_QUOTE','BUILDINGCLASS_AXWWP833',1,-1,100,'AXWWP4_ATLAS',33,'axwwp833.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP833','TXT_KEY_BUILDING_AXWWP833','BUILDING_AXWWP833',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP833'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP833');

UPDATE Buildings SET
	NumCityCostMod = 20,
	Espionage = 1,
	ExtraSpies = 1,
	TradeRouteSeaDistanceModifier = 50,
	TradeRouteLandDistanceModifier = 50,
	Cost = 1250,
	PrereqTech = 'TECH_TELECOM',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP833';


INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP833','Global Positioning System'),
('TXT_KEY_BUILDING_AXWWP833_PEDIA','The Global Positioning System (GPS), originally Navstar GPS, is a satellite-based radionavigation system owned by the United States government and operated by the United States Air Force.[NEWLINE][NEWLINE]It is a global navigation satellite system that provides geolocation and time information to a GPS receiver anywhere on or near the Earth where there is an unobstructed line of sight to four or more GPS satellites.'),
('TXT_KEY_BUILDING_AXWWP833_QUOTE','[NEWLINE]"Unknown airport with Cessna 150 circling overhead, identify yourself."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP833_HELP','+1 [ICON_SPY] Spy. Increases distance for [ICON_TRADE] Sea Trade Routes. Increases distance for [ICON_TRADE] Land Trade Routes.');




-- AXWWP834

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP834','TXT_KEY_BUILDING_AXWWP834','TXT_KEY_BUILDING_AXWWP834_PEDIA','TXT_KEY_BUILDING_AXWWP834_HELP','TXT_KEY_BUILDING_AXWWP834_QUOTE','BUILDINGCLASS_AXWWP834',1,-1,100,'AXWWP4_ATLAS',34,'axwwp834.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP834','TXT_KEY_BUILDING_AXWWP834','BUILDING_AXWWP834',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP834'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP834');

UPDATE Buildings SET
	Mountain = 1,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_ENGINEER',
	NumTradeRouteBonus = 1,
	TradeRouteLandDistanceModifier = 50,
	TradeRouteLandGoldBonus = 100,
	Cost = 1250,
	PrereqTech = 'TECH_MOBILE_TACTICS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP834';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP834','YIELD_GOLD',12);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP834','Gotthard Base Tunnel'),
('TXT_KEY_BUILDING_AXWWP834_PEDIA','The Gotthard Base Tunnel is a railway tunnel through the Alps in Switzerland.[NEWLINE][NEWLINE]With a route length of 57.09 km (35.5 mi), it is the world''s longest and deepest traffic tunnel and the first flat, low-level route through the Alps.'),
('TXT_KEY_BUILDING_AXWWP834_QUOTE','[NEWLINE]"When a train goes through a tunnel and it gets dark, you don''t throw away the ticket and jump off. You sit still and trust the engineer."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP834_HELP','Increases distance for [ICON_TRADE] Land Trade Routes. Increases [ICON_GOLD] Gold for [ICON_TRADE] Land Trade Routes. Additional [ICON_TRADE] Trade Route. [COLOR_LIGHT_GREY]Requires mountain.[ENDCOLOR]');




-- AXWWP835

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP835','TXT_KEY_BUILDING_AXWWP835','TXT_KEY_BUILDING_AXWWP835_PEDIA','TXT_KEY_BUILDING_AXWWP835_HELP','TXT_KEY_BUILDING_AXWWP835_QUOTE','BUILDINGCLASS_AXWWP835',1,-1,100,'AXWWP4_ATLAS',35,'axwwp835.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP835','TXT_KEY_BUILDING_AXWWP835','BUILDING_AXWWP835',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP835'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP835');

UPDATE Buildings SET
	Water = 1, MinAreaSize = 10,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_ENGINEER',
	TradeRouteLandGoldBonus = 100,
	Cost = 1250,
	PrereqTech = 'TECH_MOBILE_TACTICS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP835';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP835','YIELD_GOLD',12),('BUILDING_AXWWP835','YIELD_PRODUCTION',12);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP835','Akashi Kaikyo Bridge'),
('TXT_KEY_BUILDING_AXWWP835_PEDIA','The Akashi Kaikyo Bridge is a suspension bridge, which links the city of Kobe on the Japanese mainland of Honshu to Iwaya on Awaji Island.[NEWLINE][NEWLINE]It crosses the busy Akashi Strait as part of the Honshu–Shikoku Highway. It was completed in 1998, and has the longest central span of any suspension bridge in the world, at 1,991 metres (6,532 ft; 1.237 mi).'),
('TXT_KEY_BUILDING_AXWWP835_QUOTE','[NEWLINE]"I want to be the bridge to the next generation."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP835_HELP','Increases [ICON_GOLD] Gold for [ICON_TRADE] Land Trade Routes. [COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP836

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP836','TXT_KEY_BUILDING_AXWWP836','TXT_KEY_BUILDING_AXWWP836_PEDIA','TXT_KEY_BUILDING_AXWWP836_HELP','TXT_KEY_BUILDING_AXWWP836_QUOTE','BUILDINGCLASS_AXWWP836',1,-1,100,'AXWWP4_ATLAS',36,'axwwp836.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP836','TXT_KEY_BUILDING_AXWWP836','BUILDING_AXWWP836',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP836'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP836');

UPDATE Buildings SET
	River = 1,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_ENGINEER',
	CityConnectionTradeRouteModifier = 20,
	Cost = 1250,
	PrereqTech = 'TECH_MOBILE_TACTICS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP836';

INSERT INTO Building_RiverPlotYieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP836','YIELD_GOLD',1);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP836','YIELD_GOLD',12);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP836','Vasco da Gama Bridge'),
('TXT_KEY_BUILDING_AXWWP836_PEDIA','The Vasco da Gama Bridge is a cable-stayed bridge flanked by viaducts and range views that spans the Tagus River in Parque das Nacoes in Lisbon, the capital of Portugal.[NEWLINE][NEWLINE]It is the longest bridge entirely within Europe with a total length of 12.3 kilometres (7.6 mi).'),
('TXT_KEY_BUILDING_AXWWP836_QUOTE','[NEWLINE]"I am seeking for the bridge which leans from the visible to the invisible through reality."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP836_HELP','+1 [ICON_GOLD] Gold from River tiles. +20% [ICON_GOLD] Gold from [ICON_TRADE] City Connections. [COLOR_LIGHT_GREY]Requires river.[ENDCOLOR]');




-- AXWWP837

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP837','TXT_KEY_BUILDING_AXWWP837','TXT_KEY_BUILDING_AXWWP837_PEDIA','TXT_KEY_BUILDING_AXWWP837_HELP','TXT_KEY_BUILDING_AXWWP837_QUOTE','BUILDINGCLASS_AXWWP837',1,-1,100,'AXWWP4_ATLAS',37,'axwwp837.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP837','TXT_KEY_BUILDING_AXWWP837','BUILDING_AXWWP837',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP837'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP837');

UPDATE Buildings SET
	Happiness = 10,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_ENGINEER',
	CityConnectionTradeRouteModifier = 25,
	TradeRouteLandGoldBonus = 100,
	Cost = 1250,
	PrereqTech = 'TECH_ADVANCED_BALLISTICS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP837';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP837','YIELD_PRODUCTION',12);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP837','Maglev'),
('TXT_KEY_BUILDING_AXWWP837_PEDIA','Maglev (derived from magnetic levitation) is a system of train transportation that uses two sets of magnets, one set to repel and push the train up off the track as in levitation, then another set to move the "floating train" ahead at great speed taking advantage of the lack of friction.[NEWLINE][NEWLINE]Within certain "medium range" locations (usually between 200-400 miles) Maglev can compete favorably with high speed rail and airplanes.'),
('TXT_KEY_BUILDING_AXWWP837_QUOTE','[NEWLINE]"There''s something about the sound of a train that''s very romantic and nostalgic and hopeful."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP837_HELP','+25% [ICON_GOLD] Gold from [ICON_TRADE] City Connections. Increases [ICON_GOLD] Gold for [ICON_TRADE] Land Trade Routes.');




-- AXWWP840

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP840','TXT_KEY_BUILDING_AXWWP840','TXT_KEY_BUILDING_AXWWP840_PEDIA','TXT_KEY_BUILDING_AXWWP840_HELP','TXT_KEY_BUILDING_AXWWP840_QUOTE','BUILDINGCLASS_AXWWP840',1,-1,100,'AXWWP4_ATLAS',40,'axwwp840.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP840','TXT_KEY_BUILDING_AXWWP840','BUILDING_AXWWP840',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP840'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP840');

UPDATE Buildings SET
	Water = 1, MinAreaSize = 10,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1250,
	PrereqTech = 'TECH_ADVANCED_BALLISTICS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP840';

INSERT INTO Building_TerrainYieldChanges (BuildingType, TerrainType, YieldType, Yield) VALUES ('BUILDING_AXWWP840','TERRAIN_OCEAN','YIELD_PRODUCTION',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP840','Agucadoura Wave Farm'),
('TXT_KEY_BUILDING_AXWWP840_PEDIA','The Agucadoura Wave Farm was the world''s first wave farm. It was located 5 km (3 mi) offshore near Povoa de Varzim north of Porto in Portugal.[NEWLINE][NEWLINE]The farm was designed to use three Pelamis Wave Energy Converters to convert the motion of the ocean surface waves into electricity, totalling to 2.25 MW in total installed capacity.'),
('TXT_KEY_BUILDING_AXWWP840_QUOTE','[NEWLINE]"The ocean is a mighty harmonist."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP840_HELP','+1 [ICON_PRODUCTION] Production from Ocean tiles. [COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP839

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP839','TXT_KEY_BUILDING_AXWWP839','TXT_KEY_BUILDING_AXWWP839_PEDIA','TXT_KEY_BUILDING_AXWWP839_HELP','TXT_KEY_BUILDING_AXWWP839_QUOTE','BUILDINGCLASS_AXWWP839',1,-1,100,'AXWWP4_ATLAS',39,'axwwp839.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP839','TXT_KEY_BUILDING_AXWWP839','BUILDING_AXWWP839',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP839'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP839');

UPDATE Buildings SET
	Happiness = 5,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	Cost = 1250,
	PrereqTech = 'TECH_SATELLITES',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP839';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP839','YIELD_SCIENCE',12);
INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits) VALUES ('BUILDING_AXWWP839','UNIT_ENGINEER',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP839','Curiosity'),
('TXT_KEY_BUILDING_AXWWP839_PEDIA','Curiosity is a car-sized rover designed to explore Gale Crater on Mars as part of NASA''s Mars Science Laboratory mission.[NEWLINE][NEWLINE]As of June 1, 2018, Curiosity has been on Mars for 2069 sols (2125 total days) since landing on August 6, 2012'),
('TXT_KEY_BUILDING_AXWWP839_QUOTE','[NEWLINE]"Projects we have completed demonstrate what we know - future projects decide what we will learn."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP839_HELP','+1 free Engineer.');




-- AXWWP841

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP841','TXT_KEY_BUILDING_AXWWP841','TXT_KEY_BUILDING_AXWWP841_PEDIA','TXT_KEY_BUILDING_AXWWP841_HELP','TXT_KEY_BUILDING_AXWWP841_QUOTE','BUILDINGCLASS_AXWWP841',1,-1,100,'AXWWP4_ATLAS',41,'axwwp841.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP841','TXT_KEY_BUILDING_AXWWP841','BUILDING_AXWWP841',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP841'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP841');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	Cost = 1250,
	PrereqTech = 'TECH_SATELLITES',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP841';

INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP841','YIELD_SCIENCE',10);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP841','YIELD_SCIENCE',12);
INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits) VALUES ('BUILDING_AXWWP841','UNIT_SCIENTIST',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP841','Alpha Magnetic Spectrometer'),
('TXT_KEY_BUILDING_AXWWP841_PEDIA','The Alpha Magnetic Spectrometer is a particle physics experiment module that is mounted on the International Space Station (ISS).[NEWLINE][NEWLINE]The module is a detector that measures antimatter in cosmic rays, this information is needed to understand the formation of the Universe and search for evidence of dark matter.'),
('TXT_KEY_BUILDING_AXWWP841_QUOTE','[NEWLINE]"No matter how dark or precarious it may seem, continue to pursue your dream."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP841_HELP','+1 free Scientist.');




-- AXWWP838

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP838','TXT_KEY_BUILDING_AXWWP838','TXT_KEY_BUILDING_AXWWP838_PEDIA','TXT_KEY_BUILDING_AXWWP838_HELP','TXT_KEY_BUILDING_AXWWP838_QUOTE','BUILDINGCLASS_AXWWP838',1,-1,100,'AXWWP4_ATLAS',38,'axwwp838.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP838','TXT_KEY_BUILDING_AXWWP838','BUILDING_AXWWP838',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP838'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP838');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1250,
	PrereqTech = 'TECH_ROBOTICS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP838';

INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP838','YIELD_PRODUCTION',25);
INSERT INTO Building_FeatureYieldChanges (BuildingType, FeatureType, YieldType, Yield) VALUES ('BUILDING_AXWWP838','FEATURE_FOREST','YIELD_PRODUCTION',1);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP838','YIELD_PRODUCTION',12);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP838','Alholmens Kraft Power Station'),
('TXT_KEY_BUILDING_AXWWP838_PEDIA','The Alholmens Kraft Power Station is a biomass power station in Alholmen, Jakobstad in Ostrobothnia region, Finland. It is the largest biomass cogeneration power station in the world.'),
('TXT_KEY_BUILDING_AXWWP838_QUOTE','[NEWLINE]"Try everything. Do everything. Coal. Nuclear. Solar. Biomass. You name it."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP838_HELP','+1 [ICON_PRODUCTION] Production from Forest.');




-- AXWWP842

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP842','TXT_KEY_BUILDING_AXWWP842','TXT_KEY_BUILDING_AXWWP842_PEDIA','TXT_KEY_BUILDING_AXWWP842_HELP','TXT_KEY_BUILDING_AXWWP842_QUOTE','BUILDINGCLASS_AXWWP842',1,-1,100,'AXWWP4_ATLAS',42,'axwwp842.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP842','TXT_KEY_BUILDING_AXWWP842','BUILDING_AXWWP842',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP842'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP842');

UPDATE Buildings SET
	Water = 1, MinAreaSize = 10,
	FreeBuildingThisCity = 'BUILDINGCLASS_LIGHTHOUSE',
	Cost = 1250,
	PrereqTech = 'TECH_ROBOTICS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP842';

INSERT INTO Building_FeatureYieldChanges (BuildingType, FeatureType, YieldType, Yield) VALUES ('BUILDING_AXWWP842','FEATURE_ATOLL','YIELD_CULTURE',5);
INSERT INTO Building_FeatureYieldChanges (BuildingType, FeatureType, YieldType, Yield) VALUES ('BUILDING_AXWWP842','FEATURE_ATOLL','YIELD_GOLD',5);
INSERT INTO Building_TerrainYieldChanges (BuildingType, TerrainType, YieldType, Yield) VALUES ('BUILDING_AXWWP842','TERRAIN_COAST','YIELD_PRODUCTION',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP842','Jeddah Light'),
('TXT_KEY_BUILDING_AXWWP842_PEDIA','Jeddah Light is an active lighthouse in Jeddah, Saudi Arabia.[NEWLINE][NEWLINE]With a height of approximately 436 feet (133 m) it "has a credible claim to be the world''s tallest light tower". It is located at the end of the outer pier on the north side of the entrance to Jeddah Seaport.'),
('TXT_KEY_BUILDING_AXWWP842_QUOTE','[NEWLINE]"The difference between ordinary and extraordinary is that little extra."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP842_HELP','+5 [ICON_CULTURE] Culture from Atoll. +5 [ICON_GOLD] Gold from Atoll. Free Lighthouse in the city. [COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP843

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP843','TXT_KEY_BUILDING_AXWWP843','TXT_KEY_BUILDING_AXWWP843_PEDIA','TXT_KEY_BUILDING_AXWWP843_HELP','TXT_KEY_BUILDING_AXWWP843_QUOTE','BUILDINGCLASS_AXWWP843',1,-1,100,'AXWWP4_ATLAS',43,'axwwp843.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP843','TXT_KEY_BUILDING_AXWWP843','BUILDING_AXWWP843',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP843'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP843');

UPDATE Buildings SET
	Water = 1, MinAreaSize = 10,
	SpecialistCount = 2,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1250,
	PrereqTech = 'TECH_ROBOTICS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP843';

INSERT INTO Building_TerrainYieldChanges (BuildingType, TerrainType, YieldType, Yield) VALUES ('BUILDING_AXWWP843','TERRAIN_COAST','YIELD_PRODUCTION',1);
INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits) VALUES ('BUILDING_AXWWP843','UNIT_ENGINEER',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP843','Delta Works'),
('TXT_KEY_BUILDING_AXWWP843_PEDIA','The Delta Works is a series of construction projects in the southwest of the Netherlands to protect a large area of land around the Rhine-Meuse-Scheldt delta from the sea.[NEWLINE][NEWLINE]The works consist of dams, sluices, locks, dykes, levees, and storm surge barriers located in the provinces of South Holland and Zeeland.'),
('TXT_KEY_BUILDING_AXWWP843_QUOTE','[NEWLINE]"The difficult is done at once, the impossible takes a little longer."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP843_HELP','+1 [ICON_PRODUCTION] Production from Coast tiles. +1 free Engineer. [COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP844

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP844','TXT_KEY_BUILDING_AXWWP844','TXT_KEY_BUILDING_AXWWP844_PEDIA','TXT_KEY_BUILDING_AXWWP844_HELP','TXT_KEY_BUILDING_AXWWP844_QUOTE','BUILDINGCLASS_AXWWP844',1,-1,100,'AXWWP4_ATLAS',44,'axwwp844.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP844','TXT_KEY_BUILDING_AXWWP844','BUILDING_AXWWP844',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP844'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP844');

UPDATE Buildings SET
	SpecialistCount = 2,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1250,
	PrereqTech = 'TECH_LASERS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP844';

INSERT INTO Building_LocalResourceAnds (BuildingType, ResourceType) VALUES ('BUILDING_AXWWP844','RESOURCE_OIL');
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP844','YIELD_PRODUCTION',12);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP844','RESOURCE_OIL','YIELD_GOLD',6),('BUILDING_AXWWP844','RESOURCE_OIL','YIELD_SCIENCE',6);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP844','Perdido Oil Platform'),
('TXT_KEY_BUILDING_AXWWP844_PEDIA','Perdido is the deepest floating oil platform in the world at a water depth of about 2450 meters (8000 feet) operated by the Shell Oil Company in the Gulf of Mexico.[NEWLINE][NEWLINE]The Perdido''s hull or spar was constructed by Technip in Pori, Finland. The temperature difference between Finland and Texas posed a challenge in assembling the pieces as the components built in cold of northern Europe expand in the heat of the Gulf of Mexico. Computer-guided lasers marked out the measurements to ensure precision.'),
('TXT_KEY_BUILDING_AXWWP844_QUOTE','[NEWLINE]"Formula for success: rise early, work hard, strike oil."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP844_HELP','+6 [ICON_GOLD] Gold from [ICON_RES_OIL] Oil. +6 [ICON_RESEARCH] Science from [ICON_RES_OIL] Oil. [COLOR_LIGHT_GREY]Requires oil resource.[ENDCOLOR]');




-- AXWWP845

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP845','TXT_KEY_BUILDING_AXWWP845','TXT_KEY_BUILDING_AXWWP845_PEDIA','TXT_KEY_BUILDING_AXWWP845_HELP','TXT_KEY_BUILDING_AXWWP845_QUOTE','BUILDINGCLASS_AXWWP845',1,-1,100,'AXWWP4_ATLAS',45,'axwwp845.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP845','TXT_KEY_BUILDING_AXWWP845','BUILDING_AXWWP845',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP845'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP845');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_OBSERVATORY',
	Cost = 1250,
	PrereqTech = 'TECH_LASERS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP845';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP845','YIELD_SCIENCE',12);
INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits) VALUES ('BUILDING_AXWWP845','UNIT_SCIENTIST',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP845','Very Large Telescope'),
('TXT_KEY_BUILDING_AXWWP845_PEDIA','The Very Large Telescope (VLT) is a telescope facility operated by the European Southern Observatory on Cerro Paranal in the Atacama Desert of northern Chile.[NEWLINE][NEWLINE]The VLT consists of four individual telescopes, each with a primary mirror 8.2 m across, which are generally used separately but can be used together to achieve very high angular resolution.[NEWLINE][NEWLINE]Laser is used for adaptive optics. It excites sodium atoms in atmosphere and creates a laser guide star.'),
('TXT_KEY_BUILDING_AXWWP845_QUOTE','[NEWLINE]"It''s not what you look at that matters, it''s what you see."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP845_HELP','+1 free Scientist. Free Observatory in the city.');




-- AXWWP846

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP846','TXT_KEY_BUILDING_AXWWP846','TXT_KEY_BUILDING_AXWWP846_PEDIA','TXT_KEY_BUILDING_AXWWP846_HELP','TXT_KEY_BUILDING_AXWWP846_QUOTE','BUILDINGCLASS_AXWWP846',1,-1,100,'AXWWP4_ATLAS',46,'axwwp846.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP846','TXT_KEY_BUILDING_AXWWP846','BUILDING_AXWWP846',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP846'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP846');

UPDATE Buildings SET
	GreatPeopleRateModifier = 25,
	FreeGreatPeople = 1,
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	Cost = 1250,
	PrereqTech = 'TECH_LASERS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP846';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP846','YIELD_SCIENCE',12);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP846','LIGO'),
('TXT_KEY_BUILDING_AXWWP846_PEDIA','The Laser Interferometer Gravitational-Wave Observatory (LIGO) is a large-scale physics experiment and observatory to detect cosmic gravitational waves and to develop gravitational-wave observations as an astronomical tool.[NEWLINE][NEWLINE]Two large observatories were built in the United States with the aim of detecting gravitational waves by laser interferometry.[NEWLINE][NEWLINE]These can detect a change in the 4 km mirror spacing of less than a ten-thousandth the charge diameter of a proton, equivalent to measuring the distance from Earth to Proxima Centauri (4.0208x1013km) with an accuracy smaller than the width of a human hair.'),
('TXT_KEY_BUILDING_AXWWP846_QUOTE','[NEWLINE]"Theory guides. Experiment decides."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP846_HELP','+25% [ICON_GREAT_PEOPLE] Great People rate in the city. [ICON_GREAT_PEOPLE] Great Person arrives.');




-- AXWWP847

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP847','TXT_KEY_BUILDING_AXWWP847','TXT_KEY_BUILDING_AXWWP847_PEDIA','TXT_KEY_BUILDING_AXWWP847_HELP','TXT_KEY_BUILDING_AXWWP847_QUOTE','BUILDINGCLASS_AXWWP847',1,-1,100,'AXWWP4_ATLAS',47,'axwwp847.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP847','TXT_KEY_BUILDING_AXWWP847','BUILDING_AXWWP847',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP847'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP847');

UPDATE Buildings SET
	HappinessPerCity = 2,
	Espionage = 1,
	ExtraSpies = 1,
	Cost = 1250,
	PrereqTech = 'TECH_INTERNET',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP847';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP847','YIELD_GOLD',12);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP847','Virtualization'),
('TXT_KEY_BUILDING_AXWWP847_PEDIA','In computing, virtualization refers to the act of creating a virtual (rather than actual) version of something, including virtual computer hardware platforms, storage devices, and computer network resources.'),
('TXT_KEY_BUILDING_AXWWP847_QUOTE','[NEWLINE]"If my room is clean, it means that my internet is not working."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP847_HELP','+2 [ICON_HAPPINESS_1] Happiness per city. +1 [ICON_SPY] Spy.');




-- AXWWP848

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP848','TXT_KEY_BUILDING_AXWWP848','TXT_KEY_BUILDING_AXWWP848_PEDIA','TXT_KEY_BUILDING_AXWWP848_HELP','TXT_KEY_BUILDING_AXWWP848_QUOTE','BUILDINGCLASS_AXWWP848',1,-1,100,'AXWWP4_ATLAS',48,'axwwp848.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP848','TXT_KEY_BUILDING_AXWWP848','BUILDING_AXWWP848',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP848'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP848');

UPDATE Buildings SET
	GlobalPopulationChange = 1,
	SpecialistCount = 2,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_MERCHANT',
	Cost = 1250,
	PrereqTech = 'TECH_INTERNET',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP848';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP848','YIELD_GOLD',12),('BUILDING_AXWWP848','YIELD_SCIENCE',12);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP848','Artificial Intelligence'),
('TXT_KEY_BUILDING_AXWWP848_PEDIA','Artificial intelligence is intelligence demonstrated by machines, in contrast to the natural intelligence displayed by humans and other animals.[NEWLINE][NEWLINE]Colloquially, the term "artificial intelligence" is applied when a machine mimics "cognitive" functions that humans associate with other human minds, such as "learning" and "problem solving".'),
('TXT_KEY_BUILDING_AXWWP848_QUOTE','[NEWLINE]"I''m not a complete idiot. Some pieces are missing."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP848_HELP','+1 [ICON_CITIZEN] Citizen in every city.');




-- AXWWP849

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP849','TXT_KEY_BUILDING_AXWWP849','TXT_KEY_BUILDING_AXWWP849_PEDIA','TXT_KEY_BUILDING_AXWWP849_HELP','TXT_KEY_BUILDING_AXWWP849_QUOTE','BUILDINGCLASS_AXWWP849',1,-1,100,'AXWWP4_ATLAS',49,'axwwp849.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP849','TXT_KEY_BUILDING_AXWWP849','BUILDING_AXWWP849',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP849'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP849');

UPDATE Buildings SET
	Water = 1, MinAreaSize = 10,
	FreeBuilding = 'BUILDINGCLASS_AIRPORT',
	Cost = 1250,
	PrereqTech = 'TECH_GLOBALIZATION',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP849';

INSERT INTO Building_DomainFreeExperiences (BuildingType, DomainType, Experience) VALUES ('BUILDING_AXWWP849','DOMAIN_AIR',20);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP849','Kansai International Airport'),
('TXT_KEY_BUILDING_AXWWP849_PEDIA','Kansai International Airport is an international airport located on an artificial island in the middle of Osaka Bay off the Honshu shore.'),
('TXT_KEY_BUILDING_AXWWP849_QUOTE','[NEWLINE]"The captain, the co-pilot, and the autopilot, say thank you for flying, and wish you a good day."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP849_HELP','+20 [ICON_WAR] XP for Air units. Free Airport in every city. [COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP850

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP850','TXT_KEY_BUILDING_AXWWP850','TXT_KEY_BUILDING_AXWWP850_PEDIA','TXT_KEY_BUILDING_AXWWP850_HELP','TXT_KEY_BUILDING_AXWWP850_QUOTE','BUILDINGCLASS_AXWWP850',1,-1,100,'AXWWP4_ATLAS',50,'axwwp850.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP850','TXT_KEY_BUILDING_AXWWP850','BUILDING_AXWWP850',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP850'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP850');

UPDATE Buildings SET
	Happiness = 10,
	GlobalCultureRateModifier = 10,
	GreatWorkCount = 3,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT',
	Cost = 1250,
	PrereqTech = 'TECH_GLOBALIZATION',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP850';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP850','YIELD_CULTURE',12),('BUILDING_AXWWP850','YIELD_GOLD',12);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP850','Millennium Dome'),
('TXT_KEY_BUILDING_AXWWP850_PEDIA','The Millennium Dome, also referred to simply as The Dome, is the original name of a large dome-shaped building, originally used to house the Millennium Experience, a major exhibition celebrating the beginning of the third millennium.[NEWLINE][NEWLINE]Located on the Greenwich Peninsula in South East London, England, the exhibition was open to the public from 1 January to 31 December 2000.'),
('TXT_KEY_BUILDING_AXWWP850_QUOTE','[NEWLINE]"The past, present, and future walk into a bar. It was tense."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP850_HELP','+10% [ICON_CULTURE] Culture in every city.');




-- AXWWP851

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP851','TXT_KEY_BUILDING_AXWWP851','TXT_KEY_BUILDING_AXWWP851_PEDIA','TXT_KEY_BUILDING_AXWWP851_HELP','TXT_KEY_BUILDING_AXWWP851_QUOTE','BUILDINGCLASS_AXWWP851',1,-1,100,'AXWWP4_ATLAS',51,'axwwp851.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP851','TXT_KEY_BUILDING_AXWWP851','BUILDING_AXWWP851',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP851'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP851');

UPDATE Buildings SET
	Water = 1, MinAreaSize = 10,
	SpecialistCount = 2,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_MERCHANT',
	TradeRouteRecipientBonus = 4,
	TradeRouteSeaDistanceModifier = 50,
	TradeRouteSeaGoldBonus = 100,
	Cost = 1250,
	PrereqTech = 'TECH_GLOBALIZATION',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP851';


INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP851','Yangshan Deep-Water Port'),
('TXT_KEY_BUILDING_AXWWP851_PEDIA','Yangshan Port is a deep water port for container ships in Hangzhou Bay south of Shanghai.[NEWLINE][NEWLINE]Built to allow the Port of Shanghai to grow despite shallow waters near the shore, it allows berths with depths of up to 15 metres (49 ft) to be built, and can handle today''s largest container ships.[NEWLINE][NEWLINE]The Yangshan Port is connected to the mainland via the 32.5 km (20.2 mi) Donghai Bridge, opened on 1 December 2005 as the world''s longest sea bridge.'),
('TXT_KEY_BUILDING_AXWWP851_QUOTE','[NEWLINE]"It is not the going out of port, but the coming in, that determines the success of a voyage."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP851_HELP','Increases distance for [ICON_TRADE] Sea Trade Routes. Increases [ICON_GOLD] Gold for [ICON_TRADE] Sea Trade Routes. [ICON_GOLD] Gold bonus for Trade Route Recipient. [COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP852

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP852','TXT_KEY_BUILDING_AXWWP852','TXT_KEY_BUILDING_AXWWP852_PEDIA','TXT_KEY_BUILDING_AXWWP852_HELP','TXT_KEY_BUILDING_AXWWP852_QUOTE','BUILDINGCLASS_AXWWP852',1,-1,100,'AXWWP4_ATLAS',52,'axwwp852.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP852','TXT_KEY_BUILDING_AXWWP852','BUILDING_AXWWP852',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP852'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP852');

UPDATE Buildings SET
	Water = 1, MinAreaSize = 10,
	GreatPeopleRateChange = 3,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1250,
	PrereqTech = 'TECH_GLOBALIZATION',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP852';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP852','YIELD_CULTURE',12),('BUILDING_AXWWP852','YIELD_FOOD',12),('BUILDING_AXWWP852','YIELD_GOLD',12),('BUILDING_AXWWP852','YIELD_PRODUCTION',12);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP852','Channel Tunnel'),
('TXT_KEY_BUILDING_AXWWP852_PEDIA','The Channel Tunnel is a rail tunnel linking Folkestone, Kent, in the United Kingdom, with Coquelles, Pas-de-Calais, near Calais in northern France, beneath the English Channel at the Strait of Dover.[NEWLINE][NEWLINE]At its lowest point, it is 75 m (250 ft) deep below the sea bed and 115 m (380 ft) below sea level. At 37.9 kilometres (23.5 mi), the tunnel has the longest undersea portion of any tunnel in the world.'),
('TXT_KEY_BUILDING_AXWWP852_QUOTE','[NEWLINE]"Sometimes that light at the end of the tunnel is a train."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP852_HELP','[COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP853

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP853','TXT_KEY_BUILDING_AXWWP853','TXT_KEY_BUILDING_AXWWP853_PEDIA','TXT_KEY_BUILDING_AXWWP853_HELP','TXT_KEY_BUILDING_AXWWP853_QUOTE','BUILDINGCLASS_AXWWP853',1,-1,100,'AXWWP4_ATLAS',53,'axwwp853.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP853','TXT_KEY_BUILDING_AXWWP853','BUILDING_AXWWP853',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP853'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP853');

UPDATE Buildings SET
	NumCityCostMod = 20,
	SpecialistCount = 2,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_LABORATORY',
	Cost = 1250,
	PrereqTech = 'TECH_PARTICLE_PHYSICS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP853';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP853','YIELD_PRODUCTION',12),('BUILDING_AXWWP853','YIELD_SCIENCE',12);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP853','RESOURCE_ALUMINUM','YIELD_SCIENCE',5),('BUILDING_AXWWP853','RESOURCE_COAL','YIELD_SCIENCE',5),('BUILDING_AXWWP853','RESOURCE_OIL','YIELD_SCIENCE',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP853','Synchrotron Radiation Facility'),
('TXT_KEY_BUILDING_AXWWP853_PEDIA','The European Synchrotron Radiation Facility (ESRF) is a joint research facility situated in Grenoble, France, and supported by 22 countries.[NEWLINE][NEWLINE]Research at the ESRF focuses, in large part, on the use of X-ray radiation in fields as diverse as protein crystallography, earth science, paleontology, materials science, chemistry and physics. Facilities such as the ESRF offer a flux, energy range and resolution unachievable with conventional (laboratory) radiation sources.'),
('TXT_KEY_BUILDING_AXWWP853_QUOTE','[NEWLINE]"When curiosity sees a bright red button that says: don''t push, it only reads the second word."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP853_HELP','+5 [ICON_RESEARCH] Science from [ICON_RES_ALUMINUM] Aluminum. +5 [ICON_RESEARCH] Science from [ICON_RES_COAL] Coal. +5 [ICON_RESEARCH] Science from [ICON_RES_OIL] Oil. Free Laboratory in the city.');




-- AXWWP854

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP854','TXT_KEY_BUILDING_AXWWP854','TXT_KEY_BUILDING_AXWWP854_PEDIA','TXT_KEY_BUILDING_AXWWP854_HELP','TXT_KEY_BUILDING_AXWWP854_QUOTE','BUILDINGCLASS_AXWWP854',1,-1,100,'AXWWP4_ATLAS',54,'axwwp854.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP854','TXT_KEY_BUILDING_AXWWP854','BUILDING_AXWWP854',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP854'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP854');

UPDATE Buildings SET
	SpecialistCount = 2,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	Cost = 1250,
	PrereqTech = 'TECH_PARTICLE_PHYSICS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP854';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP854','YIELD_GOLD',12),('BUILDING_AXWWP854','YIELD_SCIENCE',12);
INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits) VALUES ('BUILDING_AXWWP854','UNIT_SCIENTIST',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP854','Tevatron'),
('TXT_KEY_BUILDING_AXWWP854_PEDIA','The Tevatron was a circular particle accelerator (now inactive, since 2011) in the United States, at the Fermi National Accelerator Laboratory, east of Batavia, Illinois, and holds the title of the second highest energy particle collider in the world, after the Large Hadron Collider.[NEWLINE][NEWLINE]The main achievement of the Tevatron was the discovery in 1995 of the top quark—the last fundamental fermion predicted by the standard model of particle physics.'),
('TXT_KEY_BUILDING_AXWWP854_QUOTE','[NEWLINE]"My mind is like lighting, one brilliant flash, then its gone..."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP854_HELP','+1 free Scientist.');




-- AXWWP855

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP855','TXT_KEY_BUILDING_AXWWP855','TXT_KEY_BUILDING_AXWWP855_PEDIA','TXT_KEY_BUILDING_AXWWP855_HELP','TXT_KEY_BUILDING_AXWWP855_QUOTE','BUILDINGCLASS_AXWWP855',1,-1,100,'AXWWP4_ATLAS',55,'axwwp855.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP855','TXT_KEY_BUILDING_AXWWP855','BUILDING_AXWWP855',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP855'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP855');

UPDATE Buildings SET
	NearbyTerrainRequired = 'TERRAIN_SNOW',
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	Cost = 1250,
	PrereqTech = 'TECH_PARTICLE_PHYSICS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP855';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP855','YIELD_SCIENCE',12);
INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits) VALUES ('BUILDING_AXWWP855','UNIT_SCIENTIST',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP855','IceCube Neutrino Observatory'),
('TXT_KEY_BUILDING_AXWWP855_PEDIA','The IceCube Neutrino Observatory is a neutrino observatory constructed at the Amundsen–Scott South Pole Station in Antarctica. Its thousands of sensors are distributed over a cubic kilometre of volume under the Antarctic ice.[NEWLINE][NEWLINE]In November 2013 it was announced that IceCube had detected 28 neutrinos that likely originated outside the Solar System.'),
('TXT_KEY_BUILDING_AXWWP855_QUOTE','[NEWLINE]"A neutrino walks into a bar... and keeps right on going..."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP855_HELP','+2 free Scientists. [COLOR_LIGHT_GREY]Requires snow.[ENDCOLOR]');




-- AXWWP856

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP856','TXT_KEY_BUILDING_AXWWP856','TXT_KEY_BUILDING_AXWWP856_PEDIA','TXT_KEY_BUILDING_AXWWP856_HELP','TXT_KEY_BUILDING_AXWWP856_QUOTE','BUILDINGCLASS_AXWWP856',1,-1,100,'AXWWP4_ATLAS',56,'axwwp856.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP856','TXT_KEY_BUILDING_AXWWP856','BUILDING_AXWWP856',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP856'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP856');

UPDATE Buildings SET
	SpecialistCount = 3,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_LABORATORY',
	Cost = 1250,
	PrereqTech = 'TECH_PARTICLE_PHYSICS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP856';

INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP856','YIELD_SCIENCE',15);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP856','YIELD_PRODUCTION',12),('BUILDING_AXWWP856','YIELD_SCIENCE',12);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP856','KEK'),
('TXT_KEY_BUILDING_AXWWP856_PEDIA','The High Energy Accelerator Research Organization, known as KEK, is a Japanese organization whose purpose is to operate the largest particle physics laboratory in Japan, situated in Tsukuba, Ibaraki prefecture.[NEWLINE][NEWLINE]KEK''s main function is to provide the particle accelerators and other infrastructure needed for high-energy physics, material science, structural biology, radiation science, computing science, nuclear transmutation and so on.'),
('TXT_KEY_BUILDING_AXWWP856_QUOTE','[NEWLINE]"I had trouble with physics in college. When I signed up I thought it said psychics."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP856_HELP','Free Laboratory in the city.');




-- AXWWP857

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP857','TXT_KEY_BUILDING_AXWWP857','TXT_KEY_BUILDING_AXWWP857_PEDIA','TXT_KEY_BUILDING_AXWWP857_HELP','TXT_KEY_BUILDING_AXWWP857_QUOTE','BUILDINGCLASS_AXWWP857',1,-1,100,'AXWWP4_ATLAS',57,'axwwp857.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP857','TXT_KEY_BUILDING_AXWWP857','BUILDING_AXWWP857',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP857'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP857');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_LABORATORY',
	Cost = 1250,
	PrereqTech = 'TECH_NUCLEAR_FUSION',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP857';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP857','YIELD_SCIENCE',12);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP857','RESOURCE_URANIUM','YIELD_PRODUCTION',6);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP857','TCV'),
('TXT_KEY_BUILDING_AXWWP857_PEDIA','The Tokamak a configuration variable (TCV, literally "variable configuration tokamak") is a research fusion reactor of the Ecole polytechnique federale de Lausanne.[NEWLINE][NEWLINE]Its distinguishing feature over other tokamaks is that its torus section is three times higher than wide. This allows studying several shapes of plasmas, which is particularly relevant since the shape of the plasma has links to the performance of the reactor.'),
('TXT_KEY_BUILDING_AXWWP857_QUOTE','[NEWLINE]"If something can go wrong, it will."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP857_HELP','+6 [ICON_PRODUCTION] Production from [ICON_RES_URANIUM] Uranium. Free Laboratory in the city.');




-- AXWWP858

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP858','TXT_KEY_BUILDING_AXWWP858','TXT_KEY_BUILDING_AXWWP858_PEDIA','TXT_KEY_BUILDING_AXWWP858_HELP','TXT_KEY_BUILDING_AXWWP858_QUOTE','BUILDINGCLASS_AXWWP858',1,-1,100,'AXWWP4_ATLAS',58,'axwwp858.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP858','TXT_KEY_BUILDING_AXWWP858','BUILDING_AXWWP858',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP858'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP858');

UPDATE Buildings SET
	NumCityCostMod = 20,
	SpecialistCount = 1,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_LABORATORY',
	Cost = 1250,
	PrereqTech = 'TECH_NUCLEAR_FUSION',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP858';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP858','YIELD_SCIENCE',12);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP858','RESOURCE_URANIUM','YIELD_PRODUCTION',4),('BUILDING_AXWWP858','RESOURCE_URANIUM','YIELD_SCIENCE',4);
INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits) VALUES ('BUILDING_AXWWP858','UNIT_ENGINEER',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP858','National Ignition Facility'),
('TXT_KEY_BUILDING_AXWWP858_PEDIA','The National Ignition Facility (NIF) is a large laser-based inertial confinement fusion research device, located at the Lawrence Livermore National Laboratory in Livermore, California.[NEWLINE][NEWLINE]NIF uses lasers to heat and compress a small amount of hydrogen fuel to the point where nuclear fusion reactions take place.'),
('TXT_KEY_BUILDING_AXWWP858_QUOTE','[NEWLINE]"A scientist can discover a new star but he cannot make one. He would have to ask an engineer to do it for him."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP858_HELP','+4 [ICON_PRODUCTION] Production from [ICON_RES_URANIUM] Uranium. +4 [ICON_RESEARCH] Science from [ICON_RES_URANIUM] Uranium. +1 free Engineer. Free Laboratory in the city.');




-- AXWWP859

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP859','TXT_KEY_BUILDING_AXWWP859','TXT_KEY_BUILDING_AXWWP859_PEDIA','TXT_KEY_BUILDING_AXWWP859_HELP','TXT_KEY_BUILDING_AXWWP859_QUOTE','BUILDINGCLASS_AXWWP859',1,-1,100,'AXWWP4_ATLAS',59,'axwwp859.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP859','TXT_KEY_BUILDING_AXWWP859','BUILDING_AXWWP859',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP859'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP859');

UPDATE Buildings SET
	NumCityCostMod = 20,
	FoodKept = 20,
	SpecialistCount = 2,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_LABORATORY',
	Cost = 1250,
	PrereqTech = 'TECH_NANOTECHNOLOGY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP859';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP859','YIELD_FOOD',6),('BUILDING_AXWWP859','YIELD_PRODUCTION',6),('BUILDING_AXWWP859','YIELD_SCIENCE',12);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP859','Iberian Nanotechnology Laboratory'),
('TXT_KEY_BUILDING_AXWWP859_PEDIA','International Iberian Nanotechnology Laboratory (INL), in Braga, Portugal, a fully international research organization in Europe in the field of nanoscience and nanotechnology.[NEWLINE][NEWLINE]INL provides a research environment promoting an interdisciplinary effort in addressing the major challenges in the emerging areas of Nanobiotechnology, Nanoelectronics, Nanomedicine and Materials Science at Nanoscale.'),
('TXT_KEY_BUILDING_AXWWP859_QUOTE','[NEWLINE]"Imagination is more important than knowledge."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP859_HELP','20% [ICON_FOOD] Food kept in the city after [ICON_CITIZEN] Citizen is born. Free Laboratory in the city.');




-- AXWWP860

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP860','TXT_KEY_BUILDING_AXWWP860','TXT_KEY_BUILDING_AXWWP860_PEDIA','TXT_KEY_BUILDING_AXWWP860_HELP','TXT_KEY_BUILDING_AXWWP860_QUOTE','BUILDINGCLASS_AXWWP860',1,-1,100,'AXWWP4_ATLAS',60,'axwwp860.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP860','TXT_KEY_BUILDING_AXWWP860','BUILDING_AXWWP860',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP860'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP860');

UPDATE Buildings SET
	SpecialistCount = 3,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_LABORATORY',
	Cost = 1250,
	PrereqTech = 'TECH_NANOTECHNOLOGY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP860';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP860','YIELD_PRODUCTION',12),('BUILDING_AXWWP860','YIELD_SCIENCE',12);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP860','RESOURCE_COAL','YIELD_SCIENCE',6),('BUILDING_AXWWP860','RESOURCE_OIL','YIELD_SCIENCE',6);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP860','National Institute for Nanotechnology'),
('TXT_KEY_BUILDING_AXWWP860_PEDIA','The National Institute for Nanotechnology (NINT) is a research institution located on the University of Alberta main campus, in Edmonton, Alberta, Canada.[NEWLINE][NEWLINE]In June 2006, the institute moved into its present 200,000 square metre facility, designed to be one of the world''s largest buildings for nanotechnological research.'),
('TXT_KEY_BUILDING_AXWWP860_QUOTE','[NEWLINE]"I work for the world''s biggest nanotechnology company.[NEWLINE]We''re not very good."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP860_HELP','+6 [ICON_RESEARCH] Science from [ICON_RES_COAL] Coal. +6 [ICON_RESEARCH] Science from [ICON_RES_OIL] Oil. Free Laboratory in the city.');




-- AXWWP861

INSERT INTO Buildings (Type, Description, Civilopedia, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP861','TXT_KEY_BUILDING_AXWWP861','TXT_KEY_BUILDING_AXWWP861_PEDIA','TXT_KEY_BUILDING_AXWWP861_QUOTE','BUILDINGCLASS_AXWWP861',1,-1,100,'AXWWP4_ATLAS',61,'axwwp861.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP861','TXT_KEY_BUILDING_AXWWP861','BUILDING_AXWWP861',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP861'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP861');

UPDATE Buildings SET
	NumCityCostMod = 50,
	Cost = 1250,
	PrereqTech = 'TECH_NANOTECHNOLOGY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP861';

INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP861','YIELD_SCIENCE',25);
INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP861','YIELD_PRODUCTION',25);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP861','YIELD_PRODUCTION',12),('BUILDING_AXWWP861','YIELD_SCIENCE',12);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP861','Blue Gene'),
('TXT_KEY_BUILDING_AXWWP861_PEDIA','Blue Gene is an IBM project aimed at designing supercomputers that can reach operating speeds in the PFLOPS (petaFLOPS) range, with low power consumption.[NEWLINE][NEWLINE]In December 1999, IBM announced a US$100 million research initiative for a five-year effort to build a massively parallel computer, to be applied to the study of biomolecular phenomena such as protein folding.[NEWLINE][NEWLINE]In November 2004 a 16-rack system, with each rack holding 1,024 compute nodes, achieved first place in the TOP500 list, with a Linpack performance of 70.72 TFLOPS.'),
('TXT_KEY_BUILDING_AXWWP861_QUOTE','[NEWLINE]"Technology is like a fish. The longer it stays on the shelf, the less desirable it becomes."[NEWLINE]');




-- AXWWP862

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP862','TXT_KEY_BUILDING_AXWWP862','TXT_KEY_BUILDING_AXWWP862_PEDIA','TXT_KEY_BUILDING_AXWWP862_HELP','TXT_KEY_BUILDING_AXWWP862_QUOTE','BUILDINGCLASS_AXWWP862',1,-1,100,'AXWWP4_ATLAS',62,'axwwp862.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP862','TXT_KEY_BUILDING_AXWWP862','BUILDING_AXWWP862',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP862'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP862');

UPDATE Buildings SET
	FreeBuildingThisCity = 'BUILDINGCLASS_OBSERVATORY',
	Espionage = 1,
	ExtraSpies = 1,
	Cost = 1250,
	PrereqTech = 'TECH_STEALTH',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP862';

INSERT INTO Building_DomainFreeExperiences (BuildingType, DomainType, Experience) VALUES ('BUILDING_AXWWP862','DOMAIN_AIR',15);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP862','PAVE PAWS'),
('TXT_KEY_BUILDING_AXWWP862_PEDIA','The PAVE PAWS (Precision Acquisition Vehicle Entry Phased Array Warning System) is an early warning radar and computer system developed in 1980 to "detect and characterize a sea-launched ballistic missile attack against the United States".[NEWLINE][NEWLINE]The radar was built in the Cold War to give early warning of a nuclear attack, to allow time for US bombers to get off the ground and land-based US missiles to be launched, to decrease the chance that a preemptive strike could destroy US strategic nuclear forces.'),
('TXT_KEY_BUILDING_AXWWP862_QUOTE','[NEWLINE]"Stop worrying about the world ending today. It''s already tomorrow in Australia."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP862_HELP','+15 [ICON_WAR] XP for Air units. +1 [ICON_SPY] Spy. Free Observatory in the city.');




-- AXWWP863

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP863','TXT_KEY_BUILDING_AXWWP863','TXT_KEY_BUILDING_AXWWP863_PEDIA','TXT_KEY_BUILDING_AXWWP863_HELP','TXT_KEY_BUILDING_AXWWP863_QUOTE','BUILDINGCLASS_AXWWP863',1,-1,100,'AXWWP4_ATLAS',63,'axwwp863.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP863','TXT_KEY_BUILDING_AXWWP863','BUILDING_AXWWP863',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP863'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP863');

UPDATE Buildings SET
	UnhappinessModifier = -10,
	Espionage = 1,
	ExtraSpies = 2,
	Cost = 1250,
	PrereqTech = 'TECH_STEALTH',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP863';


INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP863','Globus II'),
('TXT_KEY_BUILDING_AXWWP863_PEDIA','Globus II is a radar station in Vardo, Norway, near the Russian border.[NEWLINE][NEWLINE]The site is administrated by the Norwegian Intelligence Service. When the radar was built the Norwegian official statement was that it was going to be used to monitor objects in space, such as satellites and space debris.[NEWLINE][NEWLINE]In 2000, during a storm, the radar dome was torn off and uncovered the radar-dish. At that time it was pointing directly towards Russia.'),
('TXT_KEY_BUILDING_AXWWP863_QUOTE','[NEWLINE]"I''m not an expert, but I thought space was in the sky."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP863_HELP','[ICON_HAPPINESS_4] Unhappiness from citizens in non-occupied cities reduced by 10%. +1 [ICON_SPY] Spy.');
