-- AXWWP501

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP501','TXT_KEY_BUILDING_AXWWP501','TXT_KEY_BUILDING_AXWWP501_PEDIA','TXT_KEY_BUILDING_AXWWP501_HELP','TXT_KEY_BUILDING_AXWWP501_QUOTE','BUILDINGCLASS_AXWWP501',1,-1,100,'AXWWP3_ATLAS',1,'axwwp501.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP501','TXT_KEY_BUILDING_AXWWP501','BUILDING_AXWWP501',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP501'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP501');

UPDATE Buildings SET
	Happiness = 5,
	CultureRateModifier = 20,
	GreatWorkCount = 2,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT',
	FreeBuildingThisCity = 'BUILDINGCLASS_MUSEUM',
	Cost = 950,
	PrereqTech = 'TECH_ARCHAEOLOGY',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP501';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP501','YIELD_CULTURE',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP501','Capitoline Museums'),
('TXT_KEY_BUILDING_AXWWP501_PEDIA','The Capitoline Museums are a single museum containing a group of art and archaeological museums in Piazza del Campidoglio, on top of the Capitoline Hill in Rome, Italy.[NEWLINE][NEWLINE]Opened to the public in 1734 under Clement XII, the Capitoline Museums are considered the first museum in the world, understood as a place where art could be enjoyed by all and not only by the owners.'),
('TXT_KEY_BUILDING_AXWWP501_QUOTE','[NEWLINE]"Archaeology is the only discipline that seeks to study human behaviour and thought without having any direct contact with either."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP501_HELP','Free Museum in the city.');




-- AXWWP505

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP505','TXT_KEY_BUILDING_AXWWP505','TXT_KEY_BUILDING_AXWWP505_PEDIA','TXT_KEY_BUILDING_AXWWP505_HELP','TXT_KEY_BUILDING_AXWWP505_QUOTE','BUILDINGCLASS_AXWWP505',1,-1,100,'AXWWP3_ATLAS',5,'axwwp505.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP505','TXT_KEY_BUILDING_AXWWP505','BUILDING_AXWWP505',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP505'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP505');

UPDATE Buildings SET
	GoldenAge = 1,
	GlobalCultureRateModifier = 20,
	GreatWorkCount = 4,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT',
	FreeBuilding = 'BUILDINGCLASS_MUSEUM',
	Cost = 950,
	PrereqTech = 'TECH_ARCHAEOLOGY',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP505';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP505','YIELD_CULTURE',6);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP505','Metropolitan Museum of Art'),
('TXT_KEY_BUILDING_AXWWP505_PEDIA','The Metropolitan Museum of Art of New York, is the largest art museum in the United States.[NEWLINE][NEWLINE]The permanent collection consists of works of art from classical antiquity and ancient Egypt, paintings, and sculptures from nearly all the European masters, and an extensive collection of American and modern art. The museum maintains extensive holdings of African, Asian, Oceanian, Byzantine, and Islamic art, and is home to encyclopedic collections of musical instruments, costumes, and accessories, as well as antique weapons and armor from around the world. Several notable interiors, ranging from first-century Rome through modern American design, are installed in its galleries.'),
('TXT_KEY_BUILDING_AXWWP505_QUOTE','[NEWLINE]"Art is the signature of civilizations."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP505_HELP','+20% [ICON_CULTURE] Culture in every city. Starts [ICON_GOLDEN_AGE] Golden Age. Free Museum in every city.');




-- AXWWP512

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP512','TXT_KEY_BUILDING_AXWWP512','TXT_KEY_BUILDING_AXWWP512_PEDIA','TXT_KEY_BUILDING_AXWWP512_HELP','TXT_KEY_BUILDING_AXWWP512_QUOTE','BUILDINGCLASS_AXWWP512',1,-1,100,'AXWWP3_ATLAS',12,'axwwp512.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP512','TXT_KEY_BUILDING_AXWWP512','BUILDING_AXWWP512',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP512'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP512');

UPDATE Buildings SET
	CultureRateModifier = 20,
	GreatWorkCount = 3,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT',
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ARTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_MUSEUM',
	Cost = 950,
	PrereqTech = 'TECH_ARCHAEOLOGY',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP512';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP512','YIELD_CULTURE',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP512','Musee d''Orsay'),
('TXT_KEY_BUILDING_AXWWP512_PEDIA','The Musee d''Orsay is a museum in Paris, France, on the Left Bank of the Seine.[NEWLINE][NEWLINE]The museum holds mainly French art dating from 1848 to 1914, including paintings, sculptures, furniture, and photography. It houses the largest collection of impressionist and post-Impressionist masterpieces in the world, by painters including Monet, Manet, Degas, Renoir, Cezanne, Seurat, Sisley, Gauguin, and Van Gogh.[NEWLINE][NEWLINE]It is one of the largest art museums in Europe.'),
('TXT_KEY_BUILDING_AXWWP512_QUOTE','[NEWLINE]"Art is what you can get away with."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP512_HELP','Free Museum in the city.');




-- AXWWP500

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP500','TXT_KEY_BUILDING_AXWWP500','TXT_KEY_BUILDING_AXWWP500_PEDIA','TXT_KEY_BUILDING_AXWWP500_HELP','TXT_KEY_BUILDING_AXWWP500_QUOTE','BUILDINGCLASS_AXWWP500',1,-1,100,'AXWWP3_ATLAS',0,'axwwp500.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP500','TXT_KEY_BUILDING_AXWWP500','BUILDING_AXWWP500',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP500'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP500');

UPDATE Buildings SET
	GreatWorkCount = 2,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT',
	SpecialistCount = 2,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ARTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_MUSEUM',
	Cost = 950,
	PrereqTech = 'TECH_SCIENTIFIC_THEORY',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP500';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP500','YIELD_CULTURE',4),('BUILDING_AXWWP500','YIELD_SCIENCE',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP500','Ashmolean Museum'),
('TXT_KEY_BUILDING_AXWWP500_PEDIA','The Ashmolean Museum of Art and Archaeology on Beaumont Street, Oxford, England, is the world''s first university museum.[NEWLINE][NEWLINE]Its first building was erected in 1678–83 to house the cabinet of curiosities that Elias Ashmole gave to the University of Oxford in 1677.'),
('TXT_KEY_BUILDING_AXWWP500_QUOTE','[NEWLINE]"All archaeology research is groundbreaking."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP500_HELP','Free Museum in the city.');




-- AXWWP503

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP503','TXT_KEY_BUILDING_AXWWP503','TXT_KEY_BUILDING_AXWWP503_PEDIA','TXT_KEY_BUILDING_AXWWP503_HELP','TXT_KEY_BUILDING_AXWWP503_QUOTE','BUILDINGCLASS_AXWWP503',1,-1,100,'AXWWP3_ATLAS',3,'axwwp503.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP503','TXT_KEY_BUILDING_AXWWP503','BUILDING_AXWWP503',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP503'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP503');

UPDATE Buildings SET
	UnhappinessModifier = -10,
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 950,
	PrereqTech = 'TECH_SCIENTIFIC_THEORY',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP503';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP503','YIELD_FOOD',4),('BUILDING_AXWWP503','YIELD_PRODUCTION',6);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP503','Saltaire'),
('TXT_KEY_BUILDING_AXWWP503_PEDIA','Saltaire is a Victorian model village located in Shipley, part of the City of Bradford Metropolitan District, in West Yorkshire, England.[NEWLINE][NEWLINE]Saltaire was built in 1851 by Sir Titus Salt, a leading industrialist in the Yorkshire woollen industry.[NEWLINE][NEWLINE]With the combination of quality housing, employment, recreation, educational facilities and social services the model town represented a landmark example of enlightened 19th century urban planning.'),
('TXT_KEY_BUILDING_AXWWP503_QUOTE','[NEWLINE]"Somebody who knows how will always have a job, working for someone who knows why."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP503_HELP','[ICON_HAPPINESS_4] Unhappiness from citizens in non-occupied cities reduced by 10%.');




-- AXWWP504

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP504','TXT_KEY_BUILDING_AXWWP504','TXT_KEY_BUILDING_AXWWP504_PEDIA','TXT_KEY_BUILDING_AXWWP504_HELP','TXT_KEY_BUILDING_AXWWP504_QUOTE','BUILDINGCLASS_AXWWP504',1,-1,100,'AXWWP3_ATLAS',4,'axwwp504.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP504','TXT_KEY_BUILDING_AXWWP504','BUILDING_AXWWP504',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP504'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP504');

UPDATE Buildings SET
	GreatWorkCount = 2,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT',
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_MUSEUM',
	Cost = 950,
	PrereqTech = 'TECH_SCIENTIFIC_THEORY',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP504';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP504','YIELD_CULTURE',4),('BUILDING_AXWWP504','YIELD_SCIENCE',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP504','Natural History Museum'),
('TXT_KEY_BUILDING_AXWWP504_PEDIA','The Natural History Museum in London is a natural history museum that exhibits a vast range of specimens from various segments of natural history.[NEWLINE][NEWLINE]The museum is home to life and earth science specimens comprising some 80 million items within five main collections: botany, entomology, mineralogy, paleontology and zoology.[NEWLINE][NEWLINE]Given the age of the institution, many of the collections have great historical as well as scientific value, such as specimens collected by Charles Darwin.'),
('TXT_KEY_BUILDING_AXWWP504_QUOTE','[NEWLINE]"We don''t know who discovered water, but we''re certain it wasn''t a fish."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP504_HELP','Free Museum in the city.');




-- AXWWP506

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP506','TXT_KEY_BUILDING_AXWWP506','TXT_KEY_BUILDING_AXWWP506_PEDIA','TXT_KEY_BUILDING_AXWWP506_HELP','TXT_KEY_BUILDING_AXWWP506_QUOTE','BUILDINGCLASS_AXWWP506',1,-1,100,'AXWWP3_ATLAS',6,'axwwp506.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP506','TXT_KEY_BUILDING_AXWWP506','BUILDING_AXWWP506',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP506'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP506');

UPDATE Buildings SET
	Happiness = 3,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 950,
	PrereqTech = 'TECH_INDUSTRIALIZATION',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP506';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP506','YIELD_CULTURE',3);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP506','RESOURCE_IRON','YIELD_PRODUCTION',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP506','The Iron Bridge'),
('TXT_KEY_BUILDING_AXWWP506_PEDIA','The Iron Bridge is a bridge that crosses the River Severn in Shropshire, England. Opened in 1781, it was the first major bridge in the world to be made of cast iron, and was greatly celebrated after construction owing to its use of the new material.'),
('TXT_KEY_BUILDING_AXWWP506_QUOTE','[NEWLINE]"The problem is never how to get new, innovative thoughts into your mind but how to get the old ones out."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP506_HELP','+3 [ICON_PRODUCTION] Production from [ICON_RES_IRON] Iron.');




-- AXWWP507

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP507','TXT_KEY_BUILDING_AXWWP507','TXT_KEY_BUILDING_AXWWP507_PEDIA','TXT_KEY_BUILDING_AXWWP507_HELP','TXT_KEY_BUILDING_AXWWP507_QUOTE','BUILDINGCLASS_AXWWP507',1,-1,100,'AXWWP3_ATLAS',7,'axwwp507.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP507','TXT_KEY_BUILDING_AXWWP507','BUILDING_AXWWP507',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP507'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP507');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 950,
	PrereqTech = 'TECH_INDUSTRIALIZATION',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP507';

INSERT INTO Building_LocalResourceAnds (BuildingType, ResourceType) VALUES ('BUILDING_AXWWP507','RESOURCE_COAL');
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP507','YIELD_PRODUCTION',8);
INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP507','YIELD_PRODUCTION',15);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP507','RESOURCE_COAL','YIELD_PRODUCTION',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP507','Major Mining Sites of Wallonia'),
('TXT_KEY_BUILDING_AXWWP507_PEDIA','The Major Mining Sites of Wallonia is a UNESCO World Heritage Site comprising four sites in Wallonia in southern Belgium associated with the Belgian coal mining industry of the 19th and 20th centuries.[NEWLINE][NEWLINE]The four sites of the property form a strip that is 170km long by 3 to 15 km, crossing Belgium from east to west. It consists of the best-preserved 19th- and 20th-century coal mining sites of the country. It features early examples of the utopian architecture from the early periods of the industrial era in Europe within a highly integrated, industrial and urban ensemble.'),
('TXT_KEY_BUILDING_AXWWP507_QUOTE','[NEWLINE]"The mining industry might make wealth and power for some people, but the many would always be smashed and battered beneath its giant treads."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP507_HELP','+4 [ICON_PRODUCTION] Production from [ICON_RES_COAL] Coal. [COLOR_LIGHT_GREY]Requires coal resource.[ENDCOLOR]');




-- AXWWP508

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP508','TXT_KEY_BUILDING_AXWWP508','TXT_KEY_BUILDING_AXWWP508_PEDIA','TXT_KEY_BUILDING_AXWWP508_HELP','TXT_KEY_BUILDING_AXWWP508_QUOTE','BUILDINGCLASS_AXWWP508',1,-1,100,'AXWWP3_ATLAS',8,'axwwp508.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP508','TXT_KEY_BUILDING_AXWWP508','BUILDING_AXWWP508',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP508'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP508');

UPDATE Buildings SET
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 950,
	PrereqTech = 'TECH_INDUSTRIALIZATION',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP508';

INSERT INTO Building_LocalResourceAnds (BuildingType, ResourceType) VALUES ('BUILDING_AXWWP508','RESOURCE_COAL');
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP508','YIELD_PRODUCTION',6),('BUILDING_AXWWP508','YIELD_SCIENCE',6);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP508','RESOURCE_COAL','YIELD_PRODUCTION',2),('BUILDING_AXWWP508','RESOURCE_COAL','YIELD_SCIENCE',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP508','Zollverein Coal Mine Industrial Complex'),
('TXT_KEY_BUILDING_AXWWP508_PEDIA','The Zollverein Coal Mine Industrial Complex is a large former industrial site in the city of Essen, North Rhine-Westphalia, Germany.[NEWLINE][NEWLINE]For decades, starting in the late 1950s, the two parts of the site, Zollverein Coal Mine and Zollverein Coking Plant, ranked among the largest of their kinds in Europe.'),
('TXT_KEY_BUILDING_AXWWP508_QUOTE','[NEWLINE]"If you want to appreciate the Sun, be a miner."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP508_HELP','+2 [ICON_PRODUCTION] Production from [ICON_RES_COAL] Coal. +2 [ICON_RESEARCH] Science from [ICON_RES_COAL] Coal. [COLOR_LIGHT_GREY]Requires coal resource.[ENDCOLOR]');




-- AXWWP519

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP519','TXT_KEY_BUILDING_AXWWP519','TXT_KEY_BUILDING_AXWWP519_PEDIA','TXT_KEY_BUILDING_AXWWP519_HELP','TXT_KEY_BUILDING_AXWWP519_QUOTE','BUILDINGCLASS_AXWWP519',1,-1,100,'AXWWP3_ATLAS',19,'axwwp519.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP519','TXT_KEY_BUILDING_AXWWP519','BUILDING_AXWWP519',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP519'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP519');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 950,
	PrereqTech = 'TECH_INDUSTRIALIZATION',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP519';

INSERT INTO Building_LocalResourceAnds (BuildingType, ResourceType) VALUES ('BUILDING_AXWWP519','RESOURCE_IRON');
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP519','YIELD_PRODUCTION',5),('BUILDING_AXWWP519','YIELD_SCIENCE',5);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP519','RESOURCE_IRON','YIELD_PRODUCTION',4),('BUILDING_AXWWP519','RESOURCE_IRON','YIELD_SCIENCE',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP519','Engelsberg Ironworks'),
('TXT_KEY_BUILDING_AXWWP519_PEDIA','Engelsberg Ironworks is an ironworks in Angelsberg, a village in Fagersta Municipality in Vastmanland, Sweden.[NEWLINE][NEWLINE]It was built in 1681 and developed into one of the world''s most modern ironworks in the period 1700-1800.'),
('TXT_KEY_BUILDING_AXWWP519_QUOTE','[NEWLINE]"Iron rusts from disuse; water loses its purity from stagnation... even so does inaction sap the vigor of the mind."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP519_HELP','+4 [ICON_PRODUCTION] Production from [ICON_RES_IRON] Iron. +2 [ICON_RESEARCH] Science from [ICON_RES_IRON] Iron. [COLOR_LIGHT_GREY]Requires iron resource.[ENDCOLOR]');




-- AXWWP510

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP510','TXT_KEY_BUILDING_AXWWP510','TXT_KEY_BUILDING_AXWWP510_PEDIA','TXT_KEY_BUILDING_AXWWP510_HELP','TXT_KEY_BUILDING_AXWWP510_QUOTE','BUILDINGCLASS_AXWWP510',1,-1,100,'AXWWP3_ATLAS',10,'axwwp510.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP510','TXT_KEY_BUILDING_AXWWP510','BUILDING_AXWWP510',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP510'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP510');

UPDATE Buildings SET
	SpecialistCount = 2,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_ENGINEER',
	FreeBuilding = 'BUILDINGCLASS_WORKSHOP',
	Cost = 950,
	PrereqTech = 'TECH_RIFLING',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP510';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP510','YIELD_PRODUCTION',6),('BUILDING_AXWWP510','YIELD_SCIENCE',6);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP510','Springfield Armory'),
('TXT_KEY_BUILDING_AXWWP510_PEDIA','The Springfield Armory, located in the city of Springfield, Massachusetts, was the primary center for the manufacture of United States military firearms from 1777 until its closing in 1968.[NEWLINE][NEWLINE]The Springfield Armory in the 19th and 20th centuries became the site of numerous technological innovations of global importance, including interchangeable parts, the assembly line style of mass production, and modern business practices, such as hourly wages.[NEWLINE][NEWLINE]The site is preserved as the Springfield Armory National Historic Site. It features the world''s largest collection of historic American firearms.'),
('TXT_KEY_BUILDING_AXWWP510_QUOTE','[NEWLINE]"I''ve noticed one thing about people. They pay much closer attention to what I have to say, as soon as I take the safety off."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP510_HELP','Free Workshop in every city.');




-- AXWWP511

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP511','TXT_KEY_BUILDING_AXWWP511','TXT_KEY_BUILDING_AXWWP511_PEDIA','TXT_KEY_BUILDING_AXWWP511_HELP','TXT_KEY_BUILDING_AXWWP511_QUOTE','BUILDINGCLASS_AXWWP511',1,-1,100,'AXWWP3_ATLAS',11,'axwwp511.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP511','TXT_KEY_BUILDING_AXWWP511','BUILDING_AXWWP511',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP511'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP511');

UPDATE Buildings SET
	Water = 1, MinAreaSize = 10,
	Flat = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Defense = 500,
	ExtraCityHitPoints = 25,
	FreeBuildingThisCity = 'BUILDINGCLASS_ARSENAL',
	Cost = 950,
	PrereqTech = 'TECH_RIFLING',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP511';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP511','YIELD_SCIENCE',6);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP511','Fort Monroe'),
('TXT_KEY_BUILDING_AXWWP511_PEDIA','Fort Monroe is a decommissioned military installation in Hampton, Virginia—at Old Point Comfort, the southern tip of the Virginia Peninsula, United States. [NEWLINE][NEWLINE]Surrounded by a moat, the seven-sided star fort is the largest stone fort ever built in the United States.'),
('TXT_KEY_BUILDING_AXWWP511_QUOTE','[NEWLINE]"The best armor is staying out of gun-shot."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP511_HELP','Free Arsenal in the city. [COLOR_LIGHT_GREY]Requires coast, flat ground.[ENDCOLOR]');




-- AXWWP513

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP513','TXT_KEY_BUILDING_AXWWP513','TXT_KEY_BUILDING_AXWWP513_PEDIA','TXT_KEY_BUILDING_AXWWP513_HELP','TXT_KEY_BUILDING_AXWWP513_QUOTE','BUILDINGCLASS_AXWWP513',1,-1,100,'AXWWP3_ATLAS',13,'axwwp513.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP513','TXT_KEY_BUILDING_AXWWP513','BUILDING_AXWWP513',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP513'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP513');

UPDATE Buildings SET
	Happiness = 8,
	GreatWorkCount = 1,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_LITERATURE',
	FreeBuilding = 'BUILDINGCLASS_COURTHOUSE',
	Cost = 950,
	PrereqTech = 'TECH_MILITARY_SCIENCE',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP513';


INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP513','Independence Hall'),
('TXT_KEY_BUILDING_AXWWP513_PEDIA','Independence Hall is the building where both the United States Declaration of Independence and the United States Constitution were debated and adopted. It is now the centerpiece of the Independence National Historical Park in Philadelphia, Pennsylvania.[NEWLINE][NEWLINE]The building was completed in 1753 as the colonial legislature (later Pennsylvania State House) for the Province of Pennsylvania and was used in that capacity until the state capital moved to Lancaster in 1799. It became the principal meeting place of the Second Continental Congress from 1775 to 1783 and was the site of the Constitutional Convention in the summer of 1787.'),
('TXT_KEY_BUILDING_AXWWP513_QUOTE','[NEWLINE]"I am more afraid of our mistakes than our enemies'' designs."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP513_HELP','Free Courthouse in every city.');




-- AXWWP514

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP514','TXT_KEY_BUILDING_AXWWP514','TXT_KEY_BUILDING_AXWWP514_PEDIA','TXT_KEY_BUILDING_AXWWP514_HELP','TXT_KEY_BUILDING_AXWWP514_QUOTE','BUILDINGCLASS_AXWWP514',1,-1,100,'AXWWP3_ATLAS',14,'axwwp514.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP514','TXT_KEY_BUILDING_AXWWP514','BUILDING_AXWWP514',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP514'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP514');

UPDATE Buildings SET
	Hill = 1,
	Defense = 250,
	FreeBuildingThisCity = 'BUILDINGCLASS_CASTLE',
	Cost = 950,
	PrereqTech = 'TECH_MILITARY_SCIENCE',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP514';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP514','YIELD_CULTURE',4);
INSERT INTO Building_UnitCombatFreeExperiences (BuildingType, UnitCombatType, Experience) VALUES ('BUILDING_AXWWP514','UNITCOMBAT_SIEGE',15);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP514','Citadelle Laferriere'),
('TXT_KEY_BUILDING_AXWWP514_PEDIA','The Citadelle Laferriere is a large mountaintop fortress in Nord, Haiti, located on top of the mountain Bonnet a L''Eveque.[NEWLINE][NEWLINE]The massive stone structure was built by up to 20,000 workers between 1805 and 1820 as part of a system of fortifications designed to keep the newly independent nation of Haiti safe from French incursions. It is one of the largest fortresses in the Americas.'),
('TXT_KEY_BUILDING_AXWWP514_QUOTE','[NEWLINE]"Sir, we''re surrounded![NEWLINE]Good! Now we can attack from any direction."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP514_HELP','+15 [ICON_WAR] XP for Siege units. Free Castle in the city. [COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');




-- AXWWP515

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP515','TXT_KEY_BUILDING_AXWWP515','TXT_KEY_BUILDING_AXWWP515_PEDIA','TXT_KEY_BUILDING_AXWWP515_HELP','TXT_KEY_BUILDING_AXWWP515_QUOTE','BUILDINGCLASS_AXWWP515',1,-1,100,'AXWWP3_ATLAS',15,'axwwp515.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP515','TXT_KEY_BUILDING_AXWWP515','BUILDING_AXWWP515',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP515'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP515');

UPDATE Buildings SET
	River = 1,
	Flat = 1,
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Defense = 500,
	Cost = 950,
	PrereqTech = 'TECH_MILITARY_SCIENCE',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP515';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP515','YIELD_PRODUCTION',4),('BUILDING_AXWWP515','YIELD_SCIENCE',4);
INSERT INTO Building_UnitCombatFreeExperiences (BuildingType, UnitCombatType, Experience) VALUES ('BUILDING_AXWWP515','UNITCOMBAT_MOUNTED',15);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP515','Modlin Fortress'),
('TXT_KEY_BUILDING_AXWWP515_PEDIA','Modlin Fortress is one of the biggest 19th century fortresses in Poland. It is located in the town of Nowy Dwor Mazowiecki in district Modlin on the Narew river, some 50 kilometres north of Warsaw.[NEWLINE][NEWLINE]The strategic importance of the area limited by the Vistula, Bug, Wkra and Narew was known to various armies throughout the ages.'),
('TXT_KEY_BUILDING_AXWWP515_QUOTE','[NEWLINE]"Artillery is the king of battle. However, the king cannot swim, which is why we need you guys."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP515_HELP','+15 [ICON_WAR] XP for Mounted units. [COLOR_LIGHT_GREY]Requires river, flat ground.[ENDCOLOR]');




-- AXWWP516

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP516','TXT_KEY_BUILDING_AXWWP516','TXT_KEY_BUILDING_AXWWP516_PEDIA','TXT_KEY_BUILDING_AXWWP516_HELP','TXT_KEY_BUILDING_AXWWP516_QUOTE','BUILDINGCLASS_AXWWP516',1,-1,100,'AXWWP3_ATLAS',16,'axwwp516.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP516','TXT_KEY_BUILDING_AXWWP516','BUILDING_AXWWP516',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP516'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP516');

UPDATE Buildings SET
	HappinessPerXPolicies = 2,
	GoldenAgeModifier = 20,
	Cost = 950,
	PrereqTech = 'TECH_MILITARY_SCIENCE',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP516';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP516','YIELD_CULTURE',4),('BUILDING_AXWWP516','YIELD_FAITH',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP516','Bronze Horseman'),
('TXT_KEY_BUILDING_AXWWP516_PEDIA','The Bronze Horseman is an equestrian statue of Peter the Great in the Senate Square in Saint Petersburg, Russia.[NEWLINE][NEWLINE]The name comes from an 1833 poem of the same name by Aleksander Pushkin, which is widely considered one of the most significant works of Russian literature.[NEWLINE][NEWLINE]The statue''s pedestal is the enormous Thunder Stone, the largest stone ever moved by humans.'),
('TXT_KEY_BUILDING_AXWWP516_QUOTE','[NEWLINE]"In tough times, we all hope for knights in shining armor, or the cavalry, to show up."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP516_HELP','Additional [ICON_HAPPINESS_1] Happiness for every 2 policies. Length of [ICON_GOLDEN_AGE] Golden Ages increased by 20%.');




-- AXWWP509

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP509','TXT_KEY_BUILDING_AXWWP509','TXT_KEY_BUILDING_AXWWP509_PEDIA','TXT_KEY_BUILDING_AXWWP509_HELP','TXT_KEY_BUILDING_AXWWP509_QUOTE','BUILDINGCLASS_AXWWP509',1,-1,100,'AXWWP3_ATLAS',9,'axwwp509.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP509','TXT_KEY_BUILDING_AXWWP509','BUILDING_AXWWP509',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP509'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP509');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	FreeBuildingThisCity = 'BUILDINGCLASS_WORKSHOP',
	Cost = 950,
	PrereqTech = 'TECH_FERTILIZER',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP509';

INSERT INTO Building_LocalResourceAnds (BuildingType, ResourceType) VALUES ('BUILDING_AXWWP509','RESOURCE_COTTON');
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP509','YIELD_PRODUCTION',8);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP509','RESOURCE_COTTON','YIELD_PRODUCTION',3),('BUILDING_AXWWP509','RESOURCE_COTTON','YIELD_GOLD',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP509','Derwent Valley Mills'),
('TXT_KEY_BUILDING_AXWWP509_PEDIA','Derwent Valley Mills is a World Heritage Site along the River Derwent in Derbyshire, England.[NEWLINE][NEWLINE]The modern factory, or "mill", system was born here in the 18th century to accommodate the new technology for spinning cotton developed by Richard Arkwright. With advancements in technology, it became possible to produce cotton continuously.'),
('TXT_KEY_BUILDING_AXWWP509_QUOTE','[NEWLINE]"There are few sights more pleasant to the eye, than a wide cotton field when it is in the bloom."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP509_HELP','+3 [ICON_PRODUCTION] Production from [ICON_RES_COTTON] Cotton. +2 [ICON_GOLD] Gold from [ICON_RES_COTTON] Cotton. Free Workshop in the city. [COLOR_LIGHT_GREY]Requires cotton resource.[ENDCOLOR]');




-- AXWWP517

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP517','TXT_KEY_BUILDING_AXWWP517','TXT_KEY_BUILDING_AXWWP517_PEDIA','TXT_KEY_BUILDING_AXWWP517_HELP','TXT_KEY_BUILDING_AXWWP517_QUOTE','BUILDINGCLASS_AXWWP517',1,-1,100,'AXWWP3_ATLAS',17,'axwwp517.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP517','TXT_KEY_BUILDING_AXWWP517','BUILDING_AXWWP517',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP517'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP517');

UPDATE Buildings SET
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 950,
	PrereqTech = 'TECH_FERTILIZER',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP517';

INSERT INTO Building_LocalResourceAnds (BuildingType, ResourceType) VALUES ('BUILDING_AXWWP517','RESOURCE_SALT');
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP517','YIELD_PRODUCTION',8);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP517','RESOURCE_SALT','YIELD_GOLD',3),('BUILDING_AXWWP517','RESOURCE_SALT','YIELD_FOOD',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP517','Humberstone Saltpeter Works'),
('TXT_KEY_BUILDING_AXWWP517_PEDIA','Humberstone and Santa Laura Saltpeter Works are two former saltpeter refineries located in northern Chile. They were declared a UNESCO World Heritage Site in 2005.[NEWLINE][NEWLINE]However the economic model collapsed during the Great Depression of 1929 because of the development of the synthesis of ammonia by the Germans Fritz Haber and Carl Bosch, which led to the industrial production of fertilizers.'),
('TXT_KEY_BUILDING_AXWWP517_QUOTE','[NEWLINE]"Let there be work, bread, water and salt for all."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP517_HELP','+3 [ICON_GOLD] Gold from [ICON_RES_SALT] Salt. +1 [ICON_FOOD] Food from [ICON_RES_SALT] Salt. [COLOR_LIGHT_GREY]Requires salt resource.[ENDCOLOR]');




-- AXWWP518

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP518','TXT_KEY_BUILDING_AXWWP518','TXT_KEY_BUILDING_AXWWP518_PEDIA','TXT_KEY_BUILDING_AXWWP518_HELP','TXT_KEY_BUILDING_AXWWP518_QUOTE','BUILDINGCLASS_AXWWP518',1,-1,100,'AXWWP3_ATLAS',18,'axwwp518.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP518','TXT_KEY_BUILDING_AXWWP518','BUILDING_AXWWP518',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP518'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP518');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	Cost = 950,
	PrereqTech = 'TECH_FERTILIZER',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP518';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP518','YIELD_PRODUCTION',6);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP518','RESOURCE_WHEAT','YIELD_FOOD',1),('BUILDING_AXWWP518','RESOURCE_SUGAR','YIELD_FOOD',1),('BUILDING_AXWWP518','RESOURCE_SALT','YIELD_FOOD',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP518','Wageningen University and Research'),
('TXT_KEY_BUILDING_AXWWP518_PEDIA','Wageningen University & Research is a Dutch public university in Wageningen, Netherlands.[NEWLINE][NEWLINE]It consists of Wageningen University and the former agricultural research institutes of the Dutch Ministry of Agriculture.[NEWLINE][NEWLINE]Wageningen UR trains specialists in life and social sciences and focuses its research on scientific, social and commercial problems in the field of life sciences and natural resources.[NEWLINE][NEWLINE]In the field of life sciences, agricultural and environmental science, the university is considered world-class.'),
('TXT_KEY_BUILDING_AXWWP518_QUOTE','[NEWLINE]"Basic research is what I am doing when I don''t know what I am doing."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP518_HELP','+1 [ICON_FOOD] Food from [ICON_RES_WHEAT] Wheat. +1 [ICON_FOOD] Food from [ICON_RES_SUGAR] Sugar. +1 [ICON_FOOD] Food from [ICON_RES_SALT] Salt.');




-- AXWWP520

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP520','TXT_KEY_BUILDING_AXWWP520','TXT_KEY_BUILDING_AXWWP520_PEDIA','TXT_KEY_BUILDING_AXWWP520_HELP','TXT_KEY_BUILDING_AXWWP520_QUOTE','BUILDINGCLASS_AXWWP520',1,-1,100,'AXWWP3_ATLAS',20,'axwwp520.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP520','TXT_KEY_BUILDING_AXWWP520','BUILDING_AXWWP520',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP520'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP520');

UPDATE Buildings SET
	Happiness = 2,
	GlobalPopulationChange = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuildingThisCity = 'BUILDINGCLASS_HOSPITAL',
	Cost = 950,
	PrereqTech = 'TECH_BIOLOGY',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP520';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP520','YIELD_FOOD',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP520','Devonshire Royal Hospital'),
('TXT_KEY_BUILDING_AXWWP520_PEDIA','The Devonshire Royal Hospital building (now popularly known as the Devonshire Dome) is a 18th-century former stable block in Buxton, Derbyshire.[NEWLINE][NEWLINE]In 1881, the Buxton Bath Charity trustees, persuaded 7th Duke of Devonshire, to give them the use of the whole building to be converted to a hospital, in exchange for providing new stables elsewhere in the town.'),
('TXT_KEY_BUILDING_AXWWP520_QUOTE','[NEWLINE]"Before thirty, men seek disease; after thirty, diseases seek men."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP520_HELP','+1 [ICON_CITIZEN] Citizen in every city. Free Hospital in the city.');




-- AXWWP521

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP521','TXT_KEY_BUILDING_AXWWP521','TXT_KEY_BUILDING_AXWWP521_PEDIA','TXT_KEY_BUILDING_AXWWP521_HELP','TXT_KEY_BUILDING_AXWWP521_QUOTE','BUILDINGCLASS_AXWWP521',1,-1,100,'AXWWP3_ATLAS',21,'axwwp521.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP521','TXT_KEY_BUILDING_AXWWP521','BUILDING_AXWWP521',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP521'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP521');

UPDATE Buildings SET
	Happiness = 4,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	FreeBuilding = 'BUILDINGCLASS_GARDEN',
	Cost = 950,
	PrereqTech = 'TECH_BIOLOGY',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP521';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP521','YIELD_FOOD',4),('BUILDING_AXWWP521','YIELD_SCIENCE',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP521','Kew Gardens'),
('TXT_KEY_BUILDING_AXWWP521_PEDIA','Kew Gardens is a botanical garden in southwest London that houses the "largest and most diverse botanical and mycological collections in the world".[NEWLINE][NEWLINE]Founded in 1840, from the exotic garden at Kew Park in Middlesex, England, its living collections include more than 30,000 different kinds of plants, while the herbarium, which is one of the largest in the world, has over seven million preserved plant specimens. The library contains more than 750,000 volumes, and the illustrations collection contains more than 175,000 prints and drawings of plants.'),
('TXT_KEY_BUILDING_AXWWP521_QUOTE','[NEWLINE]"There are no gardening mistakes, only experiments."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP521_HELP','Free Garden in every city.');




-- AXWWP502

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP502','TXT_KEY_BUILDING_AXWWP502','TXT_KEY_BUILDING_AXWWP502_PEDIA','TXT_KEY_BUILDING_AXWWP502_HELP','TXT_KEY_BUILDING_AXWWP502_QUOTE','BUILDINGCLASS_AXWWP502',1,-1,100,'AXWWP3_ATLAS',2,'axwwp502.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP502','TXT_KEY_BUILDING_AXWWP502','BUILDING_AXWWP502',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP502'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP502');

UPDATE Buildings SET
	Happiness = 4,
	GreatWorkCount = 2,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT',
	FreeBuildingThisCity = 'BUILDINGCLASS_TOURIST_CENTER',
	Cost = 950,
	PrereqTech = 'TECH_ELECTRICITY',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP502';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP502','YIELD_CULTURE',8);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP502','Royal Exhibition Building'),
('TXT_KEY_BUILDING_AXWWP502_PEDIA','The Royal Exhibition Building is a World Heritage Site-listed building in Melbourne, Australia, completed in 1880.[NEWLINE][NEWLINE]It was built to host the Melbourne International Exhibition in 1880–81 and later hosted the opening of the first Parliament of Australia in 1901.'),
('TXT_KEY_BUILDING_AXWWP502_QUOTE','[NEWLINE]"Cultural confinement takes place when a curator imposes his own limits on an art exhibition, rather than asking an artist to set his limits."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP502_HELP','Free Tourist Center in the city.');




-- AXWWP522

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP522','TXT_KEY_BUILDING_AXWWP522','TXT_KEY_BUILDING_AXWWP522_PEDIA','TXT_KEY_BUILDING_AXWWP522_HELP','TXT_KEY_BUILDING_AXWWP522_QUOTE','BUILDINGCLASS_AXWWP522',1,-1,100,'AXWWP3_ATLAS',22,'axwwp522.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP522','TXT_KEY_BUILDING_AXWWP522','BUILDING_AXWWP522',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP522'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP522');

UPDATE Buildings SET
	River = 1,
	Flat = 1,
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 950,
	PrereqTech = 'TECH_ELECTRICITY',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP522';

INSERT INTO Building_ResourceQuantityRequirements (BuildingType, ResourceType, Cost) VALUES ('BUILDING_AXWWP522','RESOURCE_COAL', 1);
INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP522','YIELD_PRODUCTION',10);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP522','YIELD_PRODUCTION',10);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP522','RESOURCE_COAL','YIELD_PRODUCTION',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP522','Battersea Power Station'),
('TXT_KEY_BUILDING_AXWWP522_PEDIA','Battersea Power Station is a decommissioned coal-fired power station located on the south bank of the River Thames, in Nine Elms, Battersea, an inner-city district of South West London.[NEWLINE][NEWLINE]The station is one of the largest brick buildings in the world and is notable for its original, lavish Art Deco interior fittings and decor.[NEWLINE][NEWLINE]The station''s celebrity owes much to numerous popular culture references, which include the cover art of Pink Floyd''s 1977 album Animals and its appearance in the 1965 Beatles'' film Help!'),
('TXT_KEY_BUILDING_AXWWP522_QUOTE','[NEWLINE]"Never trust an electrician with no eyebrows."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP522_HELP','+5 [ICON_PRODUCTION] Production from [ICON_RES_COAL] Coal. [COLOR_LIGHT_GREY]Requires river, flat ground, 1 coal.[ENDCOLOR]');




-- AXWWP523

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP523','TXT_KEY_BUILDING_AXWWP523','TXT_KEY_BUILDING_AXWWP523_PEDIA','TXT_KEY_BUILDING_AXWWP523_HELP','TXT_KEY_BUILDING_AXWWP523_QUOTE','BUILDINGCLASS_AXWWP523',1,-1,100,'AXWWP3_ATLAS',23,'axwwp523.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP523','TXT_KEY_BUILDING_AXWWP523','BUILDING_AXWWP523',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP523'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP523');

UPDATE Buildings SET
	FreeGreatPeople = 1,
	SpecialistCount = 2,
	GreatPeopleRateChange = 2,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	Cost = 950,
	PrereqTech = 'TECH_ELECTRICITY',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP523';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP523','YIELD_SCIENCE',8);
INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP523','YIELD_SCIENCE',20);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP523','MIT'),
('TXT_KEY_BUILDING_AXWWP523_PEDIA','The Massachusetts Institute of Technology (MIT) is a private research university in Cambridge, Massachusetts, United States.[NEWLINE][NEWLINE]Founded in 1861 in response to the increasing industrialization of the United States, MIT adopted a European polytechnic university model and stressed laboratory instruction in applied science and engineering.[NEWLINE][NEWLINE]The Institute is traditionally known for its research and education in the physical sciences and engineering, but more recently in biology, economics, linguistics and management as well.'),
('TXT_KEY_BUILDING_AXWWP523_QUOTE','[NEWLINE]"A teacher''s job is to take a room full of live wires and make sure they are well grounded."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP523_HELP','[ICON_GREAT_PEOPLE] Great Person arrives.');




-- AXWWP525

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP525','TXT_KEY_BUILDING_AXWWP525','TXT_KEY_BUILDING_AXWWP525_PEDIA','TXT_KEY_BUILDING_AXWWP525_HELP','TXT_KEY_BUILDING_AXWWP525_QUOTE','BUILDINGCLASS_AXWWP525',1,-1,100,'AXWWP3_ATLAS',25,'axwwp525.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP525','TXT_KEY_BUILDING_AXWWP525','BUILDING_AXWWP525',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP525'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP525');

UPDATE Buildings SET
	GreatPersonExpendGold = 50,
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_MERCHANT',
	Cost = 950,
	PrereqTech = 'TECH_ELECTRICITY',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP525';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP525','YIELD_GOLD',6);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP525','Bradbury Building'),
('TXT_KEY_BUILDING_AXWWP525_PEDIA','The Bradbury Building is an architectural landmark located at 304 South Broadway at West 3rd Street in downtown Los Angeles, California.[NEWLINE][NEWLINE]Built in 1893, the five-story office building is best known for its extraordinary skylit atrium of access walkways, stairs and elevators, and their ornate ironwork.'),
('TXT_KEY_BUILDING_AXWWP525_QUOTE','[NEWLINE]"I like work; it fascinates me. I can sit and look at it for hours."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP525_HELP','50 [ICON_GOLD] Gold for each [ICON_GREAT_PEOPLE] Great Person expended.');




-- AXWWP524

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP524','TXT_KEY_BUILDING_AXWWP524','TXT_KEY_BUILDING_AXWWP524_PEDIA','TXT_KEY_BUILDING_AXWWP524_HELP','TXT_KEY_BUILDING_AXWWP524_QUOTE','BUILDINGCLASS_AXWWP524',1,-1,100,'AXWWP3_ATLAS',24,'axwwp524.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP524','TXT_KEY_BUILDING_AXWWP524','BUILDING_AXWWP524',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP524'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP524');

UPDATE Buildings SET
	River = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 950,
	PrereqTech = 'TECH_STEAM_POWER',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP524';

INSERT INTO Building_RiverPlotYieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP524','YIELD_PRODUCTION',1);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP524','YIELD_GOLD',6);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP524','Barton Swing Aqueduct'),
('TXT_KEY_BUILDING_AXWWP524_PEDIA','The Barton Swing Aqueduct is a moveable navigable aqueduct in Barton upon Irwell, Greater Manchester, England.[NEWLINE][NEWLINE]It carries the Bridgewater Canal across the Manchester Ship Canal. The swinging action allows large vessels using the ship canal to pass underneath and smaller craft, both narrowboats and broad-beam barges to cross over the top.[NEWLINE][NEWLINE]The aqueduct is the first and only swing aqueduct in the world.'),
('TXT_KEY_BUILDING_AXWWP524_QUOTE','[NEWLINE]"Good canals put the remote parts of the country more nearly upon a level with with those of the neighbourhood of the town. They are upon that the greatest of all improvements."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP524_HELP','+1 [ICON_PRODUCTION] Production from River tiles. [COLOR_LIGHT_GREY]Requires river.[ENDCOLOR]');




-- AXWWP527

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP527','TXT_KEY_BUILDING_AXWWP527','TXT_KEY_BUILDING_AXWWP527_PEDIA','TXT_KEY_BUILDING_AXWWP527_HELP','TXT_KEY_BUILDING_AXWWP527_QUOTE','BUILDINGCLASS_AXWWP527',1,-1,100,'AXWWP3_ATLAS',27,'axwwp527.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP527','TXT_KEY_BUILDING_AXWWP527','BUILDING_AXWWP527',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP527'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP527');

UPDATE Buildings SET
	Water = 1, MinAreaSize = 10,
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	WorkerSpeedModifier = 10,
	FreeBuildingThisCity = 'BUILDINGCLASS_WORKSHOP',
	Cost = 950,
	PrereqTech = 'TECH_STEAM_POWER',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP527';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP527','YIELD_PRODUCTION',8);
INSERT INTO Building_UnitCombatFreeExperiences (BuildingType, UnitCombatType, Experience) VALUES ('BUILDING_AXWWP527','UNITCOMBAT_NAVALMELEE',15);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP527','Portsmouth Block Mills'),
('TXT_KEY_BUILDING_AXWWP527_PEDIA','The Portsmouth Block Mills form part of the Portsmouth Dockyard at Portsmouth, Hampshire, England, and were built during the Napoleonic Wars to supply the British Royal Navy with pulley blocks.[NEWLINE][NEWLINE]They started the age of mass-production using all-metal machine tools and are regarded as one of the seminal buildings of the British Industrial Revolution. They are also the site of the first stationary steam engines used by the Admiralty.'),
('TXT_KEY_BUILDING_AXWWP527_QUOTE','[NEWLINE]"Twice cut off and still too short."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP527_HELP','+15 [ICON_WAR] XP for Navalmelee units. Worker construction speed increased by 10%. Free Workshop in the city. [COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP528

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP528','TXT_KEY_BUILDING_AXWWP528','TXT_KEY_BUILDING_AXWWP528_PEDIA','TXT_KEY_BUILDING_AXWWP528_HELP','TXT_KEY_BUILDING_AXWWP528_QUOTE','BUILDINGCLASS_AXWWP528',1,-1,100,'AXWWP3_ATLAS',28,'axwwp528.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP528','TXT_KEY_BUILDING_AXWWP528','BUILDING_AXWWP528',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP528'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP528');

UPDATE Buildings SET
	FreeBuildingThisCity = 'BUILDINGCLASS_LIGHTHOUSE',
	TradeRouteSeaDistanceModifier = 50,
	Cost = 950,
	PrereqTech = 'TECH_STEAM_POWER',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP528';

INSERT INTO Building_SeaResourceYieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP528','YIELD_PRODUCTION',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP528','Bell Rock Lighthouse'),
('TXT_KEY_BUILDING_AXWWP528_PEDIA','The Bell Rock Lighthouse, off the coast of Angus, Scotland, is the world''s oldest surviving sea-washed lighthouse.[NEWLINE][NEWLINE]The masonry work on which the lighthouse rests was constructed to such a high standard that it has not been replaced or adapted in 200 years.'),
('TXT_KEY_BUILDING_AXWWP528_QUOTE','[NEWLINE]"I can think of no other edifice constructed by a man as altruistic as a lighthouse. They were built only to serve."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP528_HELP','+1 [ICON_PRODUCTION] Production from Sea Resources. Increases distance for [ICON_TRADE] Sea Trade Routes. Free Lighthouse in the city.');




-- AXWWP529

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP529','TXT_KEY_BUILDING_AXWWP529','TXT_KEY_BUILDING_AXWWP529_PEDIA','TXT_KEY_BUILDING_AXWWP529_HELP','TXT_KEY_BUILDING_AXWWP529_QUOTE','BUILDINGCLASS_AXWWP529',1,-1,100,'AXWWP3_ATLAS',29,'axwwp529.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP529','TXT_KEY_BUILDING_AXWWP529','BUILDING_AXWWP529',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP529'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP529');

UPDATE Buildings SET
	Water = 1, MinAreaSize = 10,
	ExtraLuxuries = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_MERCHANT',
	Cost = 950,
	PrereqTech = 'TECH_STEAM_POWER',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP529';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP529','YIELD_FOOD',4),('BUILDING_AXWWP529','YIELD_GOLD',4),('BUILDING_AXWWP529','YIELD_PRODUCTION',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP529','Albert Dock'),
('TXT_KEY_BUILDING_AXWWP529_PEDIA','The Albert Dock is a complex of dock buildings and warehouses in Liverpool, England.[NEWLINE][NEWLINE]It was opened in 1846, and was the first structure in Britain to be built from cast iron, brick and stone, with no structural wood. As a result, it was the first non-combustible warehouse system in the world.[NEWLINE][NEWLINE]Two years after it opened it was modified to feature the world''s first hydraulic cranes.'),
('TXT_KEY_BUILDING_AXWWP529_QUOTE','[NEWLINE]"One will never reach distant shores, if he chooses to remain upon the dock."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP529_HELP','One extra copy per luxury resource near the city. [COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP526

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP526','TXT_KEY_BUILDING_AXWWP526','TXT_KEY_BUILDING_AXWWP526_PEDIA','TXT_KEY_BUILDING_AXWWP526_HELP','TXT_KEY_BUILDING_AXWWP526_QUOTE','BUILDINGCLASS_AXWWP526',1,-1,100,'AXWWP3_ATLAS',26,'axwwp526.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP526','TXT_KEY_BUILDING_AXWWP526','BUILDING_AXWWP526',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP526'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP526');

UPDATE Buildings SET
	Happiness = 2,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	NumTradeRouteBonus = 1,
	TradeRouteSeaGoldBonus = 100,
	TradeRouteLandGoldBonus = 100,
	Cost = 950,
	PrereqTech = 'TECH_DYNAMITE',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP526';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP526','YIELD_GOLD',5),('BUILDING_AXWWP526','YIELD_PRODUCTION',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP526','Rideau Canal'),
('TXT_KEY_BUILDING_AXWWP526_PEDIA','The Rideau Canal, also known unofficially as the Rideau Waterway, connects Canada''s capital city of Ottawa, Ontario, to Lake Ontario and the Saint Lawrence River at Kingston, Ontario. It is 202 kilometres in length.[NEWLINE][NEWLINE]The canal was opened in 1832 as a precaution in case of war with the United States. It remains in use today primarily for pleasure boating, with most of its original structures intact, operated by Parks Canada.'),
('TXT_KEY_BUILDING_AXWWP526_QUOTE','[NEWLINE]"There is no problem that cannot be solved by the use of high explosives."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP526_HELP','Increases [ICON_GOLD] Gold for [ICON_TRADE] Sea Trade Routes. Increases [ICON_GOLD] Gold for [ICON_TRADE] Land Trade Routes. Additional [ICON_TRADE] Trade Route.');




-- AXWWP530

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP530','TXT_KEY_BUILDING_AXWWP530','TXT_KEY_BUILDING_AXWWP530_PEDIA','TXT_KEY_BUILDING_AXWWP530_HELP','TXT_KEY_BUILDING_AXWWP530_QUOTE','BUILDINGCLASS_AXWWP530',1,-1,100,'AXWWP3_ATLAS',30,'axwwp530.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP530','TXT_KEY_BUILDING_AXWWP530','BUILDING_AXWWP530',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP530'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP530');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	ExtraCityHitPoints = 25,
	GlobalDefenseMod = 10,
	FreeBuildingThisCity = 'BUILDINGCLASS_ARSENAL',
	Cost = 950,
	PrereqTech = 'TECH_DYNAMITE',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP530';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP530','YIELD_PRODUCTION',5),('BUILDING_AXWWP530','YIELD_SCIENCE',5);
INSERT INTO Building_UnitCombatFreeExperiences (BuildingType, UnitCombatType, Experience) VALUES ('BUILDING_AXWWP530','UNITCOMBAT_GUN',15);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP530','Watervliet Arsenal'),
('TXT_KEY_BUILDING_AXWWP530_PEDIA','The Watervliet Arsenal is an arsenal of the United States Army located in Watervliet, New York, on the west bank of the Hudson River.[NEWLINE][NEWLINE]It is the oldest continuously active arsenal in the United States, and today produces much of the artillery for the army, as well as gun tubes for cannons, mortars, and tanks.'),
('TXT_KEY_BUILDING_AXWWP530_QUOTE','[NEWLINE]"The best tank terrain is that without anti-tank weapons."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP530_HELP','+15 [ICON_WAR] XP for Gun units. [ICON_STRENGTH] Defense of every city increased by 10%. Free Arsenal in the city.');




-- AXWWP531

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor) VALUES
('BUILDING_AXWWP531','TXT_KEY_BUILDING_AXWWP531','TXT_KEY_BUILDING_AXWWP531_PEDIA','TXT_KEY_BUILDING_AXWWP531_HELP','TXT_KEY_BUILDING_AXWWP531_QUOTE','BUILDINGCLASS_AXWWP531',1,-1,100,'AXWWP3_ATLAS',31,'axwwp531.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP531','TXT_KEY_BUILDING_AXWWP531','BUILDING_AXWWP531',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP531'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP531');

UPDATE Buildings SET
	SpecialistCount = 1,
	GreatPeopleRateChange = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	Cost = 950,
	PrereqTech = 'TECH_DYNAMITE',
	MaxStartEra = 'ERA_MODERN'
WHERE Type = 'BUILDING_AXWWP531';

INSERT INTO Building_LocalResourceAnds (BuildingType, ResourceType) VALUES ('BUILDING_AXWWP531','RESOURCE_COAL');
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP531','YIELD_PRODUCTION',10);
INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES ('BUILDING_AXWWP531','RESOURCE_COAL','YIELD_PRODUCTION',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP531','Chatterley Whitfield'),
('TXT_KEY_BUILDING_AXWWP531_PEDIA','Chatterley Whitfield Colliery is a disused coal mine on the outskirts of Chell, Staffordshire in Stoke on Trent, England.[NEWLINE][NEWLINE]It was the largest mine working The North Staffordshire Coalfield and was the first colliery in The UK to produce 1,000,000 tons of saleable coal in a year.'),
('TXT_KEY_BUILDING_AXWWP531_QUOTE','[NEWLINE]"The country that is more developed industrially shows, to the less developed, the image of its own future."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP531_HELP','+5 [ICON_PRODUCTION] Production from [ICON_RES_COAL] Coal. [COLOR_LIGHT_GREY]Requires coal resource.[ENDCOLOR]');
