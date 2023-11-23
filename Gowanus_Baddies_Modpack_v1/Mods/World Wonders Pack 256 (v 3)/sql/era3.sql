-- AXWWP300

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP300','TXT_KEY_BUILDING_AXWWP300','TXT_KEY_BUILDING_AXWWP300_PEDIA','TXT_KEY_BUILDING_AXWWP300_HELP','TXT_KEY_BUILDING_AXWWP300_QUOTE','BUILDINGCLASS_AXWWP300',1,-1,100,'AXWWP2_ATLAS',0,'axwwp300.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP300','TXT_KEY_BUILDING_AXWWP300','BUILDING_AXWWP300',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP300'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP300');

UPDATE Buildings SET
	Cost = 300,
	Hill = 1,
	NearbyTerrainRequired = 'TERRAIN_DESERT',
	FreeBuildingThisCity = 'BUILDINGCLASS_MONASTERY',
	PrereqTech = 'TECH_THEOLOGY',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP300';

-- Building_TerrainYieldChanges
INSERT INTO Building_TerrainYieldChanges (BuildingType, TerrainType, YieldType, Yield) VALUES ('BUILDING_AXWWP300','TERRAIN_DESERT','YIELD_FAITH',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP300','Saint Catherine''s Monastery'),
('TXT_KEY_BUILDING_AXWWP300_PEDIA','Saint Catherine''s Monastery, officially "Sacred Monastery of the God-Trodden Mount Sinai", lies on the Sinai Peninsula, at the mouth of a gorge at the foot of Mount Sinai, in the city of Saint Catherine, Egypt in the South Sinai Governorate.[NEWLINE][NEWLINE]The monastery is controlled by the autonomous Church of Sinai, part of the wider Eastern Orthodox Church, and is a UNESCO World Heritage Site.[NEWLINE][NEWLINE]Built between 548 and 565, the monastery is one of the oldest working Christian monasteries in the world. The site contains the world''s oldest continually operating library, possessing many unique books including the Syriac Sinaiticus and, until 1859, the Codex Sinaiticus.'),
('TXT_KEY_BUILDING_AXWWP300_QUOTE','[NEWLINE]"It is easier to preach ten sermons than it is to live one."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP300_HELP','+1 [ICON_PEACE] Faith from desert tiles. Free monastery in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires desert and hill.[ENDCOLOR]');




-- AXWWP301

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP301','TXT_KEY_BUILDING_AXWWP301','TXT_KEY_BUILDING_AXWWP301_PEDIA','TXT_KEY_BUILDING_AXWWP301_HELP','TXT_KEY_BUILDING_AXWWP301_QUOTE','BUILDINGCLASS_AXWWP301',1,-1,100,'AXWWP2_ATLAS',1,'axwwp301.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP301','TXT_KEY_BUILDING_AXWWP301','BUILDING_AXWWP301',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP301'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP301');

UPDATE Buildings SET
	Cost = 300,
	NearbyTerrainRequired = 'TERRAIN_PLAINS',
	FreeBuildingThisCity = 'BUILDINGCLASS_TEMPLE',
	PrereqTech = 'TECH_THEOLOGY',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP301';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP301','YIELD_CULTURE',2);
INSERT INTO Building_FeatureYieldChanges (BuildingType, FeatureType, YieldType, Yield) VALUES ('BUILDING_AXWWP301','FEATURE_JUNGLE','YIELD_FAITH',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP301','Temple of the Feather Serpent'),
('TXT_KEY_BUILDING_AXWWP301_PEDIA','The Temple of the Feathered Serpent in Xochicalco has fine stylized depictions of that deity in a style which includes apparent influences of Teotihuacan and Maya art. The high taluds of the pyramid bear relief carvings that depict towns that paid tribute to Xochicalco as well as several seated figures that look Mayan.[NEWLINE][NEWLINE]It has been speculated that Xochicalco may have had a community of artists from other parts of Mesoamerica.'),
('TXT_KEY_BUILDING_AXWWP301_QUOTE','[NEWLINE]"Look like the innocent flower,[NEWLINE]But be the serpent under it."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP301_HELP','+1 [ICON_PEACE] Faith from jungle tiles. Free temple in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires plains.[ENDCOLOR]');




-- AXWWP302

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP302','TXT_KEY_BUILDING_AXWWP302','TXT_KEY_BUILDING_AXWWP302_PEDIA','TXT_KEY_BUILDING_AXWWP302_HELP','TXT_KEY_BUILDING_AXWWP302_QUOTE','BUILDINGCLASS_AXWWP302',1,-1,100,'AXWWP2_ATLAS',2,'axwwp302.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP302','TXT_KEY_BUILDING_AXWWP302','BUILDING_AXWWP302',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP302'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP302');

UPDATE Buildings SET
	Cost = 300,
	FreeBuildingThisCity = 'BUILDINGCLASS_MONASTERY',
	PrereqTech = 'TECH_THEOLOGY',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP302';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP302','YIELD_CULTURE',3), ('BUILDING_AXWWP302','YIELD_FAITH',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP302','Alcobaca Monastery'),
('TXT_KEY_BUILDING_AXWWP302_PEDIA','The Alcobaca Monastery is a Roman Catholic church located in the town of Alcobaca, in Oeste Subregion.[NEWLINE][NEWLINE]The church and monastery were the first Gothic buildings in Portugal, and, together with the Monastery of Santa Cruz in Coimbra, it was one of the most important of the mediaeval monasteries in Portugal.'),
('TXT_KEY_BUILDING_AXWWP302_QUOTE','[NEWLINE]"The more you complain, the longer God lets you live."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP302_HELP','Free monastery in the city.');




-- AXWWP303

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP303','TXT_KEY_BUILDING_AXWWP303','TXT_KEY_BUILDING_AXWWP303_PEDIA','TXT_KEY_BUILDING_AXWWP303_HELP','TXT_KEY_BUILDING_AXWWP303_QUOTE','BUILDINGCLASS_AXWWP303',1,-1,100,'AXWWP2_ATLAS',3,'axwwp303.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP303','TXT_KEY_BUILDING_AXWWP303','BUILDING_AXWWP303',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP303'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP303');

UPDATE Buildings SET
	Cost = 300,
	Happiness = 1,
	NearbyMountainRequired = 1,
	FreeBuildingThisCity = 'BUILDINGCLASS_MONASTERY',
	PrereqTech = 'TECH_THEOLOGY',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP303';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP303','YIELD_CULTURE',5), ('BUILDING_AXWWP303','YIELD_GOLD',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP303','Rila Monastery'),
('TXT_KEY_BUILDING_AXWWP303_PEDIA','The Monastery of Saint Ivan of Rila, better known as the Rila Monastery is the largest and most famous Eastern Orthodox monastery in Bulgaria.[NEWLINE][NEWLINE]Ever since its creation, the Rila Monastery has been supported and respected by the Bulgarian rulers. Large donations were made by almost every tsar of the Second Bulgarian Empire, making the monastery a cultural and spiritual centre of Bulgarian national consciousness that reached its apogee from the 12th to the 14th century.'),
('TXT_KEY_BUILDING_AXWWP303_QUOTE','[NEWLINE]"The church is near but the road is icy; the bar is far away but I''ll walk carefully."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP303_HELP','Free monastery in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires mountain nearby.[ENDCOLOR]');




-- AXWWP304

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP304','TXT_KEY_BUILDING_AXWWP304','TXT_KEY_BUILDING_AXWWP304_PEDIA','TXT_KEY_BUILDING_AXWWP304_HELP','TXT_KEY_BUILDING_AXWWP304_QUOTE','BUILDINGCLASS_AXWWP304',1,-1,100,'AXWWP2_ATLAS',4,'axwwp304.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP304','TXT_KEY_BUILDING_AXWWP304','BUILDING_AXWWP304',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP304'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP304');

UPDATE Buildings SET
	Cost = 300,
	Happiness = 3,
	River = 1,
	NearbyMountainRequired = 1,
	PrereqTech = 'TECH_CIVIL_SERVICE',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP304';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP304','YIELD_CULTURE',3), ('BUILDING_AXWWP304','YIELD_FOOD',3), ('BUILDING_AXWWP304','YIELD_PRODUCTION',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP304','Taos Pueblo'),
('TXT_KEY_BUILDING_AXWWP304_PEDIA','Taos Pueblo is an ancient pueblo belonging to a Taos-speaking (Tiwa) Native American tribe of Puebloan people. It was probably built between 1000 and 1450.[NEWLINE][NEWLINE]The Taos community is known for being one of the most private, secretive, and conservative pueblos.'),
('TXT_KEY_BUILDING_AXWWP304_QUOTE','[NEWLINE]"The secret to life is meaningless unless you discover it yourself."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP304_HELP','[COLOR_LIGHT_GREY]Requires river and mountain nearby.[ENDCOLOR]');




-- AXWWP305

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP305','TXT_KEY_BUILDING_AXWWP305','TXT_KEY_BUILDING_AXWWP305_PEDIA','TXT_KEY_BUILDING_AXWWP305_HELP','TXT_KEY_BUILDING_AXWWP305_QUOTE','BUILDINGCLASS_AXWWP305',1,-1,100,'AXWWP2_ATLAS',5,'axwwp305.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP305','TXT_KEY_BUILDING_AXWWP305','BUILDING_AXWWP305',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP305'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP305');

UPDATE Buildings SET
	Cost = 300,
	River = 1,
	PrereqTech = 'TECH_CIVIL_SERVICE',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP305';

INSERT INTO Building_RiverPlotYieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP305','YIELD_CULTURE',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP305','Kapellbrucke'),
('TXT_KEY_BUILDING_AXWWP305_PEDIA','The Kapellbrucke (literally, Chapel Bridge) is a covered wooden footbridge spanning diagonally across the Reuss in the city of Lucerne in central Switzerland.[NEWLINE][NEWLINE]The Kapellbrucke is the oldest wooden covered bridge in Europe, as well as the world''s oldest surviving truss bridge. It serves as the city''s symbol and as one of Switzerland''s main tourist attractions.'),
('TXT_KEY_BUILDING_AXWWP305_QUOTE','[NEWLINE]"I can cut a piece of wood in half just by looking at it. It''s true, I saw it with my own eyes."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP305_HELP','+1 [ICON_CULTURE] Culture from river tiles.[NEWLINE][COLOR_LIGHT_GREY]Requires river.[ENDCOLOR]');




-- AXWWP306

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP306','TXT_KEY_BUILDING_AXWWP306','TXT_KEY_BUILDING_AXWWP306_PEDIA','TXT_KEY_BUILDING_AXWWP306_HELP','TXT_KEY_BUILDING_AXWWP306_QUOTE','BUILDINGCLASS_AXWWP306',1,-1,100,'AXWWP2_ATLAS',6,'axwwp306.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP306','TXT_KEY_BUILDING_AXWWP306','BUILDING_AXWWP306',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP306'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP306');

UPDATE Buildings SET
	Cost = 300,
	FreshWater = 1,
	Hill = 1,
	SpecialistCount = 1,
	SpecialistType = 'SPECIALIST_ARTIST',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_CIVIL_SERVICE',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP306';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP306','YIELD_CULTURE',3), ('BUILDING_AXWWP306','YIELD_FAITH',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP306','Ellora Caves'),
('TXT_KEY_BUILDING_AXWWP306_PEDIA','Ellora, located in the Aurangabad district of Maharashtra, India, is one of the largest rock-cut monastery-temple cave complexes in the world, featuring Buddhist, Hindu and Jain monuments, and artwork, dating from the 600-1000 CE period.'),
('TXT_KEY_BUILDING_AXWWP306_QUOTE','[NEWLINE]"If you can''t live longer, live deeper."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP306_HELP','[COLOR_LIGHT_GREY]Requires hill and fresh water.[ENDCOLOR]');




-- AXWWP307

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP307','TXT_KEY_BUILDING_AXWWP307','TXT_KEY_BUILDING_AXWWP307_PEDIA','TXT_KEY_BUILDING_AXWWP307_HELP','TXT_KEY_BUILDING_AXWWP307_QUOTE','BUILDINGCLASS_AXWWP307',1,-1,100,'AXWWP2_ATLAS',7,'axwwp307.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP307','TXT_KEY_BUILDING_AXWWP307','BUILDING_AXWWP307',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP307'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP307');

UPDATE Buildings SET
	Cost = 300,
	Happiness = 2,
	FreshWater = 1,
	PrereqTech = 'TECH_CIVIL_SERVICE',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP307';

INSERT INTO Building_LakePlotYieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP307','YIELD_CULTURE',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP307','Menara Gardens'),
('TXT_KEY_BUILDING_AXWWP307_PEDIA','The Menara gardens are botanical gardens located to the west of Marrakech, Morocco, near the Atlas Mountains.[NEWLINE][NEWLINE]The pavilion and basin (an artificial lake) are surrounded by orchards and olive groves. The intention of the basin was to irrigate the surrounding gardens and orchards using a sophisticated system of underground channels called a qanat. The basin is supplied with water thanks to an old hydraulic system, which conveys water from the mountains located approximately 30 km away from Marrakech.'),
('TXT_KEY_BUILDING_AXWWP307_QUOTE','[NEWLINE]"My wife said that if I buy any more plants he would leave me.[NEWLINE]Damn!  I''m going to miss that woman."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP307_HELP','+1 [ICON_CULTURE] Culture from lake tiles.[NEWLINE][COLOR_LIGHT_GREY]Requires fresh water.[ENDCOLOR]');




-- AXWWP308

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP308','TXT_KEY_BUILDING_AXWWP308','TXT_KEY_BUILDING_AXWWP308_PEDIA','TXT_KEY_BUILDING_AXWWP308_HELP','TXT_KEY_BUILDING_AXWWP308_QUOTE','BUILDINGCLASS_AXWWP308',1,-1,100,'AXWWP2_ATLAS',8,'axwwp308.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP308','TXT_KEY_BUILDING_AXWWP308','BUILDING_AXWWP308',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP308'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP308');

UPDATE Buildings SET
	Cost = 300,
	Happiness = 1,
	ExtraLuxuries = 1,
	FreeBuilding = 'BUILDINGCLASS_MARKET',
	SpecialistCount = 1,
	SpecialistType = 'SPECIALIST_MERCHANT',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_GUILDS',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP308';

INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP308','YIELD_GOLD',25);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP308','Krakow Cloth Hall'),
('TXT_KEY_BUILDING_AXWWP308_PEDIA','The Krakow Cloth Hall in Lesser Poland, dates to the Renaissance and is one of the city''s most recognizable icons. It is the central feature of the main market square in the Krakow Old Town.[NEWLINE][NEWLINE]It was once a major centre of international trade. Traveling merchants met there to discuss business and to barter. During its golden age in the 15th century, the hall was the source of a variety of exotic imports from the east – spices, silk, leather and wax – while Krakow itself exported textiles, lead, and salt from the Wieliczka Salt Mine.'),
('TXT_KEY_BUILDING_AXWWP308_QUOTE','[NEWLINE]"That awkward moment when you leave a store without buying anything and all you can think is: act natural, you''re innocent."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP308_HELP','One extra copy per luxury resource near the city. Free market in the city.');




-- AXWWP309

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP309','TXT_KEY_BUILDING_AXWWP309','TXT_KEY_BUILDING_AXWWP309_PEDIA','TXT_KEY_BUILDING_AXWWP309_HELP','TXT_KEY_BUILDING_AXWWP309_QUOTE','BUILDINGCLASS_AXWWP309',1,-1,100,'AXWWP2_ATLAS',9,'axwwp309.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP309','TXT_KEY_BUILDING_AXWWP309','BUILDING_AXWWP309',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP309'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP309');

UPDATE Buildings SET
	Cost = 300,
	FreshWater = 1,
	PrereqTech = 'TECH_GUILDS',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP309';

INSERT INTO Building_LocalResourceAnds (BuildingType, ResourceType) VALUES ('BUILDING_AXWWP100','RESOURCE_WINE');
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP309','YIELD_FOOD',4), ('BUILDING_AXWWP309','YIELD_GOLD',4);

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP309','RESOURCE_WINE','YIELD_PRODUCTION',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP309','Vineyards of Lavaux'),
('TXT_KEY_BUILDING_AXWWP309_PEDIA','Lavaux is a region in the canton of Vaud in Switzerland, in the district of Lavaux-Oron. Lavaux consist of 830 hectares of terraced vineyards that stretch for about 30 km along the south-facing northern shores of Lake Geneva.[NEWLINE][NEWLINE]Although there is some evidence that vines were grown in the area in Roman times, the actual vine terraces can be traced back to the 11th century, when Benedictine and Cistercian monasteries controlled the area.'),
('TXT_KEY_BUILDING_AXWWP309_QUOTE','[NEWLINE]"This may be the wine talking, but I really, really, really, really love wine."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP309_HELP','+2 [ICON_PRODUCTION] Production from [ICON_RES_WINE] Wine.[NEWLINE][COLOR_LIGHT_GREY]Requires fresh water and wine resource.[ENDCOLOR]');




-- AXWWP310

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP310','TXT_KEY_BUILDING_AXWWP310','TXT_KEY_BUILDING_AXWWP310_PEDIA','TXT_KEY_BUILDING_AXWWP310_HELP','TXT_KEY_BUILDING_AXWWP310_QUOTE','BUILDINGCLASS_AXWWP310',1,-1,100,'AXWWP2_ATLAS',10,'axwwp310.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP310','TXT_KEY_BUILDING_AXWWP310','BUILDING_AXWWP310',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP310'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP310');

UPDATE Buildings SET
	Cost = 300,
	NearbyTerrainRequired = 'TERRAIN_DESERT',
	PrereqTech = 'TECH_GUILDS',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP310';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP310','YIELD_CULTURE',3), ('BUILDING_AXWWP310','YIELD_GOLD',4);

INSERT INTO Building_FeatureYieldChanges (BuildingType, FeatureType, YieldType, Yield) VALUES ('BUILDING_AXWWP310','FEATURE_OASIS','YIELD_FOOD',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP310','Oualata'),
('TXT_KEY_BUILDING_AXWWP310_PEDIA','Oualata is a small oasis town in southeast Mauritania, located at the eastern end of the Aoukar basin.[NEWLINE][NEWLINE]Oualata was important as a caravan city in the thirteenth and fourteenth centuries as the southern terminus of a trans-Saharan trade route and now it is a World Heritage Site.'),
('TXT_KEY_BUILDING_AXWWP310_QUOTE','[NEWLINE]"We never know the worth of water till the well is dry."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP310_HELP','+2 [ICON_FOOD] Food from Oasis.[NEWLINE][COLOR_LIGHT_GREY]Requires desert.[ENDCOLOR]');




-- AXWWP311

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP311','TXT_KEY_BUILDING_AXWWP311','TXT_KEY_BUILDING_AXWWP311_PEDIA','TXT_KEY_BUILDING_AXWWP311_HELP','TXT_KEY_BUILDING_AXWWP311_QUOTE','BUILDINGCLASS_AXWWP311',1,-1,100,'AXWWP2_ATLAS',11,'axwwp311.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP311','TXT_KEY_BUILDING_AXWWP311','BUILDING_AXWWP311',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP311'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP311');

UPDATE Buildings SET
	Cost = 300,
	SpecialistType = 'SPECIALIST_ARTIST',
	GreatPeopleRateChange = 1,
	FreeBuildingThisCity = 'BUILDINGCLASS_CATHEDRAL',
	PrereqTech = 'TECH_METAL_CASTING',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP311';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP311','YIELD_FAITH',4), ('BUILDING_AXWWP311','YIELD_CULTURE',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP311','Amiens Cathedral'),
('TXT_KEY_BUILDING_AXWWP311_PEDIA','The Cathedral Basilica of Our Lady of Amiens is a Roman Catholic church.[NEWLINE][NEWLINE]Medieval cathedral builders were trying to maximize the internal dimensions in order to reach for the heavens and bring in more light. In that regard, the Amiens cathedral is the tallest complete cathedral in France. It also has the greatest interior volume of any French cathedral, estimated at 200,000 cubic metres (260,000 cu yd).'),
('TXT_KEY_BUILDING_AXWWP311_QUOTE','[NEWLINE]"Cathedrals do not seem to me to have been built. They seem, rather, stupendous growths of nature, like crystals, or cliffs of basalt."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP311_HELP','Free Cathedral in the city.');




-- AXWWP312

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP312','TXT_KEY_BUILDING_AXWWP312','TXT_KEY_BUILDING_AXWWP312_PEDIA','TXT_KEY_BUILDING_AXWWP312_HELP','TXT_KEY_BUILDING_AXWWP312_QUOTE','BUILDINGCLASS_AXWWP312',1,-1,100,'AXWWP2_ATLAS',12,'axwwp312.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP312','TXT_KEY_BUILDING_AXWWP312','BUILDING_AXWWP312',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP312'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP312');

UPDATE Buildings SET
	Cost = 300,
	Defense = 250,
	NumTradeRouteBonus = 1,
	SpecialistType = 'SPECIALIST_MERCHANT',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_METAL_CASTING',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP312';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP312','YIELD_GOLD',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP312','Holstentor'),
('TXT_KEY_BUILDING_AXWWP312_PEDIA','The Holsten Gate is a city gate marking off the western boundary of the old center of the Hanseatic city of Lubeck.[NEWLINE][NEWLINE]The rich and wealthy Hanseatic city of Lubeck felt the need in the course of the centuries to protect itself from outside threats with ever stronger walls and fortifications.'),
('TXT_KEY_BUILDING_AXWWP312_QUOTE','[NEWLINE]"All I ask is a chance to prove money can''t make me happy."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP312_HELP','Provides one additional Trade Route.');




-- AXWWP313

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP313','TXT_KEY_BUILDING_AXWWP313','TXT_KEY_BUILDING_AXWWP313_PEDIA','TXT_KEY_BUILDING_AXWWP313_HELP','TXT_KEY_BUILDING_AXWWP313_QUOTE','BUILDINGCLASS_AXWWP313',1,-1,100,'AXWWP2_ATLAS',13,'axwwp313.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP313','TXT_KEY_BUILDING_AXWWP313','BUILDING_AXWWP313',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP313'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP313');

UPDATE Buildings SET
	Cost = 300,
	PrereqTech = 'TECH_METAL_CASTING',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP313';

INSERT INTO Building_LocalResourceAnds (BuildingType, ResourceType) VALUES ('BUILDING_AXWWP313','RESOURCE_COPPER');
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP313','YIELD_GOLD',6);

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP313','RESOURCE_COPPER','YIELD_PRODUCTION',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP313','Falun Mine'),
('TXT_KEY_BUILDING_AXWWP313_PEDIA','Falun Mine was a mine in Falun, Sweden, that operated for a millennium from the 10th century to 1992. It produced as much as two thirds of Europe''s copper needs and helped fund many of Sweden''s wars in the 17th century.[NEWLINE][NEWLINE]Technological developments at the mine had a profound influence on mining globally for two centuries. The mine is now a museum and in 2001 was designated a UNESCO world heritage site.'),
('TXT_KEY_BUILDING_AXWWP313_QUOTE','[NEWLINE]"Just because there''s tarnish on the copper, doesn''t mean there''s not a shine beneath."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP313_HELP','+2 [ICON_PRODUCTION] Production from [ICON_RES_COPPER] Copper.[NEWLINE][COLOR_LIGHT_GREY]Requires copper resource.[ENDCOLOR]');




-- AXWWP314

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP314','TXT_KEY_BUILDING_AXWWP314','TXT_KEY_BUILDING_AXWWP314_PEDIA','TXT_KEY_BUILDING_AXWWP314_HELP','TXT_KEY_BUILDING_AXWWP314_QUOTE','BUILDINGCLASS_AXWWP314',1,-1,100,'AXWWP2_ATLAS',14,'axwwp314.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP314','TXT_KEY_BUILDING_AXWWP314','BUILDING_AXWWP314',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP314'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP314');

UPDATE Buildings SET
	Cost = 400,
	Water = 1, MinAreaSize = 10,
	Defense = 250,
	TrainedFreePromotion = 'PROMOTION_BOMBARDMENT_1',
	FreeBuildingThisCity = 'BUILDINGCLASS_CASTLE',
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_COMPASS',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP314';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP314','YIELD_CULTURE',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP314','Fort la Latte'),
('TXT_KEY_BUILDING_AXWWP314_PEDIA','Fort la Latte or Castle of La Latte is a castle in the northeast of Brittany, in the commune of Frehel, Cotes-d''Armor.[NEWLINE][NEWLINE]This impressive castle was built on a small piece of land at the Baie de la Fresnaye in the 13th century.'),
('TXT_KEY_BUILDING_AXWWP314_QUOTE','[NEWLINE]"In my prayers I never said I needed a home. I said I wanted a sanctuary."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP314_HELP','Naval ranged units trained in the city receive Bombardment promotion. Free Castle in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP315

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP315','TXT_KEY_BUILDING_AXWWP315','TXT_KEY_BUILDING_AXWWP315_PEDIA','TXT_KEY_BUILDING_AXWWP315_HELP','TXT_KEY_BUILDING_AXWWP315_QUOTE','BUILDINGCLASS_AXWWP315',1,-1,100,'AXWWP2_ATLAS',15,'axwwp315.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP315','TXT_KEY_BUILDING_AXWWP315','BUILDING_AXWWP315',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP315'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP315');

UPDATE Buildings SET
	Cost = 400,
	Water = 1, MinAreaSize = 10,
	Defense = 250,
	TrainedFreePromotion = 'PROMOTION_TARGETING_1',
	FreeBuildingThisCity = 'BUILDINGCLASS_CASTLE',
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_COMPASS',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP315';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP315','YIELD_CULTURE',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP315','Castle Cornet'),
('TXT_KEY_BUILDING_AXWWP315_PEDIA','Castle Cornet is a large island castle in Guernsey (the island in the English Channel off the coast of Normandy).[NEWLINE][NEWLINE]Its importance was as a defence not only of the Island, but of the roadstead.'),
('TXT_KEY_BUILDING_AXWWP315_QUOTE','[NEWLINE]"I tried reading a book about a castle with the drawbridge up, but I couldn''t get into it."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP315_HELP','Naval ranged units trained in the city receive Targeting promotion. Free Castle in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP316

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP316','TXT_KEY_BUILDING_AXWWP316','TXT_KEY_BUILDING_AXWWP316_PEDIA','TXT_KEY_BUILDING_AXWWP316_HELP','TXT_KEY_BUILDING_AXWWP316_QUOTE','BUILDINGCLASS_AXWWP316',1,-1,100,'AXWWP2_ATLAS',16,'axwwp316.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP316','TXT_KEY_BUILDING_AXWWP316','BUILDING_AXWWP316',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP316'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP316');

UPDATE Buildings SET
	Cost = 400,
	FreeBuildingThisCity = 'BUILDINGCLASS_UNIVERSITY',
	SpecialistCount = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_EDUCATION',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP316';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP316','YIELD_SCIENCE',5), ('BUILDING_AXWWP316','YIELD_FAITH',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP316','University of Al Quaraouiyine'),
('TXT_KEY_BUILDING_AXWWP316_PEDIA','The University of Al Quaraouiyine is a university located in Fez, Morocco.[NEWLINE][NEWLINE]It is the oldest existing, continually operating and the first degree-awarding educational institution in the world according to UNESCO and Guinness World Records, and is sometimes referred to as the oldest university.'),
('TXT_KEY_BUILDING_AXWWP316_QUOTE','[NEWLINE]"A person who won''t read has no advantage over one who can''t read."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP316_HELP','Free University in the city.');




-- AXWWP317

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP317','TXT_KEY_BUILDING_AXWWP317','TXT_KEY_BUILDING_AXWWP317_PEDIA','TXT_KEY_BUILDING_AXWWP317_HELP','TXT_KEY_BUILDING_AXWWP317_QUOTE','BUILDINGCLASS_AXWWP317',1,-1,100,'AXWWP2_ATLAS',17,'axwwp317.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP317','TXT_KEY_BUILDING_AXWWP317','BUILDING_AXWWP317',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP317'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP317');

UPDATE Buildings SET
	Cost = 400,
	FreeBuildingThisCity = 'BUILDINGCLASS_MOSQUE',
	SpecialistType = 'SPECIALIST_SCIENTIST',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_EDUCATION',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP317';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP317','YIELD_SCIENCE',2), ('BUILDING_AXWWP317','YIELD_FAITH',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP317','Mosque of Uqba'),
('TXT_KEY_BUILDING_AXWWP317_PEDIA','The Great Mosque of Kairouan, also known as the Mosque of Uqba is a mosque in Tunisia, situated in the UNESCO World Heritage town of Kairouan.[NEWLINE][NEWLINE]The university, consisting of scholars who taught in the mosque, was a centre of education both in Islamic thought and in the secular sciences.[NEWLINE][NEWLINE]The Great Mosque of Kairouan is one of the most impressive and largest Islamic monuments in North Africa.'),
('TXT_KEY_BUILDING_AXWWP317_QUOTE','[NEWLINE]"Teachers open the door, but you must enter by yourself."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP317_HELP','Free Mosque in the city.');




-- AXWWP318

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP318','TXT_KEY_BUILDING_AXWWP318','TXT_KEY_BUILDING_AXWWP318_PEDIA','TXT_KEY_BUILDING_AXWWP318_HELP','TXT_KEY_BUILDING_AXWWP318_QUOTE','BUILDINGCLASS_AXWWP318',1,-1,100,'AXWWP2_ATLAS',18,'axwwp318.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP318','TXT_KEY_BUILDING_AXWWP318','BUILDING_AXWWP318',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP318'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP318');

UPDATE Buildings SET
	Cost = 400,
	Hill = 1,
	FreeBuildingThisCity = 'BUILDINGCLASS_MONASTERY',
	SpecialistType = 'SPECIALIST_WRITER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_EDUCATION',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP318';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP318','YIELD_FAITH',3), ('BUILDING_AXWWP318','YIELD_CULTURE',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP318','Pannonhalma Archabbey'),
('TXT_KEY_BUILDING_AXWWP318_PEDIA','The Benedictine Pannonhalma Archabbey is a medieval building in Pannonhalma, one of the oldest historical monuments in Hungary. Founded in 996, it is located near the town, on top of a hill.[NEWLINE][NEWLINE]This is the second largest territorial abbey in the world, after the one in Monte Cassino.'),
('TXT_KEY_BUILDING_AXWWP318_QUOTE','[NEWLINE]"Knowledge is knowing tomato is a fruit and wisdom is not putting tomatoes in a fruit salad."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP318_HELP','Free Monastery in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');




-- AXWWP319

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP319','TXT_KEY_BUILDING_AXWWP319','TXT_KEY_BUILDING_AXWWP319_PEDIA','TXT_KEY_BUILDING_AXWWP319_HELP','TXT_KEY_BUILDING_AXWWP319_QUOTE','BUILDINGCLASS_AXWWP319',1,-1,100,'AXWWP2_ATLAS',19,'axwwp319.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP319','TXT_KEY_BUILDING_AXWWP319','BUILDING_AXWWP319',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP319'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP319');

UPDATE Buildings SET
	Cost = 400,
	Hill = 1,
	FreeBuildingThisCity = 'BUILDINGCLASS_MONASTERY',
	PrereqTech = 'TECH_EDUCATION',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP319';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP319','YIELD_FAITH',4), ('BUILDING_AXWWP319','YIELD_CULTURE',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP319','Haghpat Monastery'),
('TXT_KEY_BUILDING_AXWWP319_PEDIA','Haghpat Monastery is a medieval monastery complex in Haghpat, Armenia.[NEWLINE][NEWLINE]Described as a "masterpiece of religious architecture and a major center of learning in the Middle Ages", Haghpat monastery, together with Sanahin monastery, was placed on UNESCO''s World Heritage List in 1996.'),
('TXT_KEY_BUILDING_AXWWP319_QUOTE','[NEWLINE]"Your faith can move mountains and your doubt can create them."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP319_HELP','Free Monastery in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');




-- AXWWP320

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP320','TXT_KEY_BUILDING_AXWWP320','TXT_KEY_BUILDING_AXWWP320_PEDIA','TXT_KEY_BUILDING_AXWWP320_HELP','TXT_KEY_BUILDING_AXWWP320_QUOTE','BUILDINGCLASS_AXWWP320',1,-1,100,'AXWWP2_ATLAS',20,'axwwp320.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP320','TXT_KEY_BUILDING_AXWWP320','BUILDING_AXWWP320',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP320'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP320');

UPDATE Buildings SET
	Cost = 400,
	FreeBuildingThisCity = 'BUILDINGCLASS_UNIVERSITY',
	FoodKept = 20,
	GreatWorkCount = 2,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_LITERATURE',
	SpecialistCount = 1,
	SpecialistType = 'SPECIALIST_WRITER',
	PrereqTech = 'TECH_EDUCATION',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP320';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP320','YIELD_SCIENCE',4), ('BUILDING_AXWWP320','YIELD_FAITH',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP320','House of Wisdom'),
('TXT_KEY_BUILDING_AXWWP320_PEDIA','The House of Wisdom in Baghdad was a library, translation and educational centre from the 9th to 13th centuries.[NEWLINE][NEWLINE]Works on astrology, mathematics, agriculture, medicine, and philosophy were translated. Drawing on Persian, Indian and Greek texts—including those of Pythagoras, Plato, Aristotle, Hippocrates, Euclid, Plotinus, Galen, Sushruta, Charaka, Aryabhata and Brahmagupta—the scholars accumulated a great collection of knowledge in the world, and built on it through their own discoveries.[NEWLINE][NEWLINE]The House was an unrivalled centre for the study of humanities and for sciences, including mathematics, astronomy, medicine, chemistry, zoology and geography.[NEWLINE][NEWLINE]Baghdad was known as the world''s richest city and centre for intellectual development of the time, and had a population of over a million, the largest in its time.'),
('TXT_KEY_BUILDING_AXWWP320_QUOTE','[NEWLINE]"Thank you for sending me a copy of your book; I''ll waste no time reading it."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP320_HELP','+20% [ICON_FOOD] Food is carried over after a new citizen is born. Free Univeristy in the city.');




-- AXWWP321

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP321','TXT_KEY_BUILDING_AXWWP321','TXT_KEY_BUILDING_AXWWP321_PEDIA','TXT_KEY_BUILDING_AXWWP321_HELP','TXT_KEY_BUILDING_AXWWP321_QUOTE','BUILDINGCLASS_AXWWP321',1,-1,100,'AXWWP2_ATLAS',21,'axwwp321.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP321','TXT_KEY_BUILDING_AXWWP321','BUILDING_AXWWP321',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP321'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP321');

UPDATE Buildings SET
	Cost = 400,
	Defense = 500,
	River = 1,
	FreeBuildingThisCity = 'BUILDINGCLASS_CASTLE',
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_CHIVALRY',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP321';

INSERT INTO Building_UnitCombatFreeExperiences (BuildingType, UnitCombatType, Experience) VALUES ('BUILDING_AXWWP321','UNITCOMBAT_MOUNTED',15);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP321','Malbork Castle'),
('TXT_KEY_BUILDING_AXWWP321_PEDIA','The Castle of the Teutonic Order in Malbork was built in the 13th century in Prussia and is currently located near the town of Malbork, Poland. It is the largest castle in the world measured by land area.[NEWLINE][NEWLINE]The castle is a classic example of a medieval fortress and, on its completion in 1406, was the world''s largest brick castle.'),
('TXT_KEY_BUILDING_AXWWP321_QUOTE','[NEWLINE]"It is difficult to escape being a peasant because resistance is feudal."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP321_HELP','+15 [ICON_WAR] XP for mounted units produced in the city. Free Castle in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires river.[ENDCOLOR]');




-- AXWWP322

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP322','TXT_KEY_BUILDING_AXWWP322','TXT_KEY_BUILDING_AXWWP322_PEDIA','TXT_KEY_BUILDING_AXWWP322_HELP','TXT_KEY_BUILDING_AXWWP322_QUOTE','BUILDINGCLASS_AXWWP322',1,-1,100,'AXWWP2_ATLAS',22,'axwwp322.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP322','TXT_KEY_BUILDING_AXWWP322','BUILDING_AXWWP322',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP322'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP322');

UPDATE Buildings SET
	Cost = 400,
	Defense = 250,
	Hill = 1,
	FreeBuildingThisCity = 'BUILDINGCLASS_CASTLE',
	SpecialistCount = 1,
	SpecialistType = 'SPECIALIST_MERCHANT',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_CHIVALRY',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP322';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP322','YIELD_PRODUCTION',5), ('BUILDING_AXWWP322','YIELD_CULTURE',3);

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP322','RESOURCE_SILK','YIELD_GOLD',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP322','Jaisalmer Fort'),
('TXT_KEY_BUILDING_AXWWP322_PEDIA','Jaisalmer Fort is situated in the city of Jaisalmer, in the Indian state of Rajasthan. It is believed to be one of the very few (perhaps the only) "living forts" in the world, as nearly one fourth of the old city''s population still resides within the fort.'),
('TXT_KEY_BUILDING_AXWWP322_QUOTE','[NEWLINE]"With the past, I have nothing to do; nor with the future. I live now."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP322_HELP','Free Castle in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');




-- AXWWP323

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP323','TXT_KEY_BUILDING_AXWWP323','TXT_KEY_BUILDING_AXWWP323_PEDIA','TXT_KEY_BUILDING_AXWWP323_HELP','TXT_KEY_BUILDING_AXWWP323_QUOTE','BUILDINGCLASS_AXWWP323',1,-1,100,'AXWWP2_ATLAS',23,'axwwp323.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP323','TXT_KEY_BUILDING_AXWWP323','BUILDING_AXWWP323',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP323'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP323');

UPDATE Buildings SET
	Cost = 400,
	Defense = 250,
	Hill = 1,
	Happiness = 2,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT',
	GreatWorkCount = 2,
	SpecialistCount = 1,
	FreeBuildingThisCity = 'BUILDINGCLASS_CASTLE',
	SpecialistCount = 1,
	SpecialistType = 'SPECIALIST_MERCHANT',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_CHIVALRY',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP323';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP323','YIELD_CULTURE',6);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP323','Wawel Castle'),
('TXT_KEY_BUILDING_AXWWP323_PEDIA','The Wawel Castle is a castle residency located in central Krakow, Poland.[NEWLINE][NEWLINE]The castle, being one of the largest in Poland, represents nearly all European architectural styles of medieval, renaissance and baroque periods.[NEWLINE][NEWLINE]For centuries the residence of the kings of Poland and the symbol of Polish statehood, the Castle is now one of the country’s premier art museums.'),
('TXT_KEY_BUILDING_AXWWP323_QUOTE','[NEWLINE]"A field of clay touched by the genius of man becomes a castle."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP323_HELP','Free Castle in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');




-- AXWWP324

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP324','TXT_KEY_BUILDING_AXWWP324','TXT_KEY_BUILDING_AXWWP324_PEDIA','TXT_KEY_BUILDING_AXWWP324_HELP','TXT_KEY_BUILDING_AXWWP324_QUOTE','BUILDINGCLASS_AXWWP324',1,-1,100,'AXWWP2_ATLAS',24,'axwwp324.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP324','TXT_KEY_BUILDING_AXWWP324','BUILDING_AXWWP324',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP324'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP324');

UPDATE Buildings SET
	Cost = 400,
	Hill = 1,
	Happiness = 2,
	PrereqTech = 'TECH_MACHINERY',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP324';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP324','YIELD_FOOD',6);

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP324','RESOURCE_WHEAT','YIELD_PRODUCTION',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP324','Honghe Hani Rice Terraces'),
('TXT_KEY_BUILDING_AXWWP324_PEDIA','The Honghe Hani Rice Terraces are the system of Hani rice-growing terraces located in Honghe Prefecture, Yuanyang County, Yunnan, China.[NEWLINE][NEWLINE]The terraces'' history spans around 1,200 years.'),
('TXT_KEY_BUILDING_AXWWP324_QUOTE','[NEWLINE]"Talk doesn''t cook rice."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP324_HELP','+2 [ICON_PRODUCTION] Production from [ICON_RES_WHEAT] Wheat.[NEWLINE][COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');




-- AXWWP325

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP325','TXT_KEY_BUILDING_AXWWP325','TXT_KEY_BUILDING_AXWWP325_PEDIA','TXT_KEY_BUILDING_AXWWP325_HELP','TXT_KEY_BUILDING_AXWWP325_QUOTE','BUILDINGCLASS_AXWWP325',1,-1,100,'AXWWP2_ATLAS',25,'axwwp325.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP325','TXT_KEY_BUILDING_AXWWP325','BUILDING_AXWWP325',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP325'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP325');

UPDATE Buildings SET
	Cost = 400,
	Happiness = 1,
	PrereqTech = 'TECH_MACHINERY',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP325';

INSERT INTO Building_LocalResourceAnds (BuildingType, ResourceType) VALUES ('BUILDING_AXWWP325','RESOURCE_SALT');
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP325','YIELD_GOLD',5);

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP325','RESOURCE_SALT','YIELD_PRODUCTION',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP325','Wieliczka Salt Mine'),
('TXT_KEY_BUILDING_AXWWP325_PEDIA','The Wieliczka Salt Mine located in the town of Wieliczka in southern Poland, lies within the Krakow metropolitan area.[NEWLINE][NEWLINE]Opened in the 13th century, the mine produced table salt continuously until 2007, as one of the world''s oldest salt mines in operation.'),
('TXT_KEY_BUILDING_AXWWP325_QUOTE','[NEWLINE]"I had dinner once with a chess master in a restaurant with checked tablecloths. It took him two hours to pass me the salt."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP325_HELP','+2 [ICON_PRODUCTION] Production from [ICON_RES_SALT] Salt.[NEWLINE][COLOR_LIGHT_GREY]Requires salt resource.[ENDCOLOR]');




-- AXWWP326

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP326','TXT_KEY_BUILDING_AXWWP326','TXT_KEY_BUILDING_AXWWP326_PEDIA','TXT_KEY_BUILDING_AXWWP326_HELP','TXT_KEY_BUILDING_AXWWP326_QUOTE','BUILDINGCLASS_AXWWP326',1,-1,100,'AXWWP2_ATLAS',26,'axwwp326.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP326','TXT_KEY_BUILDING_AXWWP326','BUILDING_AXWWP326',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP326'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP326');

UPDATE Buildings SET
	Cost = 400,
	River = 1,
	PrereqTech = 'TECH_MACHINERY',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP326';

INSERT INTO Building_RiverPlotYieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP326','YIELD_GOLD',1);
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP326','YIELD_PRODUCTION',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP326','Zuraw'),
('TXT_KEY_BUILDING_AXWWP326_PEDIA','Zuraw was a medieval port crane for mounting masts and lifting heavy cargo in the former Hanse town of Gdansk.[NEWLINE][NEWLINE]Constructed in 14 CE, one of the oldest cranes still standing.'),
('TXT_KEY_BUILDING_AXWWP326_QUOTE','[NEWLINE]"Necessity is the mother of invention."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP326_HELP','+1 [ICON_GOLD] Gold from river tiles.[NEWLINE][COLOR_LIGHT_GREY]Requires river.[ENDCOLOR]');




-- AXWWP327

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP327','TXT_KEY_BUILDING_AXWWP327','TXT_KEY_BUILDING_AXWWP327_PEDIA','TXT_KEY_BUILDING_AXWWP327_HELP','TXT_KEY_BUILDING_AXWWP327_QUOTE','BUILDINGCLASS_AXWWP327',1,-1,100,'AXWWP2_ATLAS',27,'axwwp327.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP327','TXT_KEY_BUILDING_AXWWP327','BUILDING_AXWWP327',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP327'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP327');

UPDATE Buildings SET
	Cost = 400,
	Happiness = 1,
	FreeBuildingThisCity = 'BUILDINGCLASS_CASTLE',
	PrereqTech = 'TECH_PHYSICS',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP327';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP327','YIELD_CULTURE',4);

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP327','RESOURCE_DEER','YIELD_FOOD',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP327','Castel del Monte'),
('TXT_KEY_BUILDING_AXWWP327_PEDIA','Castel del Monte (Italian for "Castle of the Mountain") is a 13th-century citadel and castle situated on a hill in Andria in the Apulia region of southeast Italy.[NEWLINE][NEWLINE]The octagonal plan is unusual in castle design. Historians have debated the purpose of the building and it has been suggested that it was intended as a hunting lodge. Another theory is that the octagon is an intermediate symbol between a square (representing the earth) and a circle (representing the sky).'),
('TXT_KEY_BUILDING_AXWWP327_QUOTE','[NEWLINE]"Life''s hard; get a helmet."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP327_HELP','+2 [ICON_FOOD] Food from [ICON_RES_DEER] Deer. Free Castle in the city.');




-- AXWWP328

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP328','TXT_KEY_BUILDING_AXWWP328','TXT_KEY_BUILDING_AXWWP328_PEDIA','TXT_KEY_BUILDING_AXWWP328_HELP','TXT_KEY_BUILDING_AXWWP328_QUOTE','BUILDINGCLASS_AXWWP328',1,-1,100,'AXWWP2_ATLAS',28,'axwwp328.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP328','TXT_KEY_BUILDING_AXWWP328','BUILDING_AXWWP328',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP328'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP328');

UPDATE Buildings SET
	Cost = 400,
	FreeBuildingThisCity = 'BUILDINGCLASS_CATHEDRAL',
	SpecialistType = 'SPECIALIST_ARTIST',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_PHYSICS',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP328';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP328','YIELD_FAITH',3), ('BUILDING_AXWWP328','YIELD_CULTURE',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP328','Roskilde Cathedral'),
('TXT_KEY_BUILDING_AXWWP328_PEDIA','Roskilde Cathedral is a cathedral of the Lutheran Church of Denmark.[NEWLINE][NEWLINE]The first Gothic cathedral to be built of brick, it encouraged the spread of the Brick Gothic style throughout Northern Europe.'),
('TXT_KEY_BUILDING_AXWWP328_QUOTE','[NEWLINE]"A rock pile ceases to be a rock pile the moment a single man contemplates it, bearing within him the image of a cathedral."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP328_HELP','Free Cathedral in the city.');




-- AXWWP329

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP329','TXT_KEY_BUILDING_AXWWP329','TXT_KEY_BUILDING_AXWWP329_PEDIA','TXT_KEY_BUILDING_AXWWP329_HELP','TXT_KEY_BUILDING_AXWWP329_QUOTE','BUILDINGCLASS_AXWWP329',1,-1,100,'AXWWP2_ATLAS',29,'axwwp329.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP329','TXT_KEY_BUILDING_AXWWP329','BUILDING_AXWWP329',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP329'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP329');

UPDATE Buildings SET
	Cost = 400,
	FreeBuildingThisCity = 'BUILDINGCLASS_CASTLE',
	NearbyTerrainRequired = 'TERRAIN_DESERT',
	PrereqTech = 'TECH_PHYSICS',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP329';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP329','YIELD_CULTURE',5);
INSERT INTO Building_FeatureYieldChanges (BuildingType, FeatureType, YieldType, Yield) VALUES ('BUILDING_AXWWP329','FEATURE_OASIS','YIELD_FOOD',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP329','Bahla Fort'),
('TXT_KEY_BUILDING_AXWWP329_PEDIA','Bahla Fort is one of four historic fortresses situated at the foot of the Djebel Akhdar highlands in Oman and the country''s only UNESCO-listed fort added in 1987.[NEWLINE][NEWLINE]The fort is believed to have been built between the 12th and 15th century by the Banu Nebhan tribe who inhabited the area at the time and were known for controlling the trade of frankincense at the time.'),
('TXT_KEY_BUILDING_AXWWP329_QUOTE','[NEWLINE]"Wealth comes like a turtle, and runs away like a gazelle."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP329_HELP','+2 [ICON_FOOD] Food from Oasis. Free Castle in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires desert.[ENDCOLOR]');




-- AXWWP330

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP330','TXT_KEY_BUILDING_AXWWP330','TXT_KEY_BUILDING_AXWWP330_PEDIA','TXT_KEY_BUILDING_AXWWP330_HELP','TXT_KEY_BUILDING_AXWWP330_QUOTE','BUILDINGCLASS_AXWWP330',1,-1,100,'AXWWP2_ATLAS',30,'axwwp330.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP330','TXT_KEY_BUILDING_AXWWP330','BUILDING_AXWWP330',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP330'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP330');

UPDATE Buildings SET
	Cost = 400,
	Hill = 1,
	River = 1,
	Happiness = 2,
	FreeBuildingThisCity = 'BUILDINGCLASS_CASTLE',
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_STEEL',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP330';

INSERT INTO Building_UnitCombatFreeExperiences (BuildingType, UnitCombatType, Experience) VALUES ('BUILDING_AXWWP330','UNITCOMBAT_SIEGE',15);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP330','Alcazar of Segovia'),
('TXT_KEY_BUILDING_AXWWP330_PEDIA','The Alcazar of Segovia (literally, "Segovia Fortress") is an alcazar located in the city of Segovia (Castile and Leon, Spain).[NEWLINE][NEWLINE]The Alcazar was originally built as a fortress but has served as a royal palace, a state prison, a Royal Artillery College and a military academy since then.'),
('TXT_KEY_BUILDING_AXWWP330_QUOTE','[NEWLINE]"Nights through dreams tell the myths forgotten by the day."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP330_HELP','+15 [ICON_WAR] XP for siege units produced in the city. Free Castle in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires hill and river.[ENDCOLOR]');




-- AXWWP331

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP331','TXT_KEY_BUILDING_AXWWP331','TXT_KEY_BUILDING_AXWWP331_PEDIA','TXT_KEY_BUILDING_AXWWP331_HELP','TXT_KEY_BUILDING_AXWWP331_QUOTE','BUILDINGCLASS_AXWWP331',1,-1,100,'AXWWP2_ATLAS',31,'axwwp331.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP331','TXT_KEY_BUILDING_AXWWP331','BUILDING_AXWWP331',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP331'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP331');

UPDATE Buildings SET
	Cost = 400,
	Hill = 1,
	PrereqTech = 'TECH_STEEL',
	MaxStartEra = 'ERA_RENAISSANCE'
WHERE Type = 'BUILDING_AXWWP331';

INSERT INTO Building_LocalResourceOrs (BuildingType, ResourceType) VALUES 
('BUILDING_AXWWP331','RESOURCE_COPPER'), ('BUILDING_AXWWP331','RESOURCE_SILVER');
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP331','YIELD_GOLD',6);

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP331','RESOURCE_COPPER','YIELD_PRODUCTION',3),
('BUILDING_AXWWP331','RESOURCE_SILVER','YIELD_PRODUCTION',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP331','Mines of Rammelsberg'),
('TXT_KEY_BUILDING_AXWWP331_PEDIA','The Rammelsberg is a mountain, 635 metres (2,083 ft) high, on the northern edge of the Harz range, south of the historic town of Goslar in the North German state of Lower Saxony.[NEWLINE][NEWLINE]The mountain is the location of an important silver, copper, and lead mine, the only mine which had been working continuously for over 1,000 years when it finally closed in 1988.'),
('TXT_KEY_BUILDING_AXWWP331_QUOTE','[NEWLINE]"Bell, book and candle shall not drive me back,[NEWLINE]When gold and silver becks me to come on."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP331_HELP','+3 [ICON_PRODUCTION] Production from [ICON_RES_COPPER] Copper and [ICON_RES_SILVER] Silver.[NEWLINE][COLOR_LIGHT_GREY]Requires hill and silver or copper resource.[ENDCOLOR]');
