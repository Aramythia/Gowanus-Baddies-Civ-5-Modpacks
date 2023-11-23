-- AXWWP700

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP700','TXT_KEY_BUILDING_AXWWP700','TXT_KEY_BUILDING_AXWWP700_PEDIA','TXT_KEY_BUILDING_AXWWP700_HELP','TXT_KEY_BUILDING_AXWWP700_QUOTE','BUILDINGCLASS_AXWWP700',1,-1,100,'AXWWP4_ATLAS',0,'axwwp700.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP700','TXT_KEY_BUILDING_AXWWP700','BUILDING_AXWWP700',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP700'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP700');

UPDATE Buildings SET
	FoodKept = 20,
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_LABORATORY',
	Cost = 1250,
	PrereqTech = 'TECH_PENICILIN',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP700';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP700','YIELD_FAITH',8),('BUILDING_AXWWP700','YIELD_SCIENCE',8);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP700','Cold Spring Harbor Laboratory'),
('TXT_KEY_BUILDING_AXWWP700_PEDIA','Cold Spring Harbor Laboratory (CSHL) is a private, non-profit institution with research programs focusing on cancer, neuroscience, plant genetics, genomics, and quantitative biology.[NEWLINE][NEWLINE]It has been home to eight scientists who have been awarded the Nobel Prize in Physiology or Medicine.'),
('TXT_KEY_BUILDING_AXWWP700_QUOTE','[NEWLINE]"A tidy laboratory means a lazy chemist."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP700_HELP','20% [ICON_FOOD] Food kept in the city after [ICON_CITIZEN] Citizen is born. Free Laboratory in the city.');




-- AXWWP701

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP701','TXT_KEY_BUILDING_AXWWP701','TXT_KEY_BUILDING_AXWWP701_PEDIA','TXT_KEY_BUILDING_AXWWP701_HELP','TXT_KEY_BUILDING_AXWWP701_QUOTE','BUILDINGCLASS_AXWWP701',1,-1,100,'AXWWP4_ATLAS',1,'axwwp701.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP701','TXT_KEY_BUILDING_AXWWP701','BUILDING_AXWWP701',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP701'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP701');

UPDATE Buildings SET
	GlobalPopulationChange = 1,
	Cost = 1250,
	PrereqTech = 'TECH_PENICILIN',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP701';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP701','YIELD_CULTURE',8),('BUILDING_AXWWP701','YIELD_FAITH',8),('BUILDING_AXWWP701','YIELD_GOLD',8),('BUILDING_AXWWP701','YIELD_PRODUCTION',8);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP701','Barbican Estate'),
('TXT_KEY_BUILDING_AXWWP701_PEDIA','The Barbican Estate is a residential estate that was built during the 1960s and the 1980s within the City of London in Central London, in an area once devastated by World War II bombings and today densely populated by financial institutions.[NEWLINE][NEWLINE]The Barbican Complex is a prominent example of British brutalist architecture.'),
('TXT_KEY_BUILDING_AXWWP701_QUOTE','[NEWLINE]"Always remember that you''re unique. Just like everyone else."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP701_HELP','+1 [ICON_CITIZEN] Citizen in every city.');




-- AXWWP702

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP702','TXT_KEY_BUILDING_AXWWP702','TXT_KEY_BUILDING_AXWWP702_PEDIA','TXT_KEY_BUILDING_AXWWP702_HELP','TXT_KEY_BUILDING_AXWWP702_QUOTE','BUILDINGCLASS_AXWWP702',1,-1,100,'AXWWP4_ATLAS',2,'axwwp702.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP702','TXT_KEY_BUILDING_AXWWP702','BUILDING_AXWWP702',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP702'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP702');

UPDATE Buildings SET
	Happiness = 5,
	GreatPeopleRateModifier = 20,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ARTIST',
	Cost = 1250,
	PrereqTech = 'TECH_PENICILIN',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP702';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP702','YIELD_CULTURE',5),('BUILDING_AXWWP702','YIELD_GOLD',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP702','Habitat 67'),
('TXT_KEY_BUILDING_AXWWP702_PEDIA','Habitat 67 is a model community and housing complex in Montreal, Quebec, Canada.[NEWLINE][NEWLINE]Habitat 67 is widely considered an architectural landmark and one of the most recognizable and spectacular buildings in both Montreal and Canada.[NEWLINE][NEWLINE]Habitat 67 comprises 354 identical, prefabricated concrete forms arranged in various combinations, reaching up to 12 stories in height. Together these units create 146 residences of varying sizes and configurations, each formed from one to eight linked concrete units.'),
('TXT_KEY_BUILDING_AXWWP702_QUOTE','[NEWLINE]"A house is made of walls and beams; a home is built with love and dreams."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP702_HELP','+20% [ICON_GREAT_PEOPLE] Great People rate in the city.');




-- AXWWP703

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP703','TXT_KEY_BUILDING_AXWWP703','TXT_KEY_BUILDING_AXWWP703_PEDIA','TXT_KEY_BUILDING_AXWWP703_HELP','TXT_KEY_BUILDING_AXWWP703_QUOTE','BUILDINGCLASS_AXWWP703',1,-1,100,'AXWWP4_ATLAS',3,'axwwp703.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP703','TXT_KEY_BUILDING_AXWWP703','BUILDING_AXWWP703',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP703'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP703');

UPDATE Buildings SET
	FoodKept = 20,
	GlobalGreatPeopleRateModifier = 10,
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_LABORATORY',
	Cost = 1250,
	PrereqTech = 'TECH_PENICILIN',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP703';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP703','YIELD_FOOD',5),('BUILDING_AXWWP703','YIELD_SCIENCE',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP703','Salk Institute for Biological Studies'),
('TXT_KEY_BUILDING_AXWWP703_PEDIA','The Salk Institute for Biological Studies is an independent, non-profit, scientific research institute located in La Jolla, San Diego, California, United States.[NEWLINE][NEWLINE]It was founded in 1960 by Jonas Salk, the developer of the polio vaccine.[NEWLINE][NEWLINE]The institute consistently ranks among the top institutions in the US in terms of research output and quality in the life sciences. In 2004, the Times Higher Education Supplement ranked Salk as the world''s top biomedicine research institute, and in 2009 it was ranked number one globally by ScienceWatch in the neuroscience and behavior areas.'),
('TXT_KEY_BUILDING_AXWWP703_QUOTE','[NEWLINE]"An apple a day keeps the doctor away, but an onion a day keeps everyone away."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP703_HELP','20% [ICON_FOOD] Food kept in the city after [ICON_CITIZEN] Citizen is born. +10% [ICON_GREAT_PEOPLE] Great People rate in every city. Free Laboratory in the city.');




-- AXWWP704

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP704','TXT_KEY_BUILDING_AXWWP704','TXT_KEY_BUILDING_AXWWP704_PEDIA','TXT_KEY_BUILDING_AXWWP704_HELP','TXT_KEY_BUILDING_AXWWP704_QUOTE','BUILDINGCLASS_AXWWP704',1,-1,100,'AXWWP4_ATLAS',4,'axwwp704.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP704','TXT_KEY_BUILDING_AXWWP704','BUILDING_AXWWP704',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP704'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP704');

UPDATE Buildings SET
	CultureRateModifier = 20,
	GreatWorkCount = 2,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_LITERATURE',
	GreatPeopleRateModifier = 20,
	FreeBuildingThisCity = 'BUILDINGCLASS_LIBRARY',
	Cost = 1250,
	PrereqTech = 'TECH_ATOMIC_THEORY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP704';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP704','YIELD_CULTURE',5),('BUILDING_AXWWP704','YIELD_SCIENCE',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP704','Beinecke Library'),
('TXT_KEY_BUILDING_AXWWP704_PEDIA','The Beinecke Rare Book & Manuscript Library is the rare book library and literary archive of the Yale University Library in New Haven, Connecticut, United States.[NEWLINE][NEWLINE]It is one of the largest buildings in the world entirely dedicated to rare books and manuscripts.'),
('TXT_KEY_BUILDING_AXWWP704_QUOTE','[NEWLINE]"Have you heard the one about a chemist who was reading a book about helium and just couldn''t put it down?"[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP704_HELP','+20% [ICON_GREAT_PEOPLE] Great People rate in the city. Free Library in the city.');




-- AXWWP705

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP705','TXT_KEY_BUILDING_AXWWP705','TXT_KEY_BUILDING_AXWWP705_PEDIA','TXT_KEY_BUILDING_AXWWP705_HELP','TXT_KEY_BUILDING_AXWWP705_QUOTE','BUILDINGCLASS_AXWWP705',1,-1,100,'AXWWP4_ATLAS',5,'axwwp705.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP705','TXT_KEY_BUILDING_AXWWP705','BUILDING_AXWWP705',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP705'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP705');

UPDATE Buildings SET
	NearbyMountainRequired = 1,
	Flat = 1,
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	Cost = 1250,
	PrereqTech = 'TECH_ATOMIC_THEORY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP705';

INSERT INTO Building_ResourceQuantity (BuildingType, ResourceType, Quantity) VALUES ('BUILDING_AXWWP705','RESOURCE_URANIUM',2);
INSERT INTO Building_TerrainYieldChanges (BuildingType, TerrainType, YieldType, Yield) VALUES ('BUILDING_AXWWP705','TERRAIN_DESERT','YIELD_SCIENCE',2);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP705','YIELD_SCIENCE',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP705','Base Camp Mercury'),
('TXT_KEY_BUILDING_AXWWP705_PEDIA','Mercury is a closed city in Nye County, Nevada, United States.[NEWLINE][NEWLINE]The town started in 1950 at the beginning of operations of the Nevada Test Site as Base Camp Mercury, a military-style encampment built to provide basic facilities for personnel involved.'),
('TXT_KEY_BUILDING_AXWWP705_QUOTE','[NEWLINE]"One has to watch out for engineers - they begin with the sewing machine and end up with the atomic bomb."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP705_HELP','+2 [ICON_RES_URANIUM] Uranium. +2 [ICON_RESEARCH] Science from Desert tiles. [COLOR_LIGHT_GREY]Requires mountain nearby, flat ground.[ENDCOLOR]');




-- AXWWP706

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP706','TXT_KEY_BUILDING_AXWWP706','TXT_KEY_BUILDING_AXWWP706_PEDIA','TXT_KEY_BUILDING_AXWWP706_HELP','TXT_KEY_BUILDING_AXWWP706_QUOTE','BUILDINGCLASS_AXWWP706',1,-1,100,'AXWWP4_ATLAS',6,'axwwp706.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP706','TXT_KEY_BUILDING_AXWWP706','BUILDING_AXWWP706',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP706'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP706');

UPDATE Buildings SET
	Flat = 1,
	SpecialistCount = 2,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	Cost = 1250,
	PrereqTech = 'TECH_ATOMIC_THEORY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP706';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP706','YIELD_PRODUCTION',10),('BUILDING_AXWWP706','YIELD_SCIENCE',10);
INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP706','YIELD_SCIENCE',20);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP706','Argonne National Laboratory'),
('TXT_KEY_BUILDING_AXWWP706_PEDIA','Argonne National Laboratory is a science and engineering research national laboratory operated by the University of Chicago Argonne LLC for the United States Department of Energy located near Lemont, Illinois, outside Chicago.[NEWLINE][NEWLINE]In the post-war era the lab focused primarily on non-weapon related nuclear physics, designing and building the first power-producing nuclear reactors, helping design the reactors used by the US''s nuclear navy, and a wide variety of similar projects.'),
('TXT_KEY_BUILDING_AXWWP706_QUOTE','[NEWLINE]"Why was the math book sad?[NEWLINE]Because it had so many problems."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP706_HELP','[COLOR_LIGHT_GREY]Requires flat ground.[ENDCOLOR]');




-- AXWWP707

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP707','TXT_KEY_BUILDING_AXWWP707','TXT_KEY_BUILDING_AXWWP707_PEDIA','TXT_KEY_BUILDING_AXWWP707_HELP','TXT_KEY_BUILDING_AXWWP707_QUOTE','BUILDINGCLASS_AXWWP707',1,-1,100,'AXWWP4_ATLAS',7,'axwwp707.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP707','TXT_KEY_BUILDING_AXWWP707','BUILDING_AXWWP707',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP707'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP707');

UPDATE Buildings SET
	Happiness = 5,
	GreatWorkCount = 1,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT',
	FreeBuildingThisCity = 'BUILDINGCLASS_MUSEUM',
	Cost = 1250,
	PrereqTech = 'TECH_ATOMIC_THEORY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP707';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP707','YIELD_CULTURE',8),('BUILDING_AXWWP707','YIELD_GOLD',8);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP707','Atomium'),
('TXT_KEY_BUILDING_AXWWP707_PEDIA','The Atomium is a landmark building in Brussels, originally constructed for the 1958 Brussels World''s Fair (Expo 58).[NEWLINE][NEWLINE]It is located on the Heysel Plateau, where the exhibition took place. It is now a museum.[NEWLINE][NEWLINE]It stands 102 m (335 ft) tall. Its nine 18 m (60 ft) diameter stainless steel clad spheres are connected, so that the whole forms the shape of a unit cell of an iron crystal magnified 165 billion times.[NEWLINE][NEWLINE]The top sphere includes a restaurant which has a panoramic view of Brussels.'),
('TXT_KEY_BUILDING_AXWWP707_QUOTE','[NEWLINE]"Atoms are untrustworthy little critters. They make up everything!"[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP707_HELP','Free Museum in the city.');




-- AXWWP708

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP708','TXT_KEY_BUILDING_AXWWP708','TXT_KEY_BUILDING_AXWWP708_PEDIA','TXT_KEY_BUILDING_AXWWP708_HELP','TXT_KEY_BUILDING_AXWWP708_QUOTE','BUILDINGCLASS_AXWWP708',1,-1,100,'AXWWP4_ATLAS',8,'axwwp708.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP708','TXT_KEY_BUILDING_AXWWP708','BUILDING_AXWWP708',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP708'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP708');

UPDATE Buildings SET
	Happiness = 3,
	FreeGreatPeople = 1,
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ARTIST',
	Cost = 1250,
	PrereqTech = 'TECH_RADAR',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP708';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP708','YIELD_CULTURE',6),('BUILDING_AXWWP708','YIELD_GOLD',6);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP708','Torre Velasca'),
('TXT_KEY_BUILDING_AXWWP708_PEDIA','The Torre Velasca (Velasca Tower) is a skyscraper built in the 1950s in Milan, Italy.[NEWLINE][NEWLINE]The Velasca Tower is part of the first generation of Italian modern architecture.[NEWLINE][NEWLINE]Its structure recalls the Lombard tradition, made of medieval fortresses and towers, each having a massive profile. In such fortresses, the lower parts were always narrower, while the higher parts propped up by wooden boards or stone beams.'),
('TXT_KEY_BUILDING_AXWWP708_QUOTE','[NEWLINE]"If it wasn''t for the last minute, nothing would get done."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP708_HELP','[ICON_GREAT_PEOPLE] Great Person arrives.');




-- AXWWP709

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP709','TXT_KEY_BUILDING_AXWWP709','TXT_KEY_BUILDING_AXWWP709_PEDIA','TXT_KEY_BUILDING_AXWWP709_HELP','TXT_KEY_BUILDING_AXWWP709_QUOTE','BUILDINGCLASS_AXWWP709',1,-1,100,'AXWWP4_ATLAS',9,'axwwp709.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP709','TXT_KEY_BUILDING_AXWWP709','BUILDING_AXWWP709',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP709'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP709');

UPDATE Buildings SET
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_OBSERVATORY',
	Cost = 1250,
	PrereqTech = 'TECH_RADAR',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP709';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP709','YIELD_SCIENCE',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP709','Lovell Telescope'),
('TXT_KEY_BUILDING_AXWWP709_PEDIA','The Lovell Telescope is a radio telescope at Jodrell Bank Observatory, near Goostrey, Cheshire in the north-west of England.[NEWLINE][NEWLINE]When construction was finished in 1957, the telescope was the largest steerable dish radio telescope in the world.'),
('TXT_KEY_BUILDING_AXWWP709_QUOTE','[NEWLINE]"Aim for the moon. If you miss, you may hit a star."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP709_HELP','Free Observatory in the city.');




-- AXWWP710

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP710','TXT_KEY_BUILDING_AXWWP710','TXT_KEY_BUILDING_AXWWP710_PEDIA','TXT_KEY_BUILDING_AXWWP710_HELP','TXT_KEY_BUILDING_AXWWP710_QUOTE','BUILDINGCLASS_AXWWP710',1,-1,100,'AXWWP4_ATLAS',10,'axwwp710.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP710','TXT_KEY_BUILDING_AXWWP710','BUILDING_AXWWP710',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP710'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP710');

UPDATE Buildings SET
	HappinessPerCity = 1,
	GlobalCultureRateModifier = 10,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_MUSICIAN',
	Cost = 1250,
	PrereqTech = 'TECH_RADAR',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP710';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP710','YIELD_CULTURE',10),('BUILDING_AXWWP710','YIELD_GOLD',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP710','Ostankino Tower'),
('TXT_KEY_BUILDING_AXWWP710_PEDIA','Ostankino Tower is a television and radio tower in Moscow, Russia.[NEWLINE][NEWLINE]Construction began in 1963 and was completed in 1967. It surpassed the Empire State Building to become the tallest free-standing structure in the world. It held this record for eight years until it was overtaken by the CN Tower in 1975.'),
('TXT_KEY_BUILDING_AXWWP710_QUOTE','[NEWLINE]"I hate television. I hate it as much as I hate peanuts. But I can''t stop eating peanuts."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP710_HELP','+1 [ICON_HAPPINESS_1] Happiness per city. +10% [ICON_CULTURE] Culture in every city.');




-- AXWWP711

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP711','TXT_KEY_BUILDING_AXWWP711','TXT_KEY_BUILDING_AXWWP711_PEDIA','TXT_KEY_BUILDING_AXWWP711_HELP','TXT_KEY_BUILDING_AXWWP711_QUOTE','BUILDINGCLASS_AXWWP711',1,-1,100,'AXWWP4_ATLAS',11,'axwwp711.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP711','TXT_KEY_BUILDING_AXWWP711','BUILDING_AXWWP711',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP711'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP711');

UPDATE Buildings SET
	NumCityCostMod = 50,
	GreatPeopleRateModifier = 10,
	FreeGreatPeople = 1,
	SpecialistCount = 2,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_ENGINEER',
	FreeBuildingThisCity = 'BUILDINGCLASS_LABORATORY',
	Cost = 1250,
	PrereqTech = 'TECH_RADAR',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP711';

INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP711','YIELD_SCIENCE',15);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP711','YIELD_PRODUCTION',10),('BUILDING_AXWWP711','YIELD_SCIENCE',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP711','Bell Labs Holmdel Complex'),
('TXT_KEY_BUILDING_AXWWP711_PEDIA','The Bell Labs Holmdel Complex, in Holmdel Township, New Jersey, United States, functioned for forty-four years as a research and development facility, initially for the Bell System and later Bell Labs.[NEWLINE][NEWLINE]Researchers working at Bell Labs are credited with the development of radio astronomy, the transistor, the laser, the charge-coupled device (CCD), information theory, the Unix operating system, and the programming languages C, C++, and S.'),
('TXT_KEY_BUILDING_AXWWP711_QUOTE','[NEWLINE]"Manufacturing is more than just putting parts together."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP711_HELP','+10% [ICON_GREAT_PEOPLE] Great People rate in the city. [ICON_GREAT_PEOPLE] Great Person arrives. Free Laboratory in the city.');




-- AXWWP712

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP712','TXT_KEY_BUILDING_AXWWP712','TXT_KEY_BUILDING_AXWWP712_PEDIA','TXT_KEY_BUILDING_AXWWP712_HELP','TXT_KEY_BUILDING_AXWWP712_QUOTE','BUILDINGCLASS_AXWWP712',1,-1,100,'AXWWP4_ATLAS',12,'axwwp712.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP712','TXT_KEY_BUILDING_AXWWP712','BUILDING_AXWWP712',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP712'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP712');

UPDATE Buildings SET
	Flat = 1,
	UnhappinessModifier = -10,
	Espionage = 1,
	ExtraSpies = 1,
	Cost = 1250,
	PrereqTech = 'TECH_COMBINED_ARMS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP712';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP712','YIELD_CULTURE',10),('BUILDING_AXWWP712','YIELD_FAITH',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP712','Teufelsberg'),
('TXT_KEY_BUILDING_AXWWP712_PEDIA','Teufelsberg (German for Devil''s Mountain) is a man-made hill in Berlin, Germany, in the Grunewald locality of former West Berlin.[NEWLINE][NEWLINE]Teufelsberg is a man-made hill 80 metres (260 ft) high, created in the 20 years following the Second World War by moving debris from Berlin.[NEWLINE][NEWLINE]The hill is made of rubble, and covers an under-construction Nazi military-technical college. During the Cold War, there was a U.S. listening station on the hill, Field Station Berlin.'),
('TXT_KEY_BUILDING_AXWWP712_QUOTE','[NEWLINE]"War does not determine who is right - only who is left."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP712_HELP','[ICON_HAPPINESS_4] Unhappiness from citizens in non-occupied cities reduced by 10%. +1 [ICON_SPY] Spy. [COLOR_LIGHT_GREY]Requires flat ground.[ENDCOLOR]');




-- AXWWP713

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP713','TXT_KEY_BUILDING_AXWWP713','TXT_KEY_BUILDING_AXWWP713_PEDIA','TXT_KEY_BUILDING_AXWWP713_HELP','TXT_KEY_BUILDING_AXWWP713_QUOTE','BUILDINGCLASS_AXWWP713',1,-1,100,'AXWWP4_ATLAS',13,'axwwp713.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP713','TXT_KEY_BUILDING_AXWWP713','BUILDING_AXWWP713',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP713'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP713');

UPDATE Buildings SET
	Flat = 1,
	NumCityCostMod = 20,
	SpecialistCount = 3,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	WorkerSpeedModifier = 10,
	FreeBuildingThisCity = 'BUILDINGCLASS_FACTORY',
	Cost = 1250,
	PrereqTech = 'TECH_COMBINED_ARMS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP713';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP713','YIELD_GOLD',10),('BUILDING_AXWWP713','YIELD_PRODUCTION',10),('BUILDING_AXWWP713','YIELD_SCIENCE',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP713','Boeing Everett Factory'),
('TXT_KEY_BUILDING_AXWWP713_PEDIA','The Boeing Everett Factory, in Everett, Washington, is an airplane assembly building owned by Boeing.[NEWLINE][NEWLINE]Located on the northeast corner of Paine Field, it is the largest building in the world by volume.[NEWLINE][NEWLINE]This is the factory where the wide-body Boeing 747, 767, 777, and 787 are assembled.'),
('TXT_KEY_BUILDING_AXWWP713_QUOTE','[NEWLINE]"First rule of engineering; beware prototypes. Along with, avoid anything made by an engineer who doesn''t have all his own fingers."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP713_HELP','Worker construction speed increased by 10%. Free Factory in the city. [COLOR_LIGHT_GREY]Requires flat ground.[ENDCOLOR]');




-- AXWWP714

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP714','TXT_KEY_BUILDING_AXWWP714','TXT_KEY_BUILDING_AXWWP714_PEDIA','TXT_KEY_BUILDING_AXWWP714_HELP','TXT_KEY_BUILDING_AXWWP714_QUOTE','BUILDINGCLASS_AXWWP714',1,-1,100,'AXWWP4_ATLAS',14,'axwwp714.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP714','TXT_KEY_BUILDING_AXWWP714','BUILDING_AXWWP714',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP714'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP714');

UPDATE Buildings SET
	GreatWorkCount = 2,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT',
	PlotCultureCostModifier = -10,
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ARTIST',
	Cost = 1250,
	PrereqTech = 'TECH_COMBINED_ARMS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP714';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP714','YIELD_CULTURE',10),('BUILDING_AXWWP714','YIELD_GOLD',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP714','Centre Georges Pompidou'),
('TXT_KEY_BUILDING_AXWWP714_PEDIA','Centre Georges Pompidou is a complex building in the Beaubourg area of the 4th arrondissement of Paris, near Les Halles, rue Montorgueil, and the Marais.[NEWLINE][NEWLINE]It was designed in the style of high-tech architecture.[NEWLINE][NEWLINE]It houses a vast public library, the largest museum for modern art in Europe, and a centre for music and acoustic research.'),
('TXT_KEY_BUILDING_AXWWP714_QUOTE','[NEWLINE]"There are two golden rules for an orchestra: start together and finish together. The public doesn''t give a damn what goes on in between."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP714_HELP','[ICON_CULTURE] Culture cost of aquiring new tiles reduced by 10% in the city.');




-- AXWWP715

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP715','TXT_KEY_BUILDING_AXWWP715','TXT_KEY_BUILDING_AXWWP715_PEDIA','TXT_KEY_BUILDING_AXWWP715_HELP','TXT_KEY_BUILDING_AXWWP715_QUOTE','BUILDINGCLASS_AXWWP715',1,-1,100,'AXWWP4_ATLAS',15,'axwwp715.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP715','TXT_KEY_BUILDING_AXWWP715','BUILDING_AXWWP715',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP715'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP715');

UPDATE Buildings SET
	Water = 1, MinAreaSize = 10,
	SpecialistCount = 2,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	WorkerSpeedModifier = 10,
	FreeBuildingThisCity = 'BUILDINGCLASS_SEAPORT',
	Cost = 1250,
	PrereqTech = 'TECH_COMBINED_ARMS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP715';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP715','YIELD_CULTURE',5),('BUILDING_AXWWP715','YIELD_PRODUCTION',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP715','Gdansk Shipyard'),
('TXT_KEY_BUILDING_AXWWP715_PEDIA','Gdansk Shipyard is a large Polish shipyard, located in the city of Gdansk.[NEWLINE][NEWLINE]In 1980 Gdansk was the arena for events that marked the beginning of organized resistance to Communist dictatorship in eastern Europe. A strike by 17,000 ship builders saw Solidarity, led by shipyard electrician Lech Walesa, recognised as the first non-Communist trade union in the then Soviet Bloc. The move was one of the first successful steps in a campaign of civil resistance that contributed to the eventual collapse of Communism across eastern Europe.'),
('TXT_KEY_BUILDING_AXWWP715_QUOTE','[NEWLINE]"A ship in port is safe, but that''s not what ships are built for."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP715_HELP','Worker construction speed increased by 10%. Free Seaport in the city. [COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP716

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP716','TXT_KEY_BUILDING_AXWWP716','TXT_KEY_BUILDING_AXWWP716_PEDIA','TXT_KEY_BUILDING_AXWWP716_HELP','TXT_KEY_BUILDING_AXWWP716_QUOTE','BUILDINGCLASS_AXWWP716',1,-1,100,'AXWWP4_ATLAS',16,'axwwp716.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP716','TXT_KEY_BUILDING_AXWWP716','BUILDING_AXWWP716',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP716'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP716');

UPDATE Buildings SET
	Mountain = 1,
	Hill = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	CityConnectionTradeRouteModifier = 25,
	NumTradeRouteBonus = 1,
	TradeRouteLandDistanceModifier = 50,
	TradeRouteLandGoldBonus = 100,
	Cost = 1250,
	PrereqTech = 'TECH_COMBINED_ARMS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP716';


INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP716','Karakoram Highway'),
('TXT_KEY_BUILDING_AXWWP716_PEDIA','The Karakoram Highway is a 1300 km national highway in Pakistan which extends from Hasan Abdal in Punjab province of Pakistan to the Khunjerab Pass in Gilgit-Baltistan, where it crosses into China.[NEWLINE][NEWLINE]The highway is a popular tourist attraction, and is one of the highest paved roads in the world, passing through the Karakoram mountain range, at an elevation of 4,714 metres (15,466 ft).'),
('TXT_KEY_BUILDING_AXWWP716_QUOTE','[NEWLINE]"To know the road ahead, ask those coming back."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP716_HELP','+25% [ICON_GOLD] Gold from [ICON_TRADE] City Connections. Increases distance for [ICON_TRADE] Land Trade Routes. Increases [ICON_GOLD] Gold for [ICON_TRADE] Land Trade Routes. Additional [ICON_TRADE] Trade Route. [COLOR_LIGHT_GREY]Requires mountain, hill.[ENDCOLOR]');




-- AXWWP717

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP717','TXT_KEY_BUILDING_AXWWP717','TXT_KEY_BUILDING_AXWWP717_PEDIA','TXT_KEY_BUILDING_AXWWP717_HELP','TXT_KEY_BUILDING_AXWWP717_QUOTE','BUILDINGCLASS_AXWWP717',1,-1,100,'AXWWP4_ATLAS',17,'axwwp717.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP717','TXT_KEY_BUILDING_AXWWP717','BUILDING_AXWWP717',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP717'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP717');

UPDATE Buildings SET
	Flat = 1,
	NearbyTerrainRequired = 'TERRAIN_DESERT',
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	FreeBuildingThisCity = 'BUILDINGCLASS_SOLAR_PLANT',
	Cost = 1250,
	PrereqTech = 'TECH_ECOLOGY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP717';

INSERT INTO Building_TerrainYieldChanges (BuildingType, TerrainType, YieldType, Yield) VALUES ('BUILDING_AXWWP717','TERRAIN_DESERT','YIELD_PRODUCTION',1);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP717','YIELD_PRODUCTION',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP717','Copper Mountain Solar Facility'),
('TXT_KEY_BUILDING_AXWWP717_PEDIA','The Copper Mountain Solar Facility is a solar photovoltaic power plant in Boulder City, Nevada.[NEWLINE][NEWLINE]When the facility entered service, it was the largest photovoltaic plant in the U.S.'),
('TXT_KEY_BUILDING_AXWWP717_QUOTE','[NEWLINE]"I think the future for solar energy is bright."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP717_HELP','+1 [ICON_PRODUCTION] Production from Desert tiles. Free Solar Plant in the city. [COLOR_LIGHT_GREY]Requires flat ground, desert.[ENDCOLOR]');




-- AXWWP718

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP718','TXT_KEY_BUILDING_AXWWP718','TXT_KEY_BUILDING_AXWWP718_PEDIA','TXT_KEY_BUILDING_AXWWP718_HELP','TXT_KEY_BUILDING_AXWWP718_QUOTE','BUILDINGCLASS_AXWWP718',1,-1,100,'AXWWP4_ATLAS',18,'axwwp718.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP718','TXT_KEY_BUILDING_AXWWP718','BUILDING_AXWWP718',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP718'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP718');

UPDATE Buildings SET
	Hill = 1,
	NearbyTerrainRequired = 'TERRAIN_PLAINS',
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1250,
	PrereqTech = 'TECH_ECOLOGY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP718';

INSERT INTO Building_TerrainYieldChanges (BuildingType, TerrainType, YieldType, Yield) VALUES ('BUILDING_AXWWP718','TERRAIN_PLAINS','YIELD_PRODUCTION',1);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP718','YIELD_PRODUCTION',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP718','The Geysers'),
('TXT_KEY_BUILDING_AXWWP718_PEDIA','The Geysers is the world''s largest geothermal field, containing a complex of 22 geothermal power plants, drawing steam from more than 350 wells, located in the Mayacamas Mountains approximately 72 miles (116 km) north of San Francisco, California.'),
('TXT_KEY_BUILDING_AXWWP718_QUOTE','[NEWLINE]"We can, and must, shift to an economy in which 100% of our electricity is generated renewably."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP718_HELP','+1 [ICON_PRODUCTION] Production from Plains tiles. [COLOR_LIGHT_GREY]Requires hill, plains.[ENDCOLOR]');




-- AXWWP719

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP719','TXT_KEY_BUILDING_AXWWP719','TXT_KEY_BUILDING_AXWWP719_PEDIA','TXT_KEY_BUILDING_AXWWP719_HELP','TXT_KEY_BUILDING_AXWWP719_QUOTE','BUILDINGCLASS_AXWWP719',1,-1,100,'AXWWP4_ATLAS',19,'axwwp719.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP719','TXT_KEY_BUILDING_AXWWP719','BUILDING_AXWWP719',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP719'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP719');

UPDATE Buildings SET
	Water = 1, MinAreaSize = 10,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1250,
	PrereqTech = 'TECH_ECOLOGY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP719';

INSERT INTO Building_TerrainYieldChanges (BuildingType, TerrainType, YieldType, Yield) VALUES ('BUILDING_AXWWP719','TERRAIN_COAST','YIELD_PRODUCTION',1);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP719','YIELD_PRODUCTION',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP719','Rance Tidal Power Station'),
('TXT_KEY_BUILDING_AXWWP719_PEDIA','The Rance Tidal Power Station is a tidal power station located on the estuary of the Rance River in Brittany, France.[NEWLINE][NEWLINE]Opened in 1966 as the world''s first tidal power station, it is currently operated by Electricite de France and was for 45 years the largest tidal power station in the world by installed capacity until the South Korean Sihwa Lake Tidal Power Station surpassed it in 2011.'),
('TXT_KEY_BUILDING_AXWWP719_QUOTE','[NEWLINE]"As in nature, all is ebb and tide, all is wave motion, so it seems that in all branches of industry, alternating currents - electric wave motion - will have the sway."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP719_HELP','+1 [ICON_PRODUCTION] Production from Coast tiles. [COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP720

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP720','TXT_KEY_BUILDING_AXWWP720','TXT_KEY_BUILDING_AXWWP720_PEDIA','TXT_KEY_BUILDING_AXWWP720_HELP','TXT_KEY_BUILDING_AXWWP720_QUOTE','BUILDINGCLASS_AXWWP720',1,-1,100,'AXWWP4_ATLAS',20,'axwwp720.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP720','TXT_KEY_BUILDING_AXWWP720','BUILDING_AXWWP720',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP720'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP720');

UPDATE Buildings SET
	Flat = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1250,
	PrereqTech = 'TECH_ECOLOGY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP720';

INSERT INTO Building_TerrainYieldChanges (BuildingType, TerrainType, YieldType, Yield) VALUES ('BUILDING_AXWWP720','TERRAIN_PLAINS','YIELD_PRODUCTION',1);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP720','YIELD_PRODUCTION',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP720','Jaisalmer Wind Park'),
('TXT_KEY_BUILDING_AXWWP720_PEDIA','The Jaisalmer Wind Park is India''s 2nd largest operational onshore wind farm. This project located in Jaisalmer district, Rajasthan.[NEWLINE][NEWLINE]Its installed capacity is 1,064 MW, which makes it one of world''s largest operational onshore wind farms.'),
('TXT_KEY_BUILDING_AXWWP720_QUOTE','[NEWLINE]"Wind power is very popular because it has a lot of fans."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP720_HELP','+1 [ICON_PRODUCTION] Production from Plains tiles. [COLOR_LIGHT_GREY]Requires flat ground.[ENDCOLOR]');




-- AXWWP721

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP721','TXT_KEY_BUILDING_AXWWP721','TXT_KEY_BUILDING_AXWWP721_PEDIA','TXT_KEY_BUILDING_AXWWP721_HELP','TXT_KEY_BUILDING_AXWWP721_QUOTE','BUILDINGCLASS_AXWWP721',1,-1,100,'AXWWP4_ATLAS',21,'axwwp721.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP721','TXT_KEY_BUILDING_AXWWP721','BUILDING_AXWWP721',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP721'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP721');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_LABORATORY',
	Cost = 1250,
	PrereqTech = 'TECH_ECOLOGY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP721';

INSERT INTO Building_FeatureYieldChanges (BuildingType, FeatureType, YieldType, Yield) VALUES ('BUILDING_AXWWP721','FEATURE_JUNGLE','YIELD_SCIENCE',1);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP721','YIELD_GOLD',10),('BUILDING_AXWWP721','YIELD_SCIENCE',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP721','Mesa Laboratory'),
('TXT_KEY_BUILDING_AXWWP721_PEDIA','The Mesa Laboratory of the National Center for Atmospheric Research is a research center located in Boulder, Colorado, United states.[NEWLINE][NEWLINE]It has been noted for its Anasazi-inspired architecture and use of bush-hammered concrete to blend into the surrounding area.'),
('TXT_KEY_BUILDING_AXWWP721_QUOTE','[NEWLINE]"Climate is what we expect, weather is what we get."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP721_HELP','+1 [ICON_RESEARCH] Science from Jungle. Free Laboratory in the city.');




-- AXWWP722

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP722','TXT_KEY_BUILDING_AXWWP722','TXT_KEY_BUILDING_AXWWP722_PEDIA','TXT_KEY_BUILDING_AXWWP722_HELP','TXT_KEY_BUILDING_AXWWP722_QUOTE','BUILDINGCLASS_AXWWP722',1,-1,100,'AXWWP4_ATLAS',22,'axwwp722.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP722','TXT_KEY_BUILDING_AXWWP722','BUILDING_AXWWP722',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP722'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP722');

UPDATE Buildings SET
	River = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1250,
	PrereqTech = 'TECH_ECOLOGY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP722';

INSERT INTO Building_RiverPlotYieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP722','YIELD_PRODUCTION',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP722','Chief Joseph Dam'),
('TXT_KEY_BUILDING_AXWWP722_PEDIA','The Chief Joseph Dam is a concrete gravity dam on the Columbia River, 2.4 km (1.5 mi) upriver from Bridgeport, Washington.[NEWLINE][NEWLINE]Chief Joseph Dam is a run-of-the-river dam which means the lake behind the dam is not able to store large amounts of water. Water flowing to Chief Joseph Dam from Grand Coulee Dam must be passed on to Wells Dam at approximately the same rate.[NEWLINE][NEWLINE]Chief Joseph Dam is the largest run-of-the-river dam in the world.'),
('TXT_KEY_BUILDING_AXWWP722_QUOTE','[NEWLINE]"A river cuts through a rock not because of its power but its persistence."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP722_HELP','+1 [ICON_PRODUCTION] Production from River tiles. [COLOR_LIGHT_GREY]Requires river.[ENDCOLOR]');




-- AXWWP723

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP723','TXT_KEY_BUILDING_AXWWP723','TXT_KEY_BUILDING_AXWWP723_PEDIA','TXT_KEY_BUILDING_AXWWP723_HELP','TXT_KEY_BUILDING_AXWWP723_QUOTE','BUILDINGCLASS_AXWWP723',1,-1,100,'AXWWP4_ATLAS',23,'axwwp723.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP723','TXT_KEY_BUILDING_AXWWP723','BUILDING_AXWWP723',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP723'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP723');

UPDATE Buildings SET
	Water = 1, MinAreaSize = 10,
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 1250,
	PrereqTech = 'TECH_NUCLEAR_FISSION',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP723';

INSERT INTO Building_ResourceQuantityRequirements (BuildingType, ResourceType, Cost) VALUES ('BUILDING_AXWWP723','RESOURCE_URANIUM', 1);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP723','YIELD_PRODUCTION',10);
INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP723','YIELD_PRODUCTION',25);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP723','Bruce Nuclear Generating Station'),
('TXT_KEY_BUILDING_AXWWP723_PEDIA','Bruce Nuclear Generating Station is a nuclear power station located on the eastern shore of Lake Huron in Ontario.[NEWLINE][NEWLINE]It is the largest nuclear generating station in the world by total reactor count, the number of currently operational reactors, and total output.'),
('TXT_KEY_BUILDING_AXWWP723_QUOTE','[NEWLINE]"From great power comes a great electricity bill."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP723_HELP','[COLOR_LIGHT_GREY]Requires coast, 1 uranium.[ENDCOLOR]');




-- AXWWP724

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP724','TXT_KEY_BUILDING_AXWWP724','TXT_KEY_BUILDING_AXWWP724_PEDIA','TXT_KEY_BUILDING_AXWWP724_HELP','TXT_KEY_BUILDING_AXWWP724_QUOTE','BUILDINGCLASS_AXWWP724',1,-1,100,'AXWWP4_ATLAS',24,'axwwp724.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP724','TXT_KEY_BUILDING_AXWWP724','BUILDING_AXWWP724',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP724'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP724');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	FreeBuildingThisCity = 'BUILDINGCLASS_SPACESHIP_FACTORY',
	Cost = 1250,
	PrereqTech = 'TECH_ROCKETRY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP724';

INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits) VALUES ('BUILDING_AXWWP724','UNIT_SS_BOOSTER',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP724','Vehicle Assembly Building'),
('TXT_KEY_BUILDING_AXWWP724_PEDIA','The Vehicle Assembly Building (VAB) at NASA''s Kennedy Space Center is a building designed to assemble large space vehicles, such as the massive Saturn V and the Space Shuttle. The future Space Launch System will also be assembled there.[NEWLINE][NEWLINE]The VAB is the largest single-story building in the world, was the tallest building (160.3 metres, 526 ft) in Florida until 1974, and is still the tallest building in the United States outside an urban area.'),
('TXT_KEY_BUILDING_AXWWP724_QUOTE','[NEWLINE]"I''m human; never been to space. Monkeys aren''t human; have been to space. That''s the gist of my lawsuit against NASA."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP724_HELP','+1 free Ss Booster. Free Spaceship Factory in the city.');




-- AXWWP725

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP725','TXT_KEY_BUILDING_AXWWP725','TXT_KEY_BUILDING_AXWWP725_PEDIA','TXT_KEY_BUILDING_AXWWP725_HELP','TXT_KEY_BUILDING_AXWWP725_QUOTE','BUILDINGCLASS_AXWWP725',1,-1,100,'AXWWP4_ATLAS',25,'axwwp725.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP725','TXT_KEY_BUILDING_AXWWP725','BUILDING_AXWWP725',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP725'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP725');

UPDATE Buildings SET
	NumCityCostMod = 50,
	SpecialistCount = 2,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	FreeBuildingThisCity = 'BUILDINGCLASS_SPACESHIP_FACTORY',
	Cost = 1250,
	PrereqTech = 'TECH_ROCKETRY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP725';

INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP725','YIELD_PRODUCTION',20);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP725','YIELD_PRODUCTION',10),('BUILDING_AXWWP725','YIELD_SCIENCE',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP725','Michoud Assembly Facility'),
('TXT_KEY_BUILDING_AXWWP725_PEDIA','The Michoud Assembly Facility (MAF) is manufacturing complex owned by NASA in New Orleans East, a district within New Orleans, Louisiana, in the United States.[NEWLINE][NEWLINE]Organizationally it is part of NASA''s Marshall Space Flight Center, and is currently a multi-tenant complex to allow commercial and government contractors, as well as government agencies, to use the site.[NEWLINE][NEWLINE]MAF is one of the largest manufacturing plants in the world.'),
('TXT_KEY_BUILDING_AXWWP725_QUOTE','[NEWLINE]"You told me that you would finish the assembly in three days.[NEWLINE]Sure, but not three consecutive days!"[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP725_HELP','Free Spaceship Factory in the city.');




-- AXWWP726

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP726','TXT_KEY_BUILDING_AXWWP726','TXT_KEY_BUILDING_AXWWP726_PEDIA','TXT_KEY_BUILDING_AXWWP726_HELP','TXT_KEY_BUILDING_AXWWP726_QUOTE','BUILDINGCLASS_AXWWP726',1,-1,100,'AXWWP4_ATLAS',26,'axwwp726.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP726','TXT_KEY_BUILDING_AXWWP726','BUILDING_AXWWP726',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP726'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP726');

UPDATE Buildings SET
	SpecialistCount = 2,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_LABORATORY',
	Cost = 1250,
	PrereqTech = 'TECH_ROCKETRY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP726';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP726','YIELD_GOLD',10),('BUILDING_AXWWP726','YIELD_SCIENCE',10);
INSERT INTO Building_DomainFreeExperiences (BuildingType, DomainType, Experience) VALUES ('BUILDING_AXWWP726','DOMAIN_AIR',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP726','Jet Propulsion Laboratory'),
('TXT_KEY_BUILDING_AXWWP726_PEDIA','The Jet Propulsion Laboratory (JPL) is a federally funded research and development center and NASA field center in Pasadena, California, United States.[NEWLINE][NEWLINE]The JPL is owned by NASA and managed by the nearby California Institute of Technology (Caltech) for NASA.[NEWLINE][NEWLINE]The laboratory''s primary function is the construction and operation of planetary robotic spacecraft, though it also conducts Earth-orbit and astronomy missions. It is also responsible for operating NASA''s Deep Space Network.'),
('TXT_KEY_BUILDING_AXWWP726_QUOTE','[NEWLINE]"If we ever travel thousands of light years to a planet inhabited by intelligent life, let''s just make patterns in their crops and leave."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP726_HELP','+10 [ICON_WAR] XP for Air units. Free Laboratory in the city.');




-- AXWWP727

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP727','TXT_KEY_BUILDING_AXWWP727','TXT_KEY_BUILDING_AXWWP727_PEDIA','TXT_KEY_BUILDING_AXWWP727_HELP','TXT_KEY_BUILDING_AXWWP727_QUOTE','BUILDINGCLASS_AXWWP727',1,-1,100,'AXWWP4_ATLAS',27,'axwwp727.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP727','TXT_KEY_BUILDING_AXWWP727','BUILDING_AXWWP727',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP727'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP727');

UPDATE Buildings SET
	Happiness = 10,
	GoldenAge = 1,
	FreeGreatPeople = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ARTIST',
	Cost = 1250,
	PrereqTech = 'TECH_ROCKETRY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP727';


INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP727','Monument to the Conquerors of Space'),
('TXT_KEY_BUILDING_AXWWP727_PEDIA','The Monument to the Conquerors of Space was erected in Moscow in 1964 to celebrate achievements of the Soviet people in space exploration.[NEWLINE][NEWLINE]It depicts a starting rocket that rises on its exhaust plume. The monument is 107 meters (351 feet) tall, has 77 degree of incline, and is made of titanium.'),
('TXT_KEY_BUILDING_AXWWP727_QUOTE','[NEWLINE]"And our efforts are rewarded. We have overcome powerlessness and darkness. We''ve forged these flaming wings. For our Nation and this age of ours!"[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP727_HELP','Starts [ICON_GOLDEN_AGE] Golden Age. [ICON_GREAT_PEOPLE] Great Person arrives.');




-- AXWWP728

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP728','TXT_KEY_BUILDING_AXWWP728','TXT_KEY_BUILDING_AXWWP728_PEDIA','TXT_KEY_BUILDING_AXWWP728_HELP','TXT_KEY_BUILDING_AXWWP728_QUOTE','BUILDINGCLASS_AXWWP728',1,-1,100,'AXWWP4_ATLAS',28,'axwwp728.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP728','TXT_KEY_BUILDING_AXWWP728','BUILDING_AXWWP728',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP728'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP728');

UPDATE Buildings SET
	Happiness = 5,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	Cost = 1250,
	PrereqTech = 'TECH_ROCKETRY',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP728';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP728','YIELD_SCIENCE',10);
INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits) VALUES ('BUILDING_AXWWP728','UNIT_SCIENTIST',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP728','Sputnik 1'),
('TXT_KEY_BUILDING_AXWWP728_PEDIA','Sputnik 1 was the first artificial Earth satellite.[NEWLINE][NEWLINE]The Soviet Union launched it into an elliptical low Earth orbit on 4 October 1957, orbiting for three weeks before its batteries died, then silently for two more months before falling back into the atmosphere.[NEWLINE][NEWLINE]Tracking and studying Sputnik 1 from Earth provided scientists with valuable information. The density of the upper atmosphere could be deduced from its drag on the orbit, and the propagation of its radio signals gave data about the ionosphere.'),
('TXT_KEY_BUILDING_AXWWP728_QUOTE','[NEWLINE]"Besides gravity, nothing keeps me down."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP728_HELP','+1 free Scientist.');




-- AXWWP729

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP729','TXT_KEY_BUILDING_AXWWP729','TXT_KEY_BUILDING_AXWWP729_PEDIA','TXT_KEY_BUILDING_AXWWP729_HELP','TXT_KEY_BUILDING_AXWWP729_QUOTE','BUILDINGCLASS_AXWWP729',1,-1,100,'AXWWP4_ATLAS',29,'axwwp729.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP729','TXT_KEY_BUILDING_AXWWP729','BUILDING_AXWWP729',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP729'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP729');

UPDATE Buildings SET
	SpecialistCount = 2,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_LABORATORY',
	Cost = 1250,
	PrereqTech = 'TECH_COMPUTERS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP729';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP729','YIELD_GOLD',10),('BUILDING_AXWWP729','YIELD_PRODUCTION',10),('BUILDING_AXWWP729','YIELD_SCIENCE',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP729','Thomas J. Watson Research Center'),
('TXT_KEY_BUILDING_AXWWP729_PEDIA','The Thomas J. Watson Research Center is the headquarters for IBM Research.[NEWLINE][NEWLINE]The research is intended to improve hardware (physical sciences and semiconductors research), services (business modelling, consulting, and operations research), software (programming languages, security, speech recognition, data management, and collaboration tools), and systems (operating systems and server design), as well as to extend the mathematics and science that support the information technology industry.'),
('TXT_KEY_BUILDING_AXWWP729_QUOTE','[NEWLINE]"If we knew what we were doing, it wouldn''t be called research."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP729_HELP','Free Laboratory in the city.');




-- AXWWP730

INSERT INTO Buildings (Type, Description, Civilopedia, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP730','TXT_KEY_BUILDING_AXWWP730','TXT_KEY_BUILDING_AXWWP730_PEDIA','TXT_KEY_BUILDING_AXWWP730_QUOTE','BUILDINGCLASS_AXWWP730',1,-1,100,'AXWWP4_ATLAS',30,'axwwp730.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP730','TXT_KEY_BUILDING_AXWWP730','BUILDING_AXWWP730',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP730'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP730');

UPDATE Buildings SET
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	Cost = 1250,
	PrereqTech = 'TECH_COMPUTERS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP730';

INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP730','YIELD_PRODUCTION',10);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP730','YIELD_SCIENCE',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP730','Harwell Dekatron Computer'),
('TXT_KEY_BUILDING_AXWWP730_PEDIA','The Harwell computer, is an early British relay-based computer of the 1950s.[NEWLINE][NEWLINE]In 2013, for the second time the Guinness Book of World Records recognised it as the world''s oldest working digital computer, following its restoration, it previously held the title for several years until it was decommissioned in 1973.'),
('TXT_KEY_BUILDING_AXWWP730_QUOTE','[NEWLINE]"Normal people believe that if it ain''t broke, don''t fix it. Engineers believe that if it ain''t broke, it doesn''t have enough features yet."[NEWLINE]');




-- AXWWP731

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP731','TXT_KEY_BUILDING_AXWWP731','TXT_KEY_BUILDING_AXWWP731_PEDIA','TXT_KEY_BUILDING_AXWWP731_HELP','TXT_KEY_BUILDING_AXWWP731_QUOTE','BUILDINGCLASS_AXWWP731',1,-1,100,'AXWWP4_ATLAS',31,'axwwp731.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP731','TXT_KEY_BUILDING_AXWWP731','BUILDING_AXWWP731',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP731'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP731');

UPDATE Buildings SET
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	WorkerSpeedModifier = 10,
	Cost = 1250,
	PrereqTech = 'TECH_COMPUTERS',
	MaxStartEra = 'ERA_FUTURE'
WHERE Type = 'BUILDING_AXWWP731';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP731','YIELD_PRODUCTION',10),('BUILDING_AXWWP731','YIELD_SCIENCE',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP731','ENIAC'),
('TXT_KEY_BUILDING_AXWWP731_PEDIA','ENIAC (Electronic Numerical Integrator and Computer) was amongst the earliest electronic general-purpose computers made. It was Turing-complete, digital and able to solve "a large class of numerical problems" through reprogramming.'),
('TXT_KEY_BUILDING_AXWWP731_QUOTE','[NEWLINE]"Autocorrect has become my worst enema."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP731_HELP','Worker construction speed increased by 10%.');
