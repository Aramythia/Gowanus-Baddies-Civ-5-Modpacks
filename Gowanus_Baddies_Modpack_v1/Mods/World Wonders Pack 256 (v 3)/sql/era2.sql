-- AXWWP232

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP232','TXT_KEY_BUILDING_AXWWP232','TXT_KEY_BUILDING_AXWWP232_PEDIA','TXT_KEY_BUILDING_AXWWP232_HELP','TXT_KEY_BUILDING_AXWWP232_QUOTE','BUILDINGCLASS_AXWWP232',1,-1,100,'AXWWP1_ATLAS',32,'axwwp232.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP232','TXT_KEY_BUILDING_AXWWP232','BUILDING_AXWWP232',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP232'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP232');

UPDATE Buildings SET
	Cost = 250,
	Water = 1, MinAreaSize = 10,
	FreeBuildingThisCity = 'BUILDINGCLASS_LIGHTHOUSE',
	PrereqTech = 'TECH_OPTICS',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP232';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP232','YIELD_PRODUCTION',4);
INSERT INTO Building_SeaResourceYieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP232','YIELD_GOLD',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP232','Tower of Hercules'),
('TXT_KEY_BUILDING_AXWWP232_PEDIA','The Tower of Hercules is an ancient Roman lighthouse on a peninsula about 2.4 kilometers (1.5 mi) from the centre of A Coruna, Galicia, in north-western Spain.[NEWLINE][NEWLINE]The structure, built in the 2nd century and renovated in 1791, is the oldest Roman lighthouse in use today.'),
('TXT_KEY_BUILDING_AXWWP232_QUOTE','[NEWLINE]"Even the tallest tower started from the ground."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP232_HELP','+1 [ICON_GOLD] Gold from sea resources. Free lighthouse in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP233

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP233','TXT_KEY_BUILDING_AXWWP233','TXT_KEY_BUILDING_AXWWP233_PEDIA','TXT_KEY_BUILDING_AXWWP233_HELP','TXT_KEY_BUILDING_AXWWP233_QUOTE','BUILDINGCLASS_AXWWP233',1,-1,100,'AXWWP1_ATLAS',33,'axwwp233.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP233','TXT_KEY_BUILDING_AXWWP233','BUILDING_AXWWP233',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP233'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP233');

UPDATE Buildings SET
	Cost = 250,
	Water = 1, MinAreaSize = 10,
	PrereqTech = 'TECH_OPTICS',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP233';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP233','YIELD_PRODUCTION',2);
INSERT INTO Building_DomainFreeExperiences (BuildingType, DomainType, Experience) VALUES ('BUILDING_AXWWP233','DOMAIN_SEA',20);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP233','Portus Julius'),
('TXT_KEY_BUILDING_AXWWP233_PEDIA','Portus Julius was the first harbor specifically constructed to be a base for the Roman western naval fleet, the classis Misenensis.'),
('TXT_KEY_BUILDING_AXWWP233_QUOTE','[NEWLINE]"He who knows when he can fight and when he cannot, will be victorious."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP233_HELP','+20 [ICON_WAR] XP for all sea units trained in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP255

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP255','TXT_KEY_BUILDING_AXWWP255','TXT_KEY_BUILDING_AXWWP255_PEDIA','TXT_KEY_BUILDING_AXWWP255_HELP','TXT_KEY_BUILDING_AXWWP255_QUOTE','BUILDINGCLASS_AXWWP255',1,-1,100,'AXWWP1_ATLAS',55,'axwwp255.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP255','TXT_KEY_BUILDING_AXWWP255','BUILDING_AXWWP255',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP255'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP255');

UPDATE Buildings SET
	Cost = 250,
	FreeBuildingThisCity = 'BUILDINGCLASS_AQUEDUCT',
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_OPTICS',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP255';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP255','YIELD_FOOD',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP255','Piscina Mirabilis'),
('TXT_KEY_BUILDING_AXWWP255_PEDIA','The Piscina Mirabilis was a freshwater cistern on the Bacoli cliff at the western end of the Gulf of Naples, southern Italy.[NEWLINE][NEWLINE]One of the largest freshwater cisterns built by the ancient Romans, it was situated there in order to provide the Roman western imperial fleet at Portus Julius with drinking water.'),
('TXT_KEY_BUILDING_AXWWP255_QUOTE','[NEWLINE]"A friend dug a hole in the garden and filled it with water. I think he meant well."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP255_HELP','Free aqueduct in the city.');




-- AXWWP235

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP235','TXT_KEY_BUILDING_AXWWP235','TXT_KEY_BUILDING_AXWWP235_PEDIA','TXT_KEY_BUILDING_AXWWP235_HELP','TXT_KEY_BUILDING_AXWWP235_QUOTE','BUILDINGCLASS_AXWWP235',1,-1,100,'AXWWP1_ATLAS',35,'axwwp235.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP235','TXT_KEY_BUILDING_AXWWP235','BUILDING_AXWWP235',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP235'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP235');

UPDATE Buildings SET
	Cost = 250,
	Happiness = 4,
	CityConnectionTradeRouteModifier = 25,
	SpecialistType = 'SPECIALIST_MERCHANT',
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_HORSEBACK_RIDING',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP235';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP235','Appian Way'),
('TXT_KEY_BUILDING_AXWWP235_PEDIA','The Appian Way is one of the earliest and strategically most important Roman roads of the ancient republic.[NEWLINE][NEWLINE]It connected Rome to Brindisi, in southeast Italy.'),
('TXT_KEY_BUILDING_AXWWP235_QUOTE','[NEWLINE]"The Appian Way the queen of the long roads."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP235_HELP','+25% [ICON_GOLD] Gold from city connections.');




-- AXWWP236

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP236','TXT_KEY_BUILDING_AXWWP236','TXT_KEY_BUILDING_AXWWP236_PEDIA','TXT_KEY_BUILDING_AXWWP236_HELP','TXT_KEY_BUILDING_AXWWP236_QUOTE','BUILDINGCLASS_AXWWP236',1,-1,100,'AXWWP1_ATLAS',36,'axwwp236.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP236','TXT_KEY_BUILDING_AXWWP236','BUILDING_AXWWP236',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP236'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP236');

UPDATE Buildings SET
	Cost = 250,
	Happiness = 4,
	GoldenAge = 1,
	GoldenAgeModifier = 20,
	CapturePlunderModifier = 200,
	PrereqTech = 'TECH_HORSEBACK_RIDING',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP236';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP236','Tomb of Cyrus'),
('TXT_KEY_BUILDING_AXWWP236_PEDIA','The Tomb of Cyrus is the monument of Cyrus the Great approximately 1 km southwest of the palaces of Pasargadae. According to Greek sources, it dates back to 559-29 B.C.'),
('TXT_KEY_BUILDING_AXWWP236_QUOTE','[NEWLINE]"O man, whoever thou art, from wheresoever thou cometh, for I know you shall come, I am Cyrus, who founded the Persian Empire."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP236_HELP','Starts [ICON_GOLDEN_AGE] Golden Age. Length of [ICON_GOLDEN_AGE] Golden Ages increased by 20%. Doubles [ICON_GOLD] Gold pillaged by enemy if the city is captured.');




-- AXWWP237

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP237','TXT_KEY_BUILDING_AXWWP237','TXT_KEY_BUILDING_AXWWP237_PEDIA','TXT_KEY_BUILDING_AXWWP237_HELP','TXT_KEY_BUILDING_AXWWP237_QUOTE','BUILDINGCLASS_AXWWP237',1,-1,100,'AXWWP1_ATLAS',37,'axwwp237.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP237','TXT_KEY_BUILDING_AXWWP237','BUILDING_AXWWP237',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP237'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP237');

UPDATE Buildings SET
	Cost = 250,
	FreeBuilding = 'BUILDINGCLASS_WALLS',
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_HORSEBACK_RIDING',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP237';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP237','RESOURCE_STONE','YIELD_PRODUCTION',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP237','Hadrian''s Wall'),
('TXT_KEY_BUILDING_AXWWP237_PEDIA','Hadrian''s Wall was a defensive fortification in the Roman province of Britannia, begun in AD 122 in the reign of the emperor Hadrian.[NEWLINE][NEWLINE]It ran from the banks of the River Tyne near the North Sea to the Solway Firth on the Irish Sea, and was the northern limit of the Roman Empire, immediately north of which were the lands of the northern Ancient Britons, including the Picts.'),
('TXT_KEY_BUILDING_AXWWP237_QUOTE','[NEWLINE]"I''d tell you a joke about a twenty foot wall, but you''d never get over it."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP237_HELP','+2 [ICON_PRODUCTION] Production from [ICON_RES_STONE] Stone. Free Walls in all cities.');




-- AXWWP238

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP238','TXT_KEY_BUILDING_AXWWP238','TXT_KEY_BUILDING_AXWWP238_PEDIA','TXT_KEY_BUILDING_AXWWP238_HELP','TXT_KEY_BUILDING_AXWWP238_QUOTE','BUILDINGCLASS_AXWWP238',1,-1,100,'AXWWP1_ATLAS',38,'axwwp238.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP238','TXT_KEY_BUILDING_AXWWP238','BUILDING_AXWWP238',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP238'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP238');

UPDATE Buildings SET
	Cost = 250,
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	River = 1,
	Water = 1, MinAreaSize = 10,
	PrereqTech = 'TECH_MATHEMATICS',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP238';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP238','YIELD_FOOD',3), ('BUILDING_AXWWP238','YIELD_CULTURE',3);

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP238','RESOURCE_CITRUS','YIELD_PRODUCTION',2),
('BUILDING_AXWWP238','RESOURCE_BANANA','YIELD_PRODUCTION',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP238','Leptis Magna'),
('TXT_KEY_BUILDING_AXWWP238_PEDIA','Leptis Magna was a prominent city in Roman Libya. Originally a Berber and Punic foundation, it was greatly expanded under emperor Septimius Severus (r. 193–211), who was a native of the city. [NEWLINE][NEWLINE]The ruins of Leptis Magna are located in Khoms, Libya, 130 km (81 mi) east of Tripoli, on the coast where the Wadi Lebda meets the sea.[NEWLINE][NEWLINE]The site is one of best preserved Roman ruins in the Mediterranean.'),
('TXT_KEY_BUILDING_AXWWP238_QUOTE','[NEWLINE]"Society is well governed when its people obey the magistrates, and the magistrates obey the law."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP238_HELP','+2 [ICON_PRODUCTION] Production from [ICON_RES_BANANA] Banana and [ICON_RES_CITRUS] Citrus. [NEWLINE][COLOR_LIGHT_GREY]Requires coast and river.[ENDCOLOR]');




-- AXWWP239

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP239','TXT_KEY_BUILDING_AXWWP239','TXT_KEY_BUILDING_AXWWP239_PEDIA','TXT_KEY_BUILDING_AXWWP239_HELP','TXT_KEY_BUILDING_AXWWP239_QUOTE','BUILDINGCLASS_AXWWP239',1,-1,100,'AXWWP1_ATLAS',39,'axwwp239.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP239','TXT_KEY_BUILDING_AXWWP239','BUILDING_AXWWP239',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP239'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP239');

UPDATE Buildings SET
	Cost = 250,
	SpecialistType = 'SPECIALIST_ENGINEER',
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	Hill = 1,
	NearbyMountainRequired = 1,
	PrereqTech = 'TECH_MATHEMATICS',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP239';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP239','YIELD_FAITH',3), ('BUILDING_AXWWP239','YIELD_CULTURE',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP239','Timgad'),
('TXT_KEY_BUILDING_AXWWP239_PEDIA','Timgad was a Roman-Berber city in the Aures Mountains of Algeria. It was founded by the Emperor Trajan around AD 100.[NEWLINE][NEWLINE]Located in modern-day Algeria, about 35 km east of the city of Batna, the ruins are noteworthy for representing one of the best extant examples of the grid plan as used in Roman town planning. Timgad was inscribed as a World Heritage Site by UNESCO in 1982.'),
('TXT_KEY_BUILDING_AXWWP239_QUOTE','[NEWLINE]"Just because you do not take an interest in politics doesn''t mean politics won''t take an interest in you."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP239_HELP','[COLOR_LIGHT_GREY]Requires hill and mountain within two tiles.[ENDCOLOR]');




-- AXWWP240

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP240','TXT_KEY_BUILDING_AXWWP240','TXT_KEY_BUILDING_AXWWP240_PEDIA','TXT_KEY_BUILDING_AXWWP240_HELP','TXT_KEY_BUILDING_AXWWP240_QUOTE','BUILDINGCLASS_AXWWP240',1,-1,100,'AXWWP1_ATLAS',40,'axwwp240.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP240','TXT_KEY_BUILDING_AXWWP240','BUILDING_AXWWP240',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP240'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP240');

UPDATE Buildings SET
	Cost = 250,
	FreshWater = 1,
	Happiness = 3,
	GreatPersonExpendGold = 100,
	PrereqTech = 'TECH_MATHEMATICS',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP240';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP240','YIELD_GOLD',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP240','Baths of Trajan'),
('TXT_KEY_BUILDING_AXWWP240_PEDIA','The Baths of Trajan were a massive thermae, a bathing and leisure complex, built in ancient Rome starting from 104 AD and dedicated during the Kalends of July in 109.[NEWLINE][NEWLINE]Built on a platform that had itself been built over Nero''s Palace, the bath complex was immense by ancient Roman standards, covering an area of approximately 330 by 215 meters.'),
('TXT_KEY_BUILDING_AXWWP240_QUOTE','[NEWLINE]"If you want happiness for an hour, take a nap."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP240_HELP','100 [ICON_GOLD] Gold for each Great Person expended.[NEWLINE][COLOR_LIGHT_GREY]Requires fresh water.[ENDCOLOR]');




-- AXWWP251

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP251','TXT_KEY_BUILDING_AXWWP251','TXT_KEY_BUILDING_AXWWP251_PEDIA','TXT_KEY_BUILDING_AXWWP251_HELP','TXT_KEY_BUILDING_AXWWP251_QUOTE','BUILDINGCLASS_AXWWP251',1,-1,100,'AXWWP1_ATLAS',51,'axwwp251.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP251','TXT_KEY_BUILDING_AXWWP251','BUILDING_AXWWP251',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP251'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP251');

UPDATE Buildings SET
	Cost = 250,
	Mountain = 1,
	PrereqTech = 'TECH_MATHEMATICS',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP251';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP251','YIELD_CULTURE',4);

INSERT INTO Building_LakePlotYieldChanges (BuildingType, YieldType, Yield) VALUES
('BUILDING_AXWWP251','YIELD_FOOD',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP251','Sigiriya'),
('TXT_KEY_BUILDING_AXWWP251_PEDIA','Sigiriya is an ancient rock fortress located in the northern Matale District near the town of Dambulla in the Central Province, Sri Lanka.[NEWLINE][NEWLINE]Sigiriya is considered to be one of the most important urban planning sites of the first millennium, and the site plan is considered very elaborate and imaginative. The plan combined concepts of symmetry and asymmetry to intentionally interlock the man-made geometrical and natural forms of the surroundings.'),
('TXT_KEY_BUILDING_AXWWP251_QUOTE','[NEWLINE]"I am Budal. Came with hundreds of people to see Sigiriya. Since all the others wrote poems, I did not!"[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP251_HELP','+1 [ICON_FOOD] Food from lake tiles.[NEWLINE][COLOR_LIGHT_GREY]Requires mountain near the city.[ENDCOLOR]');




-- AXWWP241

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP241','TXT_KEY_BUILDING_AXWWP241','TXT_KEY_BUILDING_AXWWP241_PEDIA','TXT_KEY_BUILDING_AXWWP241_HELP','TXT_KEY_BUILDING_AXWWP241_QUOTE','BUILDINGCLASS_AXWWP241',1,-1,100,'AXWWP1_ATLAS',41,'axwwp241.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP241','TXT_KEY_BUILDING_AXWWP241','BUILDING_AXWWP241',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP241'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP241');

UPDATE Buildings SET
	Cost = 250,
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_CONSTRUCTION',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP241';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP241','YIELD_CULTURE',4);
INSERT INTO Building_FeatureYieldChanges (BuildingType, FeatureType, YieldType, Yield) VALUES ('BUILDING_AXWWP241','FEATURE_JUNGLE','YIELD_FAITH',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP241','Calakmul'),
('TXT_KEY_BUILDING_AXWWP241_PEDIA','Calakmul is a Maya archaeological site in the Mexican state of Campeche, deep in the jungles of the greater Peten Basin region. It is 35 kilometres (22 mi) from the Guatemalan border.[NEWLINE][NEWLINE]Calakmul was one of the largest and most powerful ancient cities ever uncovered in the Maya lowlands.'),
('TXT_KEY_BUILDING_AXWWP241_QUOTE','[NEWLINE]"A very great vision is needed and the man who has it must follow it as the eagle seeks the deepest blue of the sky."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP241_HELP','+1 [ICON_PEACE] Faith from jungle tiles.');




-- AXWWP242

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP242','TXT_KEY_BUILDING_AXWWP242','TXT_KEY_BUILDING_AXWWP242_PEDIA','TXT_KEY_BUILDING_AXWWP242_HELP','TXT_KEY_BUILDING_AXWWP242_QUOTE','BUILDINGCLASS_AXWWP242',1,-1,100,'AXWWP1_ATLAS',42,'axwwp242.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP242','TXT_KEY_BUILDING_AXWWP242','BUILDING_AXWWP242',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP242'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP242');

UPDATE Buildings SET
	Cost = 250,
	Mountain = 1,
	NearbyTerrainRequired = 'TERRAIN_DESERT',
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	BuildingProductionModifier = 10,
	FreeBuilding = 'BUILDINGCLASS_WALLS',
	PrereqTech = 'TECH_CONSTRUCTION',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP242';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP242','YIELD_PRODUCTION',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP242','Masada'),
('TXT_KEY_BUILDING_AXWWP242_PEDIA','Masada is an ancient fortification in the Southern District of Israel situated on top of an isolated rock plateau, akin to a mesa. Herod the Great built palaces for himself on the mountain and fortified Masada between 37 and 31 BCE.'),
('TXT_KEY_BUILDING_AXWWP242_QUOTE','[NEWLINE]"Ask about your neighbors, then buy the house."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP242_HELP','+10% [ICON_PRODUCTION] Production for Buildings. Free Walls in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires desert and mountain.[ENDCOLOR]');




-- AXWWP243

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP243','TXT_KEY_BUILDING_AXWWP243','TXT_KEY_BUILDING_AXWWP243_PEDIA','TXT_KEY_BUILDING_AXWWP243_HELP','TXT_KEY_BUILDING_AXWWP243_QUOTE','BUILDINGCLASS_AXWWP243',1,-1,100,'AXWWP1_ATLAS',43,'axwwp243.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP243','TXT_KEY_BUILDING_AXWWP243','BUILDING_AXWWP243',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP243'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP243');

UPDATE Buildings SET
	Cost = 250,
	Hill = 1,
	SpecialistType = 'SPECIALIST_ARTIST',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_CONSTRUCTION',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP243';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP243','YIELD_PRODUCTION',3);

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP243','RESOURCE_STONE','YIELD_CULTURE',2),
('BUILDING_AXWWP243','RESOURCE_STONE','YIELD_FAITH',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP243','Ajanta Caves'),
('TXT_KEY_BUILDING_AXWWP243_PEDIA','The Ajanta Caves are rock-cut Buddhist cave monuments which date from the 2nd century BCE to about 480 CE in Aurangabad district of Maharashtra state of India.[NEWLINE][NEWLINE]The caves include paintings and rock-cut sculptures described as among the finest surviving examples of ancient Indian art, particularly expressive paintings that present emotion through gesture, pose and form.'),
('TXT_KEY_BUILDING_AXWWP243_QUOTE','[NEWLINE]"It does not matter how slowly you go as long as you do not stop."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP243_HELP','+2 [ICON_CULTURE] Culture and [ICON_PEACE] Faith from [ICON_RES_STONE] Stone.[NEWLINE][COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');




-- AXWWP244

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP244','TXT_KEY_BUILDING_AXWWP244','TXT_KEY_BUILDING_AXWWP244_PEDIA','TXT_KEY_BUILDING_AXWWP244_HELP','TXT_KEY_BUILDING_AXWWP244_QUOTE','BUILDINGCLASS_AXWWP244',1,-1,100,'AXWWP1_ATLAS',44,'axwwp244.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP244','TXT_KEY_BUILDING_AXWWP244','BUILDING_AXWWP244',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP244'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP244');

UPDATE Buildings SET
	Cost = 250,
	NumCityCostMod = 30,
	FreeBuilding = 'BUILDINGCLASS_LIBRARY',
	SpecialistType = 'SPECIALIST_SCIENTIST',
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_PHILOSOPHY',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP244';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP244','YIELD_SCIENCE',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP244','Library of Celsus'),
('TXT_KEY_BUILDING_AXWWP244_PEDIA','The Library of Celsus is an ancient Roman building in Ephesus, Anatolia, now part of Selcuk, Turkey.[NEWLINE][NEWLINE]The library was "one of the most impressive buildings in the Roman Empire" and built to store 12,000 scrolls and to serve as a mausoleum for Celsus, who is buried in a crypt beneath the library in a decorated marble sarcophagus. The Library of Celsus was the "third-largest library in the ancient world" behind both Alexandria and Pergamum.'),
('TXT_KEY_BUILDING_AXWWP244_QUOTE','[NEWLINE]"Learning is like the horizon; there is no limit."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP244_HELP','Free Library in every city.');




-- AXWWP245

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP245','TXT_KEY_BUILDING_AXWWP245','TXT_KEY_BUILDING_AXWWP245_PEDIA','TXT_KEY_BUILDING_AXWWP245_HELP','TXT_KEY_BUILDING_AXWWP245_QUOTE','BUILDINGCLASS_AXWWP245',1,-1,100,'AXWWP1_ATLAS',45,'axwwp245.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP245','TXT_KEY_BUILDING_AXWWP245','BUILDING_AXWWP245',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP245'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP245');

UPDATE Buildings SET
	Cost = 250,
	Hill = 1,
	SpecialistType = 'SPECIALIST_ARTIST',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_PHILOSOPHY',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP245';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP245','YIELD_FAITH',4);

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP245','RESOURCE_STONE','YIELD_CULTURE',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP245','Pushpagiri'),
('TXT_KEY_BUILDING_AXWWP245_PEDIA','Pushpagiri was an ancient Buddhist mahavihara located atop Langudi Hills in Jajpur district of Odisha, India.[NEWLINE][NEWLINE]The complex contains ruins of stupas, rock-cut sculptures and other artifacts. It is believed to be a major ancient centre of learning. It flourished between 3rd and 11th centuries CE.'),
('TXT_KEY_BUILDING_AXWWP245_QUOTE','[NEWLINE]"The stone tope exhibited supernatural lights and other miracles, sunshades on it between the dome and the amalaka remained there like needles held by a magnet."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP245_HELP','+2 [ICON_CULTURE] Culture from [ICON_RES_STONE] Stone.[NEWLINE][COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');




-- AXWWP246

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP246','TXT_KEY_BUILDING_AXWWP246','TXT_KEY_BUILDING_AXWWP246_PEDIA','TXT_KEY_BUILDING_AXWWP246_HELP','TXT_KEY_BUILDING_AXWWP246_QUOTE','BUILDINGCLASS_AXWWP246',1,-1,100,'AXWWP1_ATLAS',46,'axwwp246.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP246','TXT_KEY_BUILDING_AXWWP246','BUILDING_AXWWP246',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP246'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP246');

UPDATE Buildings SET
	Cost = 250,
	CultureRateModifier = 5,
	SpecialistCount = 1,
	SpecialistType = 'SPECIALIST_ARTIST',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_PHILOSOPHY',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP246';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP246','YIELD_CULTURE',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP246','Nalanda'),
('TXT_KEY_BUILDING_AXWWP246_PEDIA','Nalanda was a Mahavihara, a large Buddhist monastery, in the ancient kingdom of Magadha (modern-day Bihar) in India, , and was a centre of learning from the fifth century CE to c.?1200 CE.[NEWLINE][NEWLINE]At its peak, the school attracted scholars and students from near and far with some travelling from Tibet, China, Korea, and Central Asia.'),
('TXT_KEY_BUILDING_AXWWP246_QUOTE','[NEWLINE]"A wise man once told me to always listen carefully because... um... I forgot."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP246_HELP','+5% [ICON_CULTURE] Culture in the city.');




-- AXWWP247

INSERT INTO Buildings (Type, Description, Civilopedia, Quote, Help, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP247','TXT_KEY_BUILDING_AXWWP247','TXT_KEY_BUILDING_AXWWP247_PEDIA','TXT_KEY_BUILDING_AXWWP247_QUOTE','TXT_KEY_BUILDING_AXWWP247_HELP','BUILDINGCLASS_AXWWP247',1,-1,100,'AXWWP1_ATLAS',47,'axwwp247.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP247','TXT_KEY_BUILDING_AXWWP247','BUILDING_AXWWP247',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP247'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP247');

UPDATE Buildings SET
	Cost = 250,
	Defense = 250,
	Hill = 1,
	PrereqTech = 'TECH_PHILOSOPHY',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP247';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP247','YIELD_FOOD',3), ('BUILDING_AXWWP247','YIELD_FAITH',3);

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP247','RESOURCE_COW','YIELD_FAITH',2),
('BUILDING_AXWWP247','RESOURCE_SHEEP','YIELD_FAITH',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP247','Takht-i-Bahi'),
('TXT_KEY_BUILDING_AXWWP247_PEDIA','Takht-i-Bahi is an Indo-Parthian archaeological site of an ancient Buddhist monastery in Mardan, Khyber-Pakhtunkhwa, Pakistan.[NEWLINE][NEWLINE]The Buddhist monastery was founded in the 1st century CE, and was in use until the 7th century.'),
('TXT_KEY_BUILDING_AXWWP247_QUOTE','[NEWLINE]"Treat each day as your last; one day you will be right."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP247_HELP','+2 [ICON_PEACE] Faith from [ICON_RES_COW] Cow and [ICON_RES_SHEEP] Sheep.[NEWLINE][COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');



-- AXWWP248

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP248','TXT_KEY_BUILDING_AXWWP248','TXT_KEY_BUILDING_AXWWP248_PEDIA','TXT_KEY_BUILDING_AXWWP248_HELP','TXT_KEY_BUILDING_AXWWP248_QUOTE','BUILDINGCLASS_AXWWP248',1,-1,100,'AXWWP1_ATLAS',48,'axwwp248.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP248','TXT_KEY_BUILDING_AXWWP248','BUILDING_AXWWP248',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP248'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP248');

UPDATE Buildings SET
	Cost = 250,
	NearbyTerrainRequired = 'TERRAIN_DESERT',
	SpecialistType = 'SPECIALIST_ARTIST',
	GreatPeopleRateChange = 1,
	CultureRateModifier = 10,
	PrereqTech = 'TECH_DRAMA',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP248';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP248','YIELD_CULTURE',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP248','Amphitheatre of El Jem'),
('TXT_KEY_BUILDING_AXWWP248_PEDIA','The amphitheatre was built around 238 AD in Thysdrus, located in the Roman province of Africa Proconsulare in present-day El Djem, Tunisia.[NEWLINE][NEWLINE]It is one of the best preserved Roman stone ruins in the world, and is unique in Africa. As other amphitheatres in the Roman Empire, it was built for spectator events, and it is one of the biggest amphitheatres in the world. The estimated capacity is 35,000, and the sizes of the big and the small axes are respectively 148 metres (486 ft) and 122 metres (400 ft).'),
('TXT_KEY_BUILDING_AXWWP248_QUOTE','[NEWLINE]"The play was a great success, but the audience was a disaster."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP248_HELP','+10% [ICON_CULTURE] Culture in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires desert.[ENDCOLOR]');




-- AXWWP249

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP249','TXT_KEY_BUILDING_AXWWP249','TXT_KEY_BUILDING_AXWWP249_PEDIA','TXT_KEY_BUILDING_AXWWP249_HELP','TXT_KEY_BUILDING_AXWWP249_QUOTE','BUILDINGCLASS_AXWWP249',1,-1,100,'AXWWP1_ATLAS',49,'axwwp249.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP249','TXT_KEY_BUILDING_AXWWP249','BUILDING_AXWWP249',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP249'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP249');

UPDATE Buildings SET
	Cost = 250,
	NearbyTerrainRequired = 'TERRAIN_PLAINS',
	SpecialistType = 'SPECIALIST_ARTIST',
	GreatPeopleRateChange = 1,
	CultureRateModifier = 10,
	PrereqTech = 'TECH_DRAMA',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP249';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP249','YIELD_CULTURE',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP249','Theatre of Orange'),
('TXT_KEY_BUILDING_AXWWP249_PEDIA','The Theatre of Orange is a Roman theatre in Orange, Vaucluse, France.[NEWLINE][NEWLINE]It is one of the best preserved of all Roman theatres, and served the Roman colony of Arausio.[NEWLINE][NEWLINE]Mime, pantomime, poetry readings and the "attelana" (a kind of farce rather like the commedia dell''arte) was the dominant form of entertainment, much of which lasted all day.[NEWLINE][NEWLINE]The entertainment offered was open to all and free of charge.'),
('TXT_KEY_BUILDING_AXWWP249_QUOTE','[NEWLINE]"Tried acting in a theatre full of farmers. Got mooed off stage."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP249_HELP','+10% [ICON_CULTURE] Culture in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires plains.[ENDCOLOR]');




-- AXWWP250

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP250','TXT_KEY_BUILDING_AXWWP250','TXT_KEY_BUILDING_AXWWP250_PEDIA','TXT_KEY_BUILDING_AXWWP250_HELP','TXT_KEY_BUILDING_AXWWP250_QUOTE','BUILDINGCLASS_AXWWP250',1,-1,100,'AXWWP1_ATLAS',50,'axwwp250.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP250','TXT_KEY_BUILDING_AXWWP250','BUILDING_AXWWP250',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP250'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP250');

UPDATE Buildings SET
	Cost = 250,
	Happiness = 3,
	NearbyTerrainRequired = 'TERRAIN_GRASS',
	PrereqTech = 'TECH_DRAMA',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP250';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP250','YIELD_FAITH',3);

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP250','RESOURCE_WINE','YIELD_FOOD',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP250','Temple of Bacchus'),
('TXT_KEY_BUILDING_AXWWP250_PEDIA','The Temple of Bacchus at Baalbek, a World Heritage site, is one of the best preserved and grandest Roman temple ruins in the world.[NEWLINE][NEWLINE]The Temple is enriched by some of the most refined reliefs and sculpture to survive from antiquity. It and its ornamentation served as an influential model for Neoclassical architecture.'),
('TXT_KEY_BUILDING_AXWWP250_QUOTE','[NEWLINE]"Eat well, stay fit, die anyway."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP250_HELP','+2 [ICON_FOOD] Food from [ICON_RES_WINE] Wine.[NEWLINE][COLOR_LIGHT_GREY]Requires grasslands.[ENDCOLOR]');




-- AXWWP252

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP252','TXT_KEY_BUILDING_AXWWP252','TXT_KEY_BUILDING_AXWWP252_PEDIA','TXT_KEY_BUILDING_AXWWP252_HELP','TXT_KEY_BUILDING_AXWWP252_QUOTE','BUILDINGCLASS_AXWWP252',1,-1,100,'AXWWP1_ATLAS',52,'axwwp252.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP252','TXT_KEY_BUILDING_AXWWP252','BUILDING_AXWWP252',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP252'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP252');

UPDATE Buildings SET
	Cost = 250,
	Hill = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_CURRENCY',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP252';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP252','YIELD_PRODUCTION',3), ('BUILDING_AXWWP252','YIELD_CULTURE',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP252','Monte Alban'),
('TXT_KEY_BUILDING_AXWWP252_PEDIA','Monte Alban is a large pre-Columbian archaeological site in the Santa Cruz Xoxocotlan Municipality in the southern Mexican state of Oaxaca.[NEWLINE][NEWLINE]Besides being one of the earliest cities of Mesoamerica, Monte Alban''s importance stems also from its role as the pre-eminent Zapotec socio-political and economic center for close to a thousand years.'),
('TXT_KEY_BUILDING_AXWWP252_QUOTE','[NEWLINE]"We cannot waste one drop of our energy. We must live and change with the world around us."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP252_HELP','[COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');




-- AXWWP253

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP253','TXT_KEY_BUILDING_AXWWP253','TXT_KEY_BUILDING_AXWWP253_PEDIA','TXT_KEY_BUILDING_AXWWP253_HELP','TXT_KEY_BUILDING_AXWWP253_QUOTE','BUILDINGCLASS_AXWWP253',1,-1,100,'AXWWP1_ATLAS',53,'axwwp253.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP253','TXT_KEY_BUILDING_AXWWP253','BUILDING_AXWWP253',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP253'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP253');

UPDATE Buildings SET
	Cost = 250,
	Happiness = 3,
	NearbyMountainRequired = 1,
	PrereqTech = 'TECH_CURRENCY',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP253';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP253','YIELD_GOLD',3);
INSERT INTO Building_LocalResourceAnds (BuildingType, ResourceType) VALUES ('BUILDING_AXWWP253','RESOURCE_GOLD');

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP253','RESOURCE_GOLD','YIELD_PRODUCTION',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP253','Las Medulas'),
('TXT_KEY_BUILDING_AXWWP253_PEDIA','Las Medulas is a historic gold-mining site near the town of Ponferrada in the comarca of El Bierzo.[NEWLINE][NEWLINE]It was the most important gold mine, as well as the largest open-pit gold mine, in the entire Roman Empire.'),
('TXT_KEY_BUILDING_AXWWP253_QUOTE','[NEWLINE]"When Gold argues the cause, eloquence is impotent."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP253_HELP','+2 [ICON_PRODUCTION] Production from [ICON_RES_GOLD] Gold.[NEWLINE][COLOR_LIGHT_GREY]Requires nearby mountain and gold resource.[ENDCOLOR]');




-- AXWWP254

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP254','TXT_KEY_BUILDING_AXWWP254','TXT_KEY_BUILDING_AXWWP254_PEDIA','TXT_KEY_BUILDING_AXWWP254_HELP','TXT_KEY_BUILDING_AXWWP254_QUOTE','BUILDINGCLASS_AXWWP254',1,-1,100,'AXWWP1_ATLAS',54,'axwwp254.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP254','TXT_KEY_BUILDING_AXWWP254','BUILDING_AXWWP254',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP254'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP254');

UPDATE Buildings SET
	Cost = 250,
	FreshWater = 1,
	FoodKept = 30,
	PrereqTech = 'TECH_CURRENCY',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP254';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP254','YIELD_FOOD',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP254','Basilica Cistern'),
('TXT_KEY_BUILDING_AXWWP254_PEDIA','The Basilica Cistern is the largest of several hundred ancient cisterns that lie beneath the city of Istanbul (formerly Constantinople), Turkey.[NEWLINE][NEWLINE]The cistern, located southwest of the Hagia Sophia on the historical peninsula of Sarayburnu, was built in the 6th century during the reign of Byzantine Emperor Justinian I.'),
('TXT_KEY_BUILDING_AXWWP254_QUOTE','[NEWLINE]"A man of wisdom delights in water."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP254_HELP','+30% [ICON_FOOD] is carried over after a new citizen is born.[NEWLINE][COLOR_LIGHT_GREY]Requires fresh water.[ENDCOLOR]');




-- AXWWP259

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP259','TXT_KEY_BUILDING_AXWWP259','TXT_KEY_BUILDING_AXWWP259_PEDIA','TXT_KEY_BUILDING_AXWWP259_HELP','TXT_KEY_BUILDING_AXWWP259_QUOTE','BUILDINGCLASS_AXWWP259',1,-1,100,'AXWWP1_ATLAS',59,'axwwp259.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP259','TXT_KEY_BUILDING_AXWWP259','BUILDING_AXWWP259',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP259'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP259');

UPDATE Buildings SET
	Cost = 250,
	NearbyMountainRequired = 1,
	NearbyTerrainRequired = 'TERRAIN_DESERT',
	PrereqTech = 'TECH_CURRENCY',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP259';

INSERT INTO Building_TerrainYieldChanges (BuildingType, TerrainType, YieldType, Yield) VALUES
('BUILDING_AXWWP259','TERRAIN_DESERT','YIELD_FOOD',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP259','Aflaj Irrigation Systems'),
('TXT_KEY_BUILDING_AXWWP259_PEDIA','The Aflaj Irrigation Systems of Oman are ancient water channels from 500 AD located in the regions of Dakhiliyah, Sharqiyah and Batinah.[NEWLINE][NEWLINE]This irrigation system effectively divided the water among all the inhabitants; it flowed by gravity from the sources to homes and cropland.'),
('TXT_KEY_BUILDING_AXWWP259_QUOTE','[NEWLINE]"Water is the soul of the Earth."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP259_HELP','+1 [ICON_FOOD] Food from desert tiles.[NEWLINE][COLOR_LIGHT_GREY]Requires desert and mountain nearby.[ENDCOLOR]');




-- AXWWP234

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP234','TXT_KEY_BUILDING_AXWWP234','TXT_KEY_BUILDING_AXWWP234_PEDIA','TXT_KEY_BUILDING_AXWWP234_HELP','TXT_KEY_BUILDING_AXWWP234_QUOTE','BUILDINGCLASS_AXWWP234',1,-1,100,'AXWWP1_ATLAS',34,'axwwp234.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP234','TXT_KEY_BUILDING_AXWWP234','BUILDING_AXWWP234',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP234'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP234');

UPDATE Buildings SET
	Cost = 250,
	River = 1,
	Happiness = 3,
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_ENGINEERING',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP234';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP234','YIELD_CULTURE',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP234','Anji Bridge'),
('TXT_KEY_BUILDING_AXWWP234_PEDIA','The Anji Bridge is the world''s oldest open-spandrel segmental arch bridge of stone construction.[NEWLINE][NEWLINE]Located in the southern part of Hebei Province, it is the oldest standing bridge in China.'),
('TXT_KEY_BUILDING_AXWWP234_QUOTE','[NEWLINE]"The hardest thing in life to learn is which bridge to cross and which to burn."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP234_HELP','[COLOR_LIGHT_GREY]Requires river.[ENDCOLOR]');




-- AXWWP256

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP256','TXT_KEY_BUILDING_AXWWP256','TXT_KEY_BUILDING_AXWWP256_PEDIA','TXT_KEY_BUILDING_AXWWP256_HELP','TXT_KEY_BUILDING_AXWWP256_QUOTE','BUILDINGCLASS_AXWWP256',1,-1,100,'AXWWP1_ATLAS',56,'axwwp256.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP256','TXT_KEY_BUILDING_AXWWP256','BUILDING_AXWWP256',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP256'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP256');

UPDATE Buildings SET
	Cost = 250,
	Happiness = 3,
	FreeBuildingThisCity = 'BUILDINGCLASS_AQUEDUCT',
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_ENGINEERING',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP256';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP256','YIELD_FOOD',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP256','Pont du Gard'),
('TXT_KEY_BUILDING_AXWWP256_PEDIA','The Pont du Gard is an ancient Roman aqueduct that crosses the Gardon River near the town of Vers-Pont-du-Gard in southern France.[NEWLINE][NEWLINE]The Pont du Gard is the highest of all elevated Roman aqueducts, and, along with the Aqueduct of Segovia, one of the best preserved. It was added to UNESCO''s list of World Heritage Sites in 1985 because of its historical importance.'),
('TXT_KEY_BUILDING_AXWWP256_QUOTE','[NEWLINE]"The health of our waters is the principle measure of how we live on the land."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP256_HELP','Free aqueduct in the city.');




-- AXWWP257

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP257','TXT_KEY_BUILDING_AXWWP257','TXT_KEY_BUILDING_AXWWP257_PEDIA','TXT_KEY_BUILDING_AXWWP257_HELP','TXT_KEY_BUILDING_AXWWP257_QUOTE','BUILDINGCLASS_AXWWP257',1,-1,100,'AXWWP1_ATLAS',57,'axwwp257.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP257','TXT_KEY_BUILDING_AXWWP257','BUILDING_AXWWP257',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP257'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP257');

UPDATE Buildings SET
	Cost = 250,
	River = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_ENGINEERING',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP257';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP257','YIELD_FOOD',3);
INSERT INTO Building_LakePlotYieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP257','YIELD_PRODUCTION',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP257','Cornalvo Dam'),
('TXT_KEY_BUILDING_AXWWP257_PEDIA','The Cornalvo Dam is a Roman gravity dam in Badajoz province, Extremadura, Spain, dating to the 1st or 2nd century AD.[NEWLINE][NEWLINE]The earth dam with stone cladding on the water face is still in use.'),
('TXT_KEY_BUILDING_AXWWP257_QUOTE','[NEWLINE]"Dam you beavers!"[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP257_HELP','+1 [ICON_PRODUCTION] Production from lake tiles.[NEWLINE][COLOR_LIGHT_GREY]Requires river.[ENDCOLOR]');




-- AXWWP258

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP258','TXT_KEY_BUILDING_AXWWP258','TXT_KEY_BUILDING_AXWWP258_PEDIA','TXT_KEY_BUILDING_AXWWP258_HELP','TXT_KEY_BUILDING_AXWWP258_QUOTE','BUILDINGCLASS_AXWWP258',1,-1,100,'AXWWP1_ATLAS',58,'axwwp258.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP258','TXT_KEY_BUILDING_AXWWP258','BUILDING_AXWWP258',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP258'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP258');

UPDATE Buildings SET
	Cost = 250,
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_ENGINEERING',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP258';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP258','YIELD_FAITH',3);
INSERT INTO Building_FeatureYieldChanges (BuildingType, FeatureType, YieldType, Yield) VALUES ('BUILDING_AXWWP258','FEATURE_JUNGLE','YIELD_CULTURE',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP258','Pyramid of the Sun'),
('TXT_KEY_BUILDING_AXWWP258_PEDIA','The Pyramid of the Sun is the largest building in Teotihuacan, believed to have been constructed about 200 CE, and one of the largest in Mesoamerica.[NEWLINE][NEWLINE]Found along the Avenue of the Dead, in between the Pyramid of the Moon and the Ciudadela, and in the shadow of the massive mountain Cerro Gordo, the pyramid is part of a large complex in the heart of the city.'),
('TXT_KEY_BUILDING_AXWWP258_QUOTE','[NEWLINE]"Turn your face to the sun and the shadows fall behind you."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP258_HELP','+1 [ICON_CULTURE] Culture from jungle tiles.');




-- AXWWP260

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP260','TXT_KEY_BUILDING_AXWWP260','TXT_KEY_BUILDING_AXWWP260_PEDIA','TXT_KEY_BUILDING_AXWWP260_HELP','TXT_KEY_BUILDING_AXWWP260_QUOTE','BUILDINGCLASS_AXWWP260',1,-1,100,'AXWWP1_ATLAS',60,'axwwp260.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP260','TXT_KEY_BUILDING_AXWWP260','BUILDING_AXWWP260',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP260'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP260');

UPDATE Buildings SET
	Cost = 250,
	Water = 1, MinAreaSize = 10,
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_IRON_WORKING',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP260';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP260','YIELD_FAITH',4);

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP260','RESOURCE_STONE','YIELD_CULTURE',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP260','Elephanta Caves'),
('TXT_KEY_BUILDING_AXWWP260_PEDIA','Elephanta Caves are a collection of cave temples predominantly dedicated to the Hindu god Shiva.[NEWLINE][NEWLINE]They are located on Elephanta Island in Mumbai Harbour, India.[NEWLINE][NEWLINE]The Elephanta Caves contain rock cut stone sculptures that show syncretism of Hindu and Buddhist ideas and iconography.'),
('TXT_KEY_BUILDING_AXWWP260_QUOTE','[NEWLINE]"Wherever you go, there you are."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP260_HELP','+2 [ICON_CULTURE] Culture from [ICON_RES_STONE] Stone.[NEWLINE][COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP261

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP261','TXT_KEY_BUILDING_AXWWP261','TXT_KEY_BUILDING_AXWWP261_PEDIA','TXT_KEY_BUILDING_AXWWP261_HELP','TXT_KEY_BUILDING_AXWWP261_QUOTE','BUILDINGCLASS_AXWWP261',1,-1,100,'AXWWP1_ATLAS',61,'axwwp261.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP261','TXT_KEY_BUILDING_AXWWP261','BUILDING_AXWWP261',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP261'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP261');

UPDATE Buildings SET
	Cost = 250,
	Happiness = 5,
	PrereqTech = 'TECH_IRON_WORKING',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP261';

INSERT INTO Building_DomainFreeExperiences (BuildingType, DomainType, Experience) VALUES ('BUILDING_AXWWP261','DOMAIN_LAND',15);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP261','Arch of Constantine'),
('TXT_KEY_BUILDING_AXWWP261_PEDIA','The Arch of Constantine is a triumphal arch in Rome, situated between the Colosseum and the Palatine Hill.[NEWLINE][NEWLINE]It was erected by the Roman Senate to commemorate Constantine I''s victory over Maxentius at the Battle of Milvian Bridge in 312.[NEWLINE][NEWLINE]Dedicated in 315, it is the largest Roman triumphal arch.'),
('TXT_KEY_BUILDING_AXWWP261_QUOTE','[NEWLINE]"Catapultam habeo. Nisi pecuniam omnem mihi dabis, ad caput tuum saxum immane mittam."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP261_HELP','+15 [ICON_WAR] XP for land units produced in the city.');




-- AXWWP262

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP262','TXT_KEY_BUILDING_AXWWP262','TXT_KEY_BUILDING_AXWWP262_PEDIA','TXT_KEY_BUILDING_AXWWP262_HELP','TXT_KEY_BUILDING_AXWWP262_QUOTE','BUILDINGCLASS_AXWWP262',1,-1,100,'AXWWP1_ATLAS',62,'axwwp262.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP262','TXT_KEY_BUILDING_AXWWP262','BUILDING_AXWWP262',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP262'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP262');

UPDATE Buildings SET
	Cost = 250,
	Defense = 500,
	FreeBuilding = 'BUILDINGCLASS_WALLS',
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_IRON_WORKING',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP262';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP262','Aurelian Walls'),
('TXT_KEY_BUILDING_AXWWP262_PEDIA','The Aurelian Walls are a line of city walls built between 271 AD and 275 AD in Rome, Italy, during the reign of the Roman Emperors Aurelian and Probus.[NEWLINE][NEWLINE]The walls enclosed all the seven hills of Rome plus the Campus Martius and, on the left bank of the Tiber, the Trastevere district.'),
('TXT_KEY_BUILDING_AXWWP262_QUOTE','[NEWLINE]"Men build too many walls and not enough bridges."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP262_HELP','Free Walls in all cities.');




-- AXWWP263

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP263','TXT_KEY_BUILDING_AXWWP263','TXT_KEY_BUILDING_AXWWP263_PEDIA','TXT_KEY_BUILDING_AXWWP263_HELP','TXT_KEY_BUILDING_AXWWP263_QUOTE','BUILDINGCLASS_AXWWP263',1,-1,100,'AXWWP1_ATLAS',63,'axwwp263.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP263','TXT_KEY_BUILDING_AXWWP263','BUILDING_AXWWP263',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP263'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP263');

UPDATE Buildings SET
	Cost = 250,
	SpecialistCount = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_IRON_WORKING',
	MaxStartEra = 'ERA_MEDIEVAL'
WHERE Type = 'BUILDING_AXWWP263';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP263','YIELD_PRODUCTION',6);

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP263','RESOURCE_IRON','YIELD_SCIENCE',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP263','Temple of Hephaestus'),
('TXT_KEY_BUILDING_AXWWP263_PEDIA','The Temple of Hephaestus is a well-preserved Greek temple; it remains standing largely as built.[NEWLINE][NEWLINE]It is a Doric peripteral temple, and is located at the north-west side of the Agora of Athens, on top of the Agoraios Kolonos hill.[NEWLINE][NEWLINE]Hephaestus was the patron god of metal working, craftsmanship, and fire.'),
('TXT_KEY_BUILDING_AXWWP263_QUOTE','[NEWLINE]"If the only tool you have is a hammer, you tend to see every problem as a nail."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP263_HELP','+2 [ICON_RESEARCH] Science from [ICON_RES_IRON] Iron.');
