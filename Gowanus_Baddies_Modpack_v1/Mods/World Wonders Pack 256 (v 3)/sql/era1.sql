-- AXWWP100

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP100','TXT_KEY_BUILDING_AXWWP100','TXT_KEY_BUILDING_AXWWP100_PEDIA','TXT_KEY_BUILDING_AXWWP100_HELP','TXT_KEY_BUILDING_AXWWP100_QUOTE','BUILDINGCLASS_AXWWP100',1,-1,100,'AXWWP1_ATLAS',0,'axwwp100.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP100','TXT_KEY_BUILDING_AXWWP100','BUILDING_AXWWP100',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP100'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP100');

UPDATE Buildings SET
	Cost = 185,
	NearbyTerrainRequired = 'TERRAIN_PLAINS',
	PrereqTech = 'TECH_AGRICULTURE',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP100';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP100','YIELD_CULTURE',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP100','Sterkfontein'),
('TXT_KEY_BUILDING_AXWWP100_PEDIA','Sterkfontein (Afrikaans for Strong Spring) is a set of limestone caves of special interest to paleo-anthropologists located in Gauteng province, about 40 km (23 miles) northwest of Johannesburg, South Africa in the Muldersdrift area close to the town of Krugersdorp.[NEWLINE][NEWLINE]Numerous early hominin remains have been found at the site over the last few decades. These have been attributed to Australopithecus, early Homo and Paranthropus.'),
('TXT_KEY_BUILDING_AXWWP100_QUOTE','[NEWLINE]"Don''t curse the darkness, light a candle."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP100_HELP','[COLOR_LIGHT_GREY]Requires plains.[ENDCOLOR]');




-- AXWWP101

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP101','TXT_KEY_BUILDING_AXWWP101','TXT_KEY_BUILDING_AXWWP101_PEDIA','TXT_KEY_BUILDING_AXWWP101_HELP','TXT_KEY_BUILDING_AXWWP101_QUOTE','BUILDINGCLASS_AXWWP101',1,-1,100,'AXWWP1_ATLAS',1,'axwwp101.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP101','TXT_KEY_BUILDING_AXWWP101','BUILDING_AXWWP101',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP101'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP101');

UPDATE Buildings SET
	Cost = 185,
	NearbyTerrainRequired = 'TERRAIN_GRASS',
	PrereqTech = 'TECH_AGRICULTURE',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP101';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP101','YIELD_CULTURE',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP101','Cave of El Castillo'),
('TXT_KEY_BUILDING_AXWWP101_PEDIA','Cave of El Castillo is an archaeological site within the complex of the Caves of Monte Castillo, in Puente Viesgo, Cantabria, Spain.[NEWLINE][NEWLINE]It contains the oldest known cave art in Europe. Some researchers argue that it might even be the oldest known example of artwork in the world and possibly a product of Homo neanderthalensis.'),
('TXT_KEY_BUILDING_AXWWP101_QUOTE','[NEWLINE]"Life is growth. If we stop growing, we are as good as dead."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP101_HELP','[COLOR_LIGHT_GREY]Requires grasslands.[ENDCOLOR]');




-- AXWWP102

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP102','TXT_KEY_BUILDING_AXWWP102','TXT_KEY_BUILDING_AXWWP102_PEDIA','TXT_KEY_BUILDING_AXWWP102_HELP','TXT_KEY_BUILDING_AXWWP102_QUOTE','BUILDINGCLASS_AXWWP102',1,-1,100,'AXWWP1_ATLAS',2,'axwwp102.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP102','TXT_KEY_BUILDING_AXWWP102','BUILDING_AXWWP102',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP102'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP102');

UPDATE Buildings SET
	Cost = 185,
	NearbyTerrainRequired = 'TERRAIN_DESERT',
	PrereqTech = 'TECH_AGRICULTURE',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP102';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP102','YIELD_CULTURE',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP102','Tassili n''Ajjer'),
('TXT_KEY_BUILDING_AXWWP102_PEDIA','Tassili n''Ajjer ("Plateau of the Rivers") is a national park in the Sahara desert, located on a vast plateau in south-east Algeria.[NEWLINE][NEWLINE]Having one of the most important groupings of prehistoric cave art in the world, and covering an area of over 72,000 km2 (28,000 sq mi), Tassili n''Ajjer was induced into UNESCO''s World Heritage Site list in 1982.'),
('TXT_KEY_BUILDING_AXWWP102_QUOTE','[NEWLINE]"A hundred men may make an encampment, but it takes a woman to make a home."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP102_HELP','[COLOR_LIGHT_GREY]Requires desert.[ENDCOLOR]');




-- AXWWP103

INSERT INTO Buildings (Type, Description, Civilopedia, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP103','TXT_KEY_BUILDING_AXWWP103','TXT_KEY_BUILDING_AXWWP103_PEDIA','TXT_KEY_BUILDING_AXWWP103_QUOTE','BUILDINGCLASS_AXWWP103',1,-1,100,'AXWWP1_ATLAS',3,'axwwp103.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP103','TXT_KEY_BUILDING_AXWWP103','BUILDING_AXWWP103',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP103'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP103');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP103','YIELD_FAITH',3);

UPDATE Buildings SET
	Cost = 185,
	PrereqTech = 'TECH_POTTERY',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP103';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP103','Sanchi'),
('TXT_KEY_BUILDING_AXWWP103_PEDIA','Sanchi Stupa, also written Sanci, is a Buddhist complex, famous for its Great Stupa, on a hilltop at Sanchi Town in Raisen District of the State of Madhya Pradesh, India.[NEWLINE][NEWLINE]The Great Stupa at Sanchi is one of the oldest stone structures in India and was originally commissioned by the emperor Ashoka in the 3rd century BCE.'),
('TXT_KEY_BUILDING_AXWWP103_QUOTE','[NEWLINE]"Life is short, the art long."[NEWLINE]');




-- AXWWP104

INSERT INTO Buildings (Type, Description, Civilopedia, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP104','TXT_KEY_BUILDING_AXWWP104','TXT_KEY_BUILDING_AXWWP104_PEDIA','TXT_KEY_BUILDING_AXWWP104_QUOTE','BUILDINGCLASS_AXWWP104',1,-1,100,'AXWWP1_ATLAS',4,'axwwp104.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP104','TXT_KEY_BUILDING_AXWWP104','BUILDING_AXWWP104',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP104'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP104');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP104','YIELD_GOLD',3);

UPDATE Buildings SET
	Cost = 185,
	PrereqTech = 'TECH_POTTERY',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP104';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP104','Treasury of Atreus'),
('TXT_KEY_BUILDING_AXWWP104_PEDIA','The Treasury of Atreus or Tomb of Agamemnon is a large "tholos" tomb on the Panagitsa Hill at Mycenae, Greece, constructed during the Bronze Age around 1250 BC.[NEWLINE][NEWLINE]The lintel stone above the doorway weighs 120 tons, with approximate dimensions 8.3 x 5.2 x 1.2m, the largest in the world.'),
('TXT_KEY_BUILDING_AXWWP104_QUOTE','[NEWLINE]"An inch of time is worth an inch of gold, but it is hard to buy one inch of time with one inch of gold."[NEWLINE]');




-- AXWWP105

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP105','TXT_KEY_BUILDING_AXWWP105','TXT_KEY_BUILDING_AXWWP105_PEDIA','TXT_KEY_BUILDING_AXWWP105_HELP','TXT_KEY_BUILDING_AXWWP105_QUOTE','BUILDINGCLASS_AXWWP105',1,-1,100,'AXWWP1_ATLAS',5,'axwwp105.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP105','TXT_KEY_BUILDING_AXWWP105','BUILDING_AXWWP105',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP105'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP105');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP105','YIELD_CULTURE',2);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP105','RESOURCE_COW','YIELD_FAITH',2),
('BUILDING_AXWWP105','RESOURCE_SHEEP','YIELD_FAITH',2);

UPDATE Buildings SET
	Cost = 185,
	PrereqTech = 'TECH_ANIMAL_HUSBANDRY',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP105';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP105','Tarxien Temples'),
('TXT_KEY_BUILDING_AXWWP105_PEDIA','The Tarxien Temples are an archaeological complex in Tarxien, Malta. They date to approximately 3150 BC.[NEWLINE][NEWLINE]Of particular interest at the temple site is the rich and intricate stonework, which includes depictions of domestic animals carved in relief, altars, and screens decorated with spiral designs and other patterns.[NEWLINE][NEWLINE]Excavation of the site reveals that it was used extensively for rituals, which probably involved animal sacrifice.'),
('TXT_KEY_BUILDING_AXWWP105_QUOTE','[NEWLINE]"Fresh meat!"[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP105_HELP','+2 [ICON_PEACE] Faith from [ICON_RES_COW] Cows and [ICON_RES_SHEEP] Sheep.');




-- AXWWP106

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP106','TXT_KEY_BUILDING_AXWWP106','TXT_KEY_BUILDING_AXWWP106_PEDIA','TXT_KEY_BUILDING_AXWWP106_HELP','TXT_KEY_BUILDING_AXWWP106_QUOTE','BUILDINGCLASS_AXWWP106',1,-1,100,'AXWWP1_ATLAS',6,'axwwp106.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP106','TXT_KEY_BUILDING_AXWWP106','BUILDING_AXWWP106',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP106'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP106');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP106','YIELD_CULTURE',2);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP106','RESOURCE_HORSE','YIELD_PRODUCTION',2);

UPDATE Buildings SET
	Cost = 185,
	PrereqTech = 'TECH_ANIMAL_HUSBANDRY',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP106';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP106','Wayland''s Smithy'),
('TXT_KEY_BUILDING_AXWWP106_PEDIA','Wayland''s Smithy is a Neolithic long barrow and chamber tomb site located near the Uffington White Horse and Uffington Castle, at Ashbury in the English county of Oxfordshire.'),
('TXT_KEY_BUILDING_AXWWP106_QUOTE','[NEWLINE]"At this place lived formerly an invisible Smith, and if a traveller''s Horse had lost a Shoe upon the road, he might come again and find the money gone, but the Horse new shod."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP106_HELP','+2 [ICON_PRODUCTION] Production from [ICON_RES_HORSE] Horses.');




-- AXWWP107

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP107','TXT_KEY_BUILDING_AXWWP107','TXT_KEY_BUILDING_AXWWP107_PEDIA','TXT_KEY_BUILDING_AXWWP107_HELP','TXT_KEY_BUILDING_AXWWP107_QUOTE','BUILDINGCLASS_AXWWP107',1,-1,100,'AXWWP1_ATLAS',7,'axwwp107.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP107','TXT_KEY_BUILDING_AXWWP107','BUILDING_AXWWP107',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP107'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP107');

INSERT INTO Building_GlobalYieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP107','YIELD_FOOD',20);

UPDATE Buildings SET
	Cost = 185,
	PrereqTech = 'TECH_ARCHERY',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP107';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP107','Temple of Hera'),
('TXT_KEY_BUILDING_AXWWP107_PEDIA','The Temple of Hera is a Greek temple in Paestum, Campania, Italy.[NEWLINE][NEWLINE]Hera is the goddess of women, marriage, family, and childbirth in Ancient Greek religion and myth, one of the Twelve Olympians.[NEWLINE][NEWLINE]The temple was also used to worship Zeus and another deity, whose identity is unknown.'),
('TXT_KEY_BUILDING_AXWWP107_QUOTE','[NEWLINE]"Home is people. Not a place."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP107_HELP','+20% [ICON_FOOD] Growth in all cieties.');




-- AXWWP108

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP108','TXT_KEY_BUILDING_AXWWP108','TXT_KEY_BUILDING_AXWWP108_PEDIA','TXT_KEY_BUILDING_AXWWP108_HELP','TXT_KEY_BUILDING_AXWWP108_QUOTE','BUILDINGCLASS_AXWWP108',1,-1,100,'AXWWP1_ATLAS',8,'axwwp108.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP108','TXT_KEY_BUILDING_AXWWP108','BUILDING_AXWWP108',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP108'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP108');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP108','YIELD_CULTURE',2);
INSERT INTO Building_UnitCombatProductionModifiers (BuildingType, UnitCombatType, Modifier) VALUES
('BUILDING_AXWWP108','UNITCOMBAT_MELEE',15);

UPDATE Buildings SET
	Cost = 185,
	FreePromotion = 'PROMOTION_COVER_1',
	PrereqTech = 'TECH_ARCHERY',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP108';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP108','Palace of Knossos'),
('TXT_KEY_BUILDING_AXWWP108_PEDIA','Knossos is the largest Bronze Age archaeological site on Crete and has been called Europe''s oldest city.[NEWLINE][NEWLINE]The palace of Knossos eventually became the ceremonial and political centre of the Minoan civilization and culture.'),
('TXT_KEY_BUILDING_AXWWP108_QUOTE','[NEWLINE]"Like that of leaves is a generation of men."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP108_HELP','Trained melee units receive free Cover promotion. +15% [ICON_PRODUCTION] Production for melee units.');




-- AXWWP109

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP109','TXT_KEY_BUILDING_AXWWP109','TXT_KEY_BUILDING_AXWWP109_PEDIA','TXT_KEY_BUILDING_AXWWP109_HELP','TXT_KEY_BUILDING_AXWWP109_QUOTE','BUILDINGCLASS_AXWWP109',1,-1,100,'AXWWP1_ATLAS',9,'axwwp109.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP109','TXT_KEY_BUILDING_AXWWP109','BUILDING_AXWWP109',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP109'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP109');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP109','YIELD_CULTURE',2);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP109','RESOURCE_STONE','YIELD_CULTURE',2);

UPDATE Buildings SET
	Cost = 185,
	PrereqTech = 'TECH_MINING',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP109';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP109','Chongoni Rock'),
('TXT_KEY_BUILDING_AXWWP109_PEDIA','Chongoni Rock Art Area is located in the Central Region of Malawi consisting of 127 sites in the forested hills of the Malawi plateau with depictions of rock art and paintings of the farmer community of the Late Stone Age and the Iron Age period.[NEWLINE][NEWLINE]This ancient record of the cultural history is in vogue even now.'),
('TXT_KEY_BUILDING_AXWWP109_QUOTE','[NEWLINE]"Each generation imagines itself to be more intelligent than the one that went before it, and wiser than the one that comes after it."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP109_HELP','+2 [ICON_CULTURE] Culture from [ICON_RES_STONE] Stone.');




-- AXWWP110

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP110','TXT_KEY_BUILDING_AXWWP110','TXT_KEY_BUILDING_AXWWP110_PEDIA','TXT_KEY_BUILDING_AXWWP110_HELP','TXT_KEY_BUILDING_AXWWP110_QUOTE','BUILDINGCLASS_AXWWP110',1,-1,100,'AXWWP1_ATLAS',10,'axwwp110.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP110','TXT_KEY_BUILDING_AXWWP110','BUILDING_AXWWP110',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP110'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP110');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP110','YIELD_PRODUCTION',2);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP110','RESOURCE_IRON','YIELD_CULTURE',2);

UPDATE Buildings SET
	Cost = 185,
	PrereqTech = 'TECH_MINING',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP110';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP110','Ngwenya Mine'),
('TXT_KEY_BUILDING_AXWWP110_PEDIA','The Ngwenya Mine is located on Bomvu Ridge, northwest of Mbabane and near the north-western border of Swaziland.[NEWLINE][NEWLINE]The site was known to Early Man for its deposits of red and specular haematite, used in cosmetics and rituals.[NEWLINE][NEWLINE]The radiocarbon dating yielded the age of the oldest mining activities as 41,000 to 43,000 years. This would make Ngwenya the oldest known mine.'),
('TXT_KEY_BUILDING_AXWWP110_QUOTE','[NEWLINE]"There are little gems all around us that can hold glimmers of inspiration."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP110_HELP','+2 [ICON_CULTURE] Culture from [ICON_RES_IRON] Iron.');




-- AXWWP111

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP111','TXT_KEY_BUILDING_AXWWP111','TXT_KEY_BUILDING_AXWWP111_PEDIA','TXT_KEY_BUILDING_AXWWP111_HELP','TXT_KEY_BUILDING_AXWWP111_QUOTE','BUILDINGCLASS_AXWWP111',1,-1,100,'AXWWP1_ATLAS',11,'axwwp111.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP111','TXT_KEY_BUILDING_AXWWP111','BUILDING_AXWWP111',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP111'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP111');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP111','YIELD_FOOD',3);

UPDATE Buildings SET
	Cost = 185,
	Water = 1, MinAreaSize = 10,
	PrereqTech = 'TECH_SAILING',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP111';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP111','RESOURCE_FISH','YIELD_PRODUCTION',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP111','Broch of Mousa'),
('TXT_KEY_BUILDING_AXWWP111_PEDIA','Broch of Mousa is the finest preserved example of an Iron Age broch or round tower. It is in the small island of Mousa in Shetland, Scotland. It is the tallest broch still standing and amongst the best-preserved prehistoric buildings in Europe.[NEWLINE][NEWLINE]Mousa Broch continued to be used over the centuries and is mentioned in two Norse Sagas. Egil''s Saga tells of a couple eloping from Norway to Iceland who were shipwrecked and used the broch as a temporary refuge.'),
('TXT_KEY_BUILDING_AXWWP111_QUOTE','[NEWLINE]"Make the best use of what''s in your power and take the rest as it happens."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP111_HELP','+1 [ICON_PRODUCTION] Production from [ICON_RES_FISH] Fish. [NEWLINE][COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP112

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP112','TXT_KEY_BUILDING_AXWWP112','TXT_KEY_BUILDING_AXWWP112_PEDIA','TXT_KEY_BUILDING_AXWWP112_HELP','TXT_KEY_BUILDING_AXWWP112_QUOTE','BUILDINGCLASS_AXWWP112',1,-1,100,'AXWWP1_ATLAS',12,'axwwp112.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP112','TXT_KEY_BUILDING_AXWWP112','BUILDING_AXWWP112',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP112'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP112');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP112','YIELD_CULTURE',1);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP112','RESOURCE_STONE','YIELD_PRODUCTION',1),
('BUILDING_AXWWP112','RESOURCE_FISH','YIELD_PRODUCTION',1);

UPDATE Buildings SET
	Cost = 185,
	Defense = 250,
	Water = 1, MinAreaSize = 10,
	PrereqTech = 'TECH_SAILING',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP112';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP112','Dun Aonghasa'),
('TXT_KEY_BUILDING_AXWWP112_PEDIA','Dun Aonghasa is the best-known of several prehistoric hill forts on the Aran Islands of County Galway, Republic of Ireland. It lies on Inishmore, at the edge of a 100 metre high cliff.'),
('TXT_KEY_BUILDING_AXWWP112_QUOTE','[NEWLINE]"The most magnificent barbaric monument in Europe."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP112_HELP','+1 [ICON_PRODUCTION] Production [ICON_RES_STONE] from Stone and [ICON_RES_FISH] Fish. [NEWLINE][COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP113

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP113','TXT_KEY_BUILDING_AXWWP113','TXT_KEY_BUILDING_AXWWP113_PEDIA','TXT_KEY_BUILDING_AXWWP113_HELP','TXT_KEY_BUILDING_AXWWP113_QUOTE','BUILDINGCLASS_AXWWP113',1,-1,100,'AXWWP1_ATLAS',13,'axwwp113.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP113','TXT_KEY_BUILDING_AXWWP113','BUILDING_AXWWP113',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP113'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP113');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP113','YIELD_PRODUCTION',2);
INSERT INTO Building_SeaResourceYieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP113','YIELD_CULTURE',1);

UPDATE Buildings SET
	Cost = 185,
	Water = 1, MinAreaSize = 10,
	PrereqTech = 'TECH_SAILING',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP113';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP113','Ale''s Stones'),
('TXT_KEY_BUILDING_AXWWP113_PEDIA','Ale''s Stones is a megalithic monument in Scania in southern Sweden.[NEWLINE][NEWLINE]It is a stone ship, oval in outline, with the stones at each end markedly larger than the rest. It is 67 m (220 ft) long formed by 59 large boulders, weighing up to 1.8 tonnes each.'),
('TXT_KEY_BUILDING_AXWWP113_QUOTE','[NEWLINE]"All these sea monster jokes are just Kraken me up."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP113_HELP','+1 [ICON_CULTURE] Culture from sea resources. [NEWLINE][COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP114

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP114','TXT_KEY_BUILDING_AXWWP114','TXT_KEY_BUILDING_AXWWP114_PEDIA','TXT_KEY_BUILDING_AXWWP114_HELP','TXT_KEY_BUILDING_AXWWP114_QUOTE','BUILDINGCLASS_AXWWP114',1,-1,100,'AXWWP1_ATLAS',14,'axwwp114.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP114','TXT_KEY_BUILDING_AXWWP114','BUILDING_AXWWP114',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP114'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP114');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP114','YIELD_SCIENCE',3);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP114','RESOURCE_STONE','YIELD_FAITH',1);

UPDATE Buildings SET
	Cost = 185,
	PrereqTech = 'TECH_CALENDAR',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP114';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP114','Thirteen Towers'),
('TXT_KEY_BUILDING_AXWWP114_PEDIA','Chanquillo  is an ancient monumental complex in the Peruvian coastal desert, found in the Casma-Sechin basin in the Ancash Department of Peru. The ruins include the hilltop Chankillo fort, the nearby Thirteen Towers solar observatory, and residential and gathering areas.[NEWLINE][NEWLINE]The regularly-spaced thirteen towers of Chankillo were constructed atop the ridge of a low hill running near north to south, forming a "toothed" horizon with narrow gaps at regular intervals. [NEWLINE][NEWLINE]To the east and west investigators designated two possible observation points. From these vantages, the 300m long spread of the towers along the horizon corresponds very closely to the rising and setting positions of the sun over the year.'),
('TXT_KEY_BUILDING_AXWWP114_QUOTE','[NEWLINE]"Which month has 28 days?[NEWLINE]All of them."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP114_HELP','+1 [ICON_PEACE] Faith from [ICON_RES_STONE] Stone.');



-- AXWWP115

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP115','TXT_KEY_BUILDING_AXWWP115','TXT_KEY_BUILDING_AXWWP115_PEDIA','TXT_KEY_BUILDING_AXWWP115_HELP','TXT_KEY_BUILDING_AXWWP115_QUOTE','BUILDINGCLASS_AXWWP115',1,-1,100,'AXWWP1_ATLAS',15,'axwwp115.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP115','TXT_KEY_BUILDING_AXWWP115','BUILDING_AXWWP115',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP115'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP115');

INSERT INTO Building_TerrainYieldChanges (BuildingType, TerrainType, YieldType, Yield) VALUES
('BUILDING_AXWWP115','TERRAIN_GRASS','YIELD_CULTURE',1);

UPDATE Buildings SET
	Cost = 220,
	NearbyTerrainRequired = 'TERRAIN_GRASS',
	PrereqTech = 'TECH_CALENDAR',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP115';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP115','Avebury'),
('TXT_KEY_BUILDING_AXWWP115_PEDIA','Avebury is a Neolithic henge monument containing three stone circles, around the village of Avebury in Wiltshire, in southwest England.[NEWLINE][NEWLINE]One of the best known prehistoric sites in Britain, it contains the largest megalithic stone circle in the world.'),
('TXT_KEY_BUILDING_AXWWP115_QUOTE','[NEWLINE]"A calendar''s days are numbered."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP115_HELP','+1 [ICON_CULTURE] Culture from grassland tiles. [NEWLINE][COLOR_LIGHT_GREY]Requires grasslands.[ENDCOLOR]');




-- AXWWP116

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP116','TXT_KEY_BUILDING_AXWWP116','TXT_KEY_BUILDING_AXWWP116_PEDIA','TXT_KEY_BUILDING_AXWWP116_HELP','TXT_KEY_BUILDING_AXWWP116_QUOTE','BUILDINGCLASS_AXWWP116',1,-1,100,'AXWWP1_ATLAS',16,'axwwp116.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP116','TXT_KEY_BUILDING_AXWWP116','BUILDING_AXWWP116',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP116'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP116');

INSERT INTO Building_TerrainYieldChanges (BuildingType, TerrainType, YieldType, Yield) VALUES
('BUILDING_AXWWP116','TERRAIN_GRASS','YIELD_FAITH',1);

UPDATE Buildings SET
	Cost = 220,
	NearbyTerrainRequired = 'TERRAIN_GRASS',
	PrereqTech = 'TECH_CALENDAR',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP116';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP116','Carnac Stones'),
('TXT_KEY_BUILDING_AXWWP116_PEDIA','The Carnac stones are an exceptionally dense collection of megalithic sites around the village of Carnac in Brittany, consisting of alignments, dolmens, tumuli and single menhirs.[NEWLINE][NEWLINE]More than 3,000 prehistoric standing stones were hewn from local rock and erected by the pre-Celtic people of Brittany, and form the largest such collection in the world.'),
('TXT_KEY_BUILDING_AXWWP116_QUOTE','[NEWLINE]"The construction of my rock building ran a stone short."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP116_HELP','+1 [ICON_PEACE] Faith from grassland tiles. [NEWLINE][COLOR_LIGHT_GREY]Requires grasslands.[ENDCOLOR]');




-- AXWWP117

INSERT INTO Buildings (Type, Description, Civilopedia, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP117','TXT_KEY_BUILDING_AXWWP117','TXT_KEY_BUILDING_AXWWP117_PEDIA','TXT_KEY_BUILDING_AXWWP117_QUOTE','BUILDINGCLASS_AXWWP117',1,-1,100,'AXWWP1_ATLAS',17,'axwwp117.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP117','TXT_KEY_BUILDING_AXWWP117','BUILDING_AXWWP117',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP117'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP117');

UPDATE Buildings SET
	Cost = 185,
	Happiness = 4,
	SpecialistType = 'SPECIALIST_WRITER',
	SpecialistCount = 1,
	PrereqTech = 'TECH_WRITING',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP117';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP117','Behistun Inscription'),
('TXT_KEY_BUILDING_AXWWP117_PEDIA','The Behistun Inscription is a multilingual inscription and large rock relief on a cliff at Mount Behistun in the Kermanshah Province of Iran, near the city of Kermanshah in western Iran. It was crucial to the decipherment of cuneiform script.'),
('TXT_KEY_BUILDING_AXWWP117_QUOTE','[NEWLINE]"First you learn to read. Then you read to learn."[NEWLINE]');




-- AXWWP118

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP118','TXT_KEY_BUILDING_AXWWP118','TXT_KEY_BUILDING_AXWWP118_PEDIA','TXT_KEY_BUILDING_AXWWP118_HELP','TXT_KEY_BUILDING_AXWWP118_QUOTE','BUILDINGCLASS_AXWWP118',1,-1,100,'AXWWP1_ATLAS',18,'axwwp118.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP118','TXT_KEY_BUILDING_AXWWP118','BUILDING_AXWWP118',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP118'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP118');

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP118','RESOURCE_STONE','YIELD_CULTURE',1);

UPDATE Buildings SET
	Cost = 185,
	Happiness = 3,
	PrereqTech = 'TECH_WRITING',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP118';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP118','Einang Stone'),
('TXT_KEY_BUILDING_AXWWP118_PEDIA','The Einang stone is a runestone located east of the Einang Sound near Fagernes, in Oppland, Norway, notable for the age of its runic inscription.[NEWLINE][NEWLINE]The Einang stone bears an Elder Futhark inscription in Proto-Norse that has been dated to the 4th century. It is the oldest runestone still standing at its original location, and it may be the earliest inscription to mention the word runo ''rune''.'),
('TXT_KEY_BUILDING_AXWWP118_QUOTE','[NEWLINE]"(Ek go)dagastiz runo faihido"[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP118_HELP','+1 [ICON_CULTURE] Culture from [ICON_RES_STONE] Stone.');




-- AXWWP119

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP119','TXT_KEY_BUILDING_AXWWP119','TXT_KEY_BUILDING_AXWWP119_PEDIA','TXT_KEY_BUILDING_AXWWP119_HELP','TXT_KEY_BUILDING_AXWWP119_QUOTE','BUILDINGCLASS_AXWWP119',1,-1,100,'AXWWP1_ATLAS',19,'axwwp119.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP119','TXT_KEY_BUILDING_AXWWP119','BUILDING_AXWWP119',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP119'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP119');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP119','YIELD_CULTURE',2);

UPDATE Buildings SET
	Cost = 185,
	Hill = 1,
	Happiness = 2,
	SpecialistType = 'SPECIALIST_ARTIST',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_WRITING',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP119';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP119','Udayagiri Caves'),
('TXT_KEY_BUILDING_AXWWP119_PEDIA','The Udayagiri Caves are twenty rock-cut caves near Vidisha, Madhya Pradesh from the early years of the 5th century CE.[NEWLINE][NEWLINE]They contain some of the oldest surviving Hindu temples and iconography in India.'),
('TXT_KEY_BUILDING_AXWWP119_QUOTE','[NEWLINE]"Wait for the wisest of all counselors, time."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP119_HELP','[COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');




-- AXWWP120

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP120','TXT_KEY_BUILDING_AXWWP120','TXT_KEY_BUILDING_AXWWP120_PEDIA','TXT_KEY_BUILDING_AXWWP120_HELP','TXT_KEY_BUILDING_AXWWP120_QUOTE','BUILDINGCLASS_AXWWP120',1,-1,100,'AXWWP1_ATLAS',20,'axwwp120.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP120','TXT_KEY_BUILDING_AXWWP120','BUILDING_AXWWP120',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP120'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP120');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP120','YIELD_FOOD',3);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP120','RESOURCE_COW','YIELD_CULTURE',1),
('BUILDING_AXWWP120','RESOURCE_SHEEP','YIELD_CULTURE',1);

UPDATE Buildings SET
	Cost = 185,
	NearbyTerrainRequired = 'TERRAIN_PLAINS',
	PrereqTech = 'TECH_TRAPPING',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP120';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP120','Nuraghe Santu Antine'),
('TXT_KEY_BUILDING_AXWWP120_PEDIA','Santu Antine is one of the largest nuraghe (ancient megalithic edifice) in Sardinia. It is located in the centre of the Cabu Abbas plain.'),
('TXT_KEY_BUILDING_AXWWP120_QUOTE','[NEWLINE]"We are what we repeatedly do. Excellence then, is not an act, but a habit."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP120_HELP','+1 [ICON_CULTURE] Culture from [ICON_RES_COW] Cow and [ICON_RES_SHEEP] Sheep. [NEWLINE][COLOR_LIGHT_GREY]Requires plains.[ENDCOLOR]');




-- AXWWP121

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP121','TXT_KEY_BUILDING_AXWWP121','TXT_KEY_BUILDING_AXWWP121_PEDIA','TXT_KEY_BUILDING_AXWWP121_HELP','TXT_KEY_BUILDING_AXWWP121_QUOTE','BUILDINGCLASS_AXWWP121',1,-1,100,'AXWWP1_ATLAS',21,'axwwp121.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP121','TXT_KEY_BUILDING_AXWWP121','BUILDING_AXWWP121',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP121'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP121');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP121','YIELD_PRODUCTION',3);

UPDATE Buildings SET
	Cost = 185,
	Water = 1, MinAreaSize = 10,
	PrereqTech = 'TECH_TRAPPING',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP121';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP121','RESOURCE_FISH','YIELD_FOOD',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP121','Knap of Howar'),
('TXT_KEY_BUILDING_AXWWP121_PEDIA','The Knap of Howar on the island of Papa Westray in Orkney, Scotland is a Neolithic farmstead which may be the oldest preserved stone house in northern Europe.'),
('TXT_KEY_BUILDING_AXWWP121_QUOTE','[NEWLINE]"Fish and visitors stink after three days."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP121_HELP','+1 [ICON_FOOD] Food from [ICON_RES_FISH] Fish. [NEWLINE][COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP122

INSERT INTO Buildings (Type, Description, Civilopedia, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP122','TXT_KEY_BUILDING_AXWWP122','TXT_KEY_BUILDING_AXWWP122_PEDIA','TXT_KEY_BUILDING_AXWWP122_QUOTE','BUILDINGCLASS_AXWWP122',1,-1,100,'AXWWP1_ATLAS',22,'axwwp122.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP122','TXT_KEY_BUILDING_AXWWP122','BUILDING_AXWWP122',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP122'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP122');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP122','YIELD_FAITH',2),
('BUILDING_AXWWP122','YIELD_SCIENCE',2);

UPDATE Buildings SET
	Cost = 185,
	PrereqTech = 'TECH_TRAPPING',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP122';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP122','El Infiernito'),
('TXT_KEY_BUILDING_AXWWP122_PEDIA','El Infiernitois a pre-Columbian archaeoastronomical site located on the Altiplano Cundiboyacense in the outskirts of Villa de Leyva, Boyaca, Colombia.[NEWLINE][NEWLINE]The site was a center of religious ceremonies and spiritual purification rites, and also served as a rudimentary astronomical observatory.'),
('TXT_KEY_BUILDING_AXWWP122_QUOTE','[NEWLINE]"Count each day as a separate life."[NEWLINE]');




-- AXWWP123

INSERT INTO Buildings (Type, Description, Civilopedia, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP123','TXT_KEY_BUILDING_AXWWP123','TXT_KEY_BUILDING_AXWWP123_PEDIA','TXT_KEY_BUILDING_AXWWP123_QUOTE','BUILDINGCLASS_AXWWP123',1,-1,100,'AXWWP1_ATLAS',23,'axwwp123.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP123','TXT_KEY_BUILDING_AXWWP123','BUILDING_AXWWP123',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP123'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP123');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP123','YIELD_FAITH',4);

UPDATE Buildings SET
	Cost = 185,
	PrereqTech = 'TECH_THE_WHEEL',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP123';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP123','Monte d''Accoddi'),
('TXT_KEY_BUILDING_AXWWP123_PEDIA','Monte d''Accoddi is a Neolithic archaeological site in northern Sardinia, located in the territory of Sassari near Porto Torres.[NEWLINE][NEWLINE]The site consists of a massive raised stone platform thought to have been an altar. It was constructed by the Ozieri culture or earlier, with the oldest parts dated to around c. 4,000-3,650 BC.'),
('TXT_KEY_BUILDING_AXWWP123_QUOTE','[NEWLINE]"Sometimes you have to take things on faith, even if you don''t have any faith."[NEWLINE]');




-- AXWWP124

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP124','TXT_KEY_BUILDING_AXWWP124','TXT_KEY_BUILDING_AXWWP124_PEDIA','TXT_KEY_BUILDING_AXWWP124_HELP','TXT_KEY_BUILDING_AXWWP124_QUOTE','BUILDINGCLASS_AXWWP124',1,-1,100,'AXWWP1_ATLAS',24,'axwwp124.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP124','TXT_KEY_BUILDING_AXWWP124','BUILDING_AXWWP124',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP124'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP124');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP124','YIELD_GOLD',2);

UPDATE Buildings SET
	Cost = 185,
	Hill = 1,
	GlobalPlotCultureCostModifier = -15,
	GlobalPlotBuyCostModifier = -15,
	PrereqTech = 'TECH_THE_WHEEL',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP124';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP124','Van Fortress'),
('TXT_KEY_BUILDING_AXWWP124_PEDIA','The Fortress of Van is a massive stone fortification built by the ancient kingdom of Urartu during the 9th to 7th centuries BC, and is the largest example of its kind.[NEWLINE][NEWLINE]Such fortresses were used for regional control, rather than as a defense against foreign armies.'),
('TXT_KEY_BUILDING_AXWWP124_QUOTE','[NEWLINE]"The expert in battle seeks his victory from strategic advantage and does not demand it from his men."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP124_HELP','[ICON_CULTURE] Culture and [ICON_GOLD] gold cost of aquiring new tiles reduced by 15% in every city. [NEWLINE][COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');




-- AXWWP125

INSERT INTO Buildings (Type, Description, Civilopedia, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP125','TXT_KEY_BUILDING_AXWWP125','TXT_KEY_BUILDING_AXWWP125_PEDIA','TXT_KEY_BUILDING_AXWWP125_QUOTE','BUILDINGCLASS_AXWWP125',1,-1,100,'AXWWP1_ATLAS',25,'axwwp125.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP125','TXT_KEY_BUILDING_AXWWP125','BUILDING_AXWWP125',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP125'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP125');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP125','YIELD_CULTURE',2),
('BUILDING_AXWWP125','YIELD_GOLD',2);

UPDATE Buildings SET
	Cost = 185,
	Happiness = 2,
	PrereqTech = 'TECH_THE_WHEEL',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP125';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP125','Lion Gate'),
('TXT_KEY_BUILDING_AXWWP125_PEDIA','The Lion Gate was the main entrance of the Bronze Age citadel of Mycenae, southern Greece.[NEWLINE][NEWLINE]Mycenae was one of the major centres of Greek civilization, a military stronghold which dominated much of southern Greece and parts of southwest Anatolia.'),
('TXT_KEY_BUILDING_AXWWP125_QUOTE','[NEWLINE]"Still round the corner there may wait, a new road or a welcome gate."[NEWLINE]');




-- AXWWP126

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP126','TXT_KEY_BUILDING_AXWWP126','TXT_KEY_BUILDING_AXWWP126_PEDIA','TXT_KEY_BUILDING_AXWWP126_HELP','TXT_KEY_BUILDING_AXWWP126_QUOTE','BUILDINGCLASS_AXWWP126',1,-1,100,'AXWWP1_ATLAS',26,'axwwp126.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP126','TXT_KEY_BUILDING_AXWWP126','BUILDING_AXWWP126',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP126'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP126');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP126','YIELD_PRODUCTION',3);

UPDATE Buildings SET
	Cost = 185,
	WorkerSpeedModifier = 10,
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_MASONRY',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP126';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP126','Pyramid of Djoser'),
('TXT_KEY_BUILDING_AXWWP126_PEDIA','The Pyramid of Djoser, or step pyramid is an archeological remain in the Saqqara necropolis, Egypt, northwest of the city of Memphis.[NEWLINE][NEWLINE]This first Egyptian pyramid consisted of six mastabas (of decreasing size) built atop one another in what were clearly revisions and developments of the original plan.'),
('TXT_KEY_BUILDING_AXWWP126_QUOTE','[NEWLINE]"Failure is the mother of success."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP126_HELP','Worker construction speed increased by 10%.');




-- AXWWP127

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP127','TXT_KEY_BUILDING_AXWWP127','TXT_KEY_BUILDING_AXWWP127_PEDIA','TXT_KEY_BUILDING_AXWWP127_HELP','TXT_KEY_BUILDING_AXWWP127_QUOTE','BUILDINGCLASS_AXWWP127',1,-1,100,'AXWWP1_ATLAS',27,'axwwp127.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP127','TXT_KEY_BUILDING_AXWWP127','BUILDING_AXWWP127',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP127'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP127');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP127','YIELD_CULTURE',3);

UPDATE Buildings SET
	Cost = 185,
	WorkerSpeedModifier = 15,
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_MASONRY',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP127';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP127','Pyramid of Meidum'),
('TXT_KEY_BUILDING_AXWWP127_PEDIA','Meidum is an archaeological site in Lower Egypt. It contains a large pyramid and several mud-brick mastabas.[NEWLINE][NEWLINE]The pyramid at Meidum is thought to be just the second pyramid built after Djoser''s and may have been originally built for Huni, the last pharaoh of the Third Dynasty, and was continued by Sneferu.'),
('TXT_KEY_BUILDING_AXWWP127_QUOTE','[NEWLINE]"Be not afraid of growing slowly, be afraid only of standing still."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP127_HELP','Worker construction speed increased by 15%.');




-- AXWWP128

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP128','TXT_KEY_BUILDING_AXWWP128','TXT_KEY_BUILDING_AXWWP128_PEDIA','TXT_KEY_BUILDING_AXWWP128_HELP','TXT_KEY_BUILDING_AXWWP128_QUOTE','BUILDINGCLASS_AXWWP128',1,-1,100,'AXWWP1_ATLAS',28,'axwwp128.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP128','TXT_KEY_BUILDING_AXWWP128','BUILDING_AXWWP128',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP128'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP128');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP128','YIELD_FAITH',3);

UPDATE Buildings SET
	Cost = 185,
	WorkerSpeedModifier = 20,
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_MASONRY',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP128';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP128','Bent Pyramid'),
('TXT_KEY_BUILDING_AXWWP128_PEDIA','The Bent Pyramid is an ancient Egyptian pyramid located at the royal necropolis of Dahshur, approximately 40 kilometres south of Cairo, built under the Old Kingdom Pharaoh Sneferu.[NEWLINE][NEWLINE]A unique example of early pyramid development in Egypt, this was the second pyramid built by Sneferu.'),
('TXT_KEY_BUILDING_AXWWP128_QUOTE','[NEWLINE]"Our greatest glory is not in never falling but in rising every time we fall."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP128_HELP','Worker construction speed increased by 20%.');




-- AXWWP129

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP129','TXT_KEY_BUILDING_AXWWP129','TXT_KEY_BUILDING_AXWWP129_PEDIA','TXT_KEY_BUILDING_AXWWP129_HELP','TXT_KEY_BUILDING_AXWWP129_QUOTE','BUILDINGCLASS_AXWWP129',1,-1,100,'AXWWP1_ATLAS',29,'axwwp129.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP129','TXT_KEY_BUILDING_AXWWP129','BUILDING_AXWWP129',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP129'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP129');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP129','YIELD_GOLD',3);

UPDATE Buildings SET
	Cost = 220,
	Happiness = 3,
	GlobalPopulationChange = 1,
	NearbyTerrainRequired = 'TERRAIN_DESERT',
	PrereqTech = 'TECH_BRONZE_WORKING',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP129';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP129','Shahr-e Sukhteh'),
('TXT_KEY_BUILDING_AXWWP129_PEDIA','Shahr-e Sukhteh is an archaeological site of a sizable Bronze Age urban settlement, associated with the Jiroft culture. It is located in Sistan and Baluchistan Province, the southeastern part of Iran.[NEWLINE][NEWLINE]Covering an area of 151 hectares, Shahr-e Sukhteh was one of the world''s largest cities at the dawn of the urban era. The city had four stages of civilization and was burnt down three times before being abandoned in 1800 BCE.[NEWLINE][NEWLINE]The reasons for the unexpected rise and fall of the Burnt City are still wrapped in mystery.'),
('TXT_KEY_BUILDING_AXWWP129_QUOTE','[NEWLINE]"Everything is funny as long as it is happening to someone else."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP129_HELP','+1 [ICON_CITIZEN] Population in each city. [NEWLINE][COLOR_LIGHT_GREY]Requires desert.[ENDCOLOR]');




-- AXWWP130

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP130','TXT_KEY_BUILDING_AXWWP130','TXT_KEY_BUILDING_AXWWP130_PEDIA','TXT_KEY_BUILDING_AXWWP130_HELP','TXT_KEY_BUILDING_AXWWP130_QUOTE','BUILDINGCLASS_AXWWP130',1,-1,100,'AXWWP1_ATLAS',30,'axwwp130.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP130','TXT_KEY_BUILDING_AXWWP130','BUILDING_AXWWP130',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP130'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP130');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP130','YIELD_PRODUCTION',4),
('BUILDING_AXWWP130','YIELD_CULTURE',2);

INSERT INTO Building_FeatureYieldChanges (BuildingType, FeatureType, YieldType, Yield) VALUES 
('BUILDING_AXWWP130','FEATURE_FLOOD_PLAINS','YIELD_FOOD',1);

UPDATE Buildings SET
	Cost = 185,
	River = 1,
	NearbyTerrainRequired = 'TERRAIN_DESERT',
	PrereqTech = 'TECH_BRONZE_WORKING',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP130';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP130','Meroe'),
('TXT_KEY_BUILDING_AXWWP130_PEDIA','Meroe is an ancient city on the east bank of the Nile about 6 km north-east of the Kabushiya station near Shendi, Sudan, approximately 200 km north-east of Khartoum.[NEWLINE][NEWLINE]This city was the capital of the Kingdom of Kush for several centuries.'),
('TXT_KEY_BUILDING_AXWWP130_QUOTE','[NEWLINE]"Everything flows and nothing abides, everything gives way and nothing stays fixed."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP130_HELP','+1 [ICON_FOOD] Food from flood plain tiles. [NEWLINE][COLOR_LIGHT_GREY]Requires river and desert.[ENDCOLOR]');




-- AXWWP131

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP131','TXT_KEY_BUILDING_AXWWP131','TXT_KEY_BUILDING_AXWWP131_PEDIA','TXT_KEY_BUILDING_AXWWP131_HELP','TXT_KEY_BUILDING_AXWWP131_QUOTE','BUILDINGCLASS_AXWWP131',1,-1,100,'AXWWP1_ATLAS',31,'axwwp131.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP131','TXT_KEY_BUILDING_AXWWP131','BUILDING_AXWWP131',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP131'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP131');

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP131','YIELD_CULTURE',3);

UPDATE Buildings SET
	Cost = 185,
	Hill = 1,
	Happiness = 2,
	PrereqTech = 'TECH_BRONZE_WORKING',
	MaxStartEra = 'ERA_CLASSICAL'
WHERE Type = 'BUILDING_AXWWP131';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP131','Nemrut'),
('TXT_KEY_BUILDING_AXWWP131_PEDIA','Nemrut is a mountain in southeastern Turkey, notable for the summit where a number of large statues are erected around what is assumed to be a royal tomb from the 1st century BC.'),
('TXT_KEY_BUILDING_AXWWP131_QUOTE','[NEWLINE]"Day by day, what you choose, what you think and what you do is who you become."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP131_HELP','[COLOR_LIGHT_GREY]Requires city on hill.[ENDCOLOR]');
