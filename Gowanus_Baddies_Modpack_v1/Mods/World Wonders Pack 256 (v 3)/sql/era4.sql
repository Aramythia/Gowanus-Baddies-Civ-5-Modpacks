-- AXWWP432

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP432','TXT_KEY_BUILDING_AXWWP432','TXT_KEY_BUILDING_AXWWP432_PEDIA','TXT_KEY_BUILDING_AXWWP432_HELP','TXT_KEY_BUILDING_AXWWP432_QUOTE','BUILDINGCLASS_AXWWP432',1,-1,100,'AXWWP2_ATLAS',32,'axwwp432.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP432','TXT_KEY_BUILDING_AXWWP432','BUILDING_AXWWP432',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP432'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP432');

UPDATE Buildings SET
	Cost = 500,
	Hill = 1,
	SpecialistCount = 1,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	GreatPeopleRateChange = 1,
	FreeBuildingThisCity = 'BUILDINGCLASS_OBSERVATORY',
	PrereqTech = 'TECH_ASTRONOMY',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP432';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP432','YIELD_SCIENCE',5);
INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP432','YIELD_SCIENCE',15);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP432','Ulugh Beg Observatory'),
('TXT_KEY_BUILDING_AXWWP432_PEDIA','The Ulugh Beg Observatory is an observatory in Samarkand, Uzbekistan.[NEWLINE][NEWLINE]Built in the 1420s by the Timurid astronomer Ulugh Beg, it is considered by scholars to have been one of the finest observatories in the Islamic world.'),
('TXT_KEY_BUILDING_AXWWP432_QUOTE','[NEWLINE]"Stars can''t shine without darkness."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP432_HELP','Free observatory in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');




-- AXWWP433

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP433','TXT_KEY_BUILDING_AXWWP433','TXT_KEY_BUILDING_AXWWP433_PEDIA','TXT_KEY_BUILDING_AXWWP433_HELP','TXT_KEY_BUILDING_AXWWP433_QUOTE','BUILDINGCLASS_AXWWP433',1,-1,100,'AXWWP2_ATLAS',33,'axwwp433.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP433','TXT_KEY_BUILDING_AXWWP433','BUILDING_AXWWP433',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP433'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP433');

UPDATE Buildings SET
	Cost = 500,
	Water = 1, MinAreaSize = 10,
	Flat = 1,
	FreeBuildingThisCity = 'BUILDINGCLASS_HARBOR',
	PrereqTech = 'TECH_ASTRONOMY',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP433';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP433','YIELD_PRODUCTION',5), ('BUILDING_AXWWP433','YIELD_GOLD',5);

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP433','RESOURCE_FISH','YIELD_FOOD',2),
('BUILDING_AXWWP433','RESOURCE_WHALE','YIELD_FOOD',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP433','Red Bay'),
('TXT_KEY_BUILDING_AXWWP433_PEDIA','Red Bay is a fishing village in Labrador, notable as one of the most precious underwater archaeological sites in the Americas. Between 1530 and the early 17th century, it was a major Basque whaling area.[NEWLINE][NEWLINE]Several whaling ships, both large galleons and small chalupas, sunk there, and their discovery led to the designation of Red Bay in 2013 as a UNESCO World Heritage Site.'),
('TXT_KEY_BUILDING_AXWWP433_QUOTE','[NEWLINE]"A smooth sea never made a skillful sailor."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP433_HELP','+2 [ICON_FOOD] Food from [ICON_RES_FISH] Fish and [ICON_RES_WHALE] Whale. Free harbor in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires coast and flat area.[ENDCOLOR]');




-- AXWWP435

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP435','TXT_KEY_BUILDING_AXWWP435','TXT_KEY_BUILDING_AXWWP435_PEDIA','TXT_KEY_BUILDING_AXWWP435_HELP','TXT_KEY_BUILDING_AXWWP435_QUOTE','BUILDINGCLASS_AXWWP435',1,-1,100,'AXWWP2_ATLAS',35,'axwwp435.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP435','TXT_KEY_BUILDING_AXWWP435','BUILDING_AXWWP435',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP435'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP435');

UPDATE Buildings SET
	Cost = 500,
	SpecialistCount = 2,
	SpecialistType = 'SPECIALIST_ARTIST',
	GreatPeopleRateChange = 2,
	FreeBuildingThisCity = 'BUILDINGCLASS_OPERA_HOUSE',
	PrereqTech = 'TECH_ACOUSTICS',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP435';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES 
('BUILDING_AXWWP435','YIELD_CULTURE',4), ('BUILDING_AXWWP435','YIELD_GOLD',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP435','Margravial Opera House'),
('TXT_KEY_BUILDING_AXWWP435_PEDIA','The Margravial Opera House is a Baroque opera house in the town of Bayreuth, Germany, built between 1744 and 1748. It is one of Europe''s few surviving theatres of the period and has been extensively restored.'),
('TXT_KEY_BUILDING_AXWWP435_QUOTE','[NEWLINE]"Opera is when a guy gets stabbed in the back and, instead of bleeding, he sings."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP435_HELP','Free opera in the city.');




-- AXWWP436

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP436','TXT_KEY_BUILDING_AXWWP436','TXT_KEY_BUILDING_AXWWP436_PEDIA','TXT_KEY_BUILDING_AXWWP436_HELP','TXT_KEY_BUILDING_AXWWP436_QUOTE','BUILDINGCLASS_AXWWP436',1,-1,100,'AXWWP2_ATLAS',36,'axwwp436.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP436','TXT_KEY_BUILDING_AXWWP436','BUILDING_AXWWP436',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP436'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP436');

UPDATE Buildings SET
	Cost = 500,
	Happiness = 2,
	SpecialistCount = 1,
	SpecialistType = 'SPECIALIST_MUSICIAN',
	GreatPeopleRateChange = 1,
	GreatWorkCount = 1,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_MUSIC',
	FreeBuildingThisCity = 'BUILDINGCLASS_OPERA_HOUSE',
	PrereqTech = 'TECH_ACOUSTICS',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP436';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP436','YIELD_CULTURE',6);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP436','La Scala'),
('TXT_KEY_BUILDING_AXWWP436_PEDIA','La Scala, abbreviation in Italian language for the official name Teatro alla Scala, is an opera house in Milan, Italy.[NEWLINE][NEWLINE]Most of Italy''s greatest operatic artists, and many of the finest singers from around the world, have appeared at La Scala.[NEWLINE][NEWLINE]The theatre is regarded as one of the leading opera and ballet theatres in the world and is home to the La Scala Theatre Chorus, La Scala Theatre Ballet and La Scala Theatre Orchestra.'),
('TXT_KEY_BUILDING_AXWWP436_QUOTE','[NEWLINE]"When you''re happy you enjoy the music, when you''re sad you understand the lyrics."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP436_HELP','Free opera in the city.');




-- AXWWP437

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP437','TXT_KEY_BUILDING_AXWWP437','TXT_KEY_BUILDING_AXWWP437_PEDIA','TXT_KEY_BUILDING_AXWWP437_HELP','TXT_KEY_BUILDING_AXWWP437_QUOTE','BUILDINGCLASS_AXWWP437',1,-1,100,'AXWWP2_ATLAS',37,'axwwp437.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP437','TXT_KEY_BUILDING_AXWWP437','BUILDING_AXWWP437',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP437'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP437');

UPDATE Buildings SET
	Cost = 500,
	Flat = 1,
	Happiness = 4,
	GreatWorkCount = 3,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT',
	PrereqTech = 'TECH_ACOUSTICS',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP437';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP437','YIELD_CULTURE',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP437','Peterhof Palace'),
('TXT_KEY_BUILDING_AXWWP437_PEDIA','The Peterhof Palace is a series of palaces and gardens located in Petergof, Saint Petersburg, Russia, laid out on the orders of Peter the Great.[NEWLINE][NEWLINE]These palaces and gardens are sometimes referred as the "Russian Versailles". The palace-ensemble along with the city center is recognized as a UNESCO World Heritage Site.'),
('TXT_KEY_BUILDING_AXWWP437_QUOTE','[NEWLINE]"I''d rather live in a cave with a view of a palace than live in a palace with a view of a cave."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP437_HELP','[COLOR_LIGHT_GREY]Requires flat ground.[ENDCOLOR]');




-- AXWWP438

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP438','TXT_KEY_BUILDING_AXWWP438','TXT_KEY_BUILDING_AXWWP438_PEDIA','TXT_KEY_BUILDING_AXWWP438_HELP','TXT_KEY_BUILDING_AXWWP438_QUOTE','BUILDINGCLASS_AXWWP438',1,-1,100,'AXWWP2_ATLAS',38,'axwwp438.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP438','TXT_KEY_BUILDING_AXWWP438','BUILDING_AXWWP438',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP438'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP438');

UPDATE Buildings SET
	Cost = 500,
	Water = 1, MinAreaSize = 10,
	NumTradeRouteBonus = 1,
	SpecialistCount = 1,
	SpecialistType = 'SPECIALIST_MERCHANT',
	GreatPeopleRateChange = 1,
	FreeBuildingThisCity = 'BUILDINGCLASS_CASTLE',
	PrereqTech = 'TECH_BANKING',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP438';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP438','YIELD_GOLD',6);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP438','Elmina Castle'),
('TXT_KEY_BUILDING_AXWWP438_PEDIA','Elmina Castle was erected by the Portuguese in 1482 as Sao Jorge da Mina (St. George of the Mine) Castle, also known simply as Mina or Feitoria da Mina) in present-day Elmina, Ghana (formerly the Gold Coast).[NEWLINE][NEWLINE]It was the first trading post built on the Gulf of Guinea, so is the oldest European building in existence south of the Sahara.'),
('TXT_KEY_BUILDING_AXWWP438_QUOTE','[NEWLINE]"The age of chivalry has gone; the age of humanity has come."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP438_HELP','Additional trade route. Free castle in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP439

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP439','TXT_KEY_BUILDING_AXWWP439','TXT_KEY_BUILDING_AXWWP439_PEDIA','TXT_KEY_BUILDING_AXWWP439_HELP','TXT_KEY_BUILDING_AXWWP439_QUOTE','BUILDINGCLASS_AXWWP439',1,-1,100,'AXWWP2_ATLAS',39,'axwwp439.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP439','TXT_KEY_BUILDING_AXWWP439','BUILDING_AXWWP439',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP439'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP439');

UPDATE Buildings SET
	Cost = 550,
	SpecialistCount = 1,
	SpecialistType = 'SPECIALIST_MERCHANT',
	GreatPeopleRateChange = 1,
	FreeBuilding = 'BUILDINGCLASS_BANK',
	FreeBuildingThisCity = 'BUILDINGCLASS_STOCK_EXCHANGE',
	PrereqTech = 'TECH_BANKING',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP439';

INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP439','YIELD_GOLD',30);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP439','Borsen'),
('TXT_KEY_BUILDING_AXWWP439_PEDIA','Borsen is a 17th-century stock exchange in the center of Copenhagen.[NEWLINE][NEWLINE]Built under the reign of Christian IV in 1619–1640, the building is considered a leading example of the Dutch Renaissance style in Denmark.'),
('TXT_KEY_BUILDING_AXWWP439_QUOTE','[NEWLINE]"The poor have little - beggars none; the rich too much - enough, not one!"[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP439_HELP','Free stock exchange in the city. Free bank in every city.');




-- AXWWP440

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP440','TXT_KEY_BUILDING_AXWWP440','TXT_KEY_BUILDING_AXWWP440_PEDIA','TXT_KEY_BUILDING_AXWWP440_HELP','TXT_KEY_BUILDING_AXWWP440_QUOTE','BUILDINGCLASS_AXWWP440',1,-1,100,'AXWWP2_ATLAS',40,'axwwp440.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP440','TXT_KEY_BUILDING_AXWWP440','BUILDING_AXWWP440',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP440'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP440');

UPDATE Buildings SET
	Cost = 500,
	Flat = 1,
	Happiness = 4,
	GreatWorkCount = 2,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT',
	PrereqTech = 'TECH_BANKING',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP440';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP440','YIELD_CULTURE',4);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP440','Chateau de Chambord'),
('TXT_KEY_BUILDING_AXWWP440_PEDIA','The Chateau de Chambord at Chambord, Loir-et-Cher, France, is one of the most recognisable chateaux in the world because of its very distinctive French Renaissance architecture which blends traditional French medieval forms with classical Renaissance structures.[NEWLINE][NEWLINE]Chambord is the largest chateau in the Loire Valley.'),
('TXT_KEY_BUILDING_AXWWP440_QUOTE','[NEWLINE]"A man''s a man. But when you see a king, you see the work of many thousand men."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP440_HELP','[COLOR_LIGHT_GREY]Requires flat ground.[ENDCOLOR]');




-- AXWWP434

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP434','TXT_KEY_BUILDING_AXWWP434','TXT_KEY_BUILDING_AXWWP434_PEDIA','TXT_KEY_BUILDING_AXWWP434_HELP','TXT_KEY_BUILDING_AXWWP434_QUOTE','BUILDINGCLASS_AXWWP434',1,-1,100,'AXWWP2_ATLAS',34,'axwwp434.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP434','TXT_KEY_BUILDING_AXWWP434','BUILDING_AXWWP434',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP434'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP434');

UPDATE Buildings SET
	Cost = 500,
	Flat = 1,
	GreatWorkCount = 2,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT',
	PrereqTech = 'TECH_PRINTING_PRESS',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP434';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP434','YIELD_CULTURE',6);

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield) VALUES
('BUILDING_AXWWP434','RESOURCE_TRUFFLES','YIELD_FOOD',1),
('BUILDING_AXWWP434','RESOURCE_TRUFFLES','YIELD_GOLD',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP434','Palace of Fontainebleau'),
('TXT_KEY_BUILDING_AXWWP434_PEDIA','The Palace of Fontainebleau, located southeast of the center of Paris, in the commune of Fontainebleau, is one of the largest French royal chateaux.[NEWLINE][NEWLINE]The medieval castle and subsequent palace served as a residence for the French monarchs from Louis VII to Napoleon III.'),
('TXT_KEY_BUILDING_AXWWP434_QUOTE','[NEWLINE]"In a democracy it''s your vote that counts; in feudalism, it''s your count that votes."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP434_HELP','+2 [ICON_GOLD] Gold and +1 [ICON_FOOD] Food from [ICON_RES_TRUFFLES] Truffles.[NEWLINE][COLOR_LIGHT_GREY]Requires flat ground.[ENDCOLOR]');




-- AXWWP441

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP441','TXT_KEY_BUILDING_AXWWP441','TXT_KEY_BUILDING_AXWWP441_PEDIA','TXT_KEY_BUILDING_AXWWP441_HELP','TXT_KEY_BUILDING_AXWWP441_QUOTE','BUILDINGCLASS_AXWWP441',1,-1,100,'AXWWP2_ATLAS',41,'axwwp441.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP441','TXT_KEY_BUILDING_AXWWP441','BUILDING_AXWWP441',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP441'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP441');

UPDATE Buildings SET
	Cost = 500,
	SpecialistType = 'SPECIALIST_SCIENTIST',
	GreatPeopleRateChange = 2,
	GreatWorkCount = 2,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_LITERATURE',
	FreeBuildingThisCity = 'BUILDINGCLASS_LIBRARY',
	PrereqTech = 'TECH_PRINTING_PRESS',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP441';

INSERT INTO Building_YieldChangesPerPop (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP441','YIELD_SCIENCE',50);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP441','Trinity College Library'),
('TXT_KEY_BUILDING_AXWWP441_PEDIA','The Library of Trinity College Dublin serves Trinity College and the University of Dublin. It is the largest library in Ireland and, as a legal deposit or "copyright library", it has rights to receive material published in the Republic of Ireland free of charge; it is also the only Irish library to hold such rights for the United Kingdom.[NEWLINE][NEWLINE]The Library is the permanent home to the famous Book of Kells.'),
('TXT_KEY_BUILDING_AXWWP441_QUOTE','[NEWLINE]"There are three rules for writing a novel. Unfortunately, no one knows what they are."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP441_HELP','+1 [ICON_RESEARCH] Science per 2 [ICON_CITIZEN] Citizens in the city. Free library in the city.');




-- AXWWP442

INSERT INTO Buildings (Type, Description, Civilopedia, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP442','TXT_KEY_BUILDING_AXWWP442','TXT_KEY_BUILDING_AXWWP442_PEDIA','TXT_KEY_BUILDING_AXWWP442_QUOTE','BUILDINGCLASS_AXWWP442',1,-1,100,'AXWWP2_ATLAS',42,'axwwp442.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP442','TXT_KEY_BUILDING_AXWWP442','BUILDING_AXWWP442',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP442'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP442');

UPDATE Buildings SET
	Cost = 500,
	CultureRateModifier = 20,
	SpecialistType = 'SPECIALIST_WRITER',
	GreatPeopleRateChange = 1,
	GreatWorkCount = 2,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_LITERATURE',
	PrereqTech = 'TECH_PRINTING_PRESS',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP442';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP442','Biblioteca Marciana'),
('TXT_KEY_BUILDING_AXWWP442_PEDIA','The Biblioteca Nazionale Marciana (English: National Library of St Mark''s) is a library and Renaissance building in Venice, northern Italy.[NEWLINE][NEWLINE]It is one of the earliest surviving public manuscript depositories in the country, holding one of the greatest classical texts collections in the world.'),
('TXT_KEY_BUILDING_AXWWP442_QUOTE','[NEWLINE]"A book is a dream that you hold in your hands."[NEWLINE]');



-- AXWWP443

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP443','TXT_KEY_BUILDING_AXWWP443','TXT_KEY_BUILDING_AXWWP443_PEDIA','TXT_KEY_BUILDING_AXWWP443_HELP','TXT_KEY_BUILDING_AXWWP443_QUOTE','BUILDINGCLASS_AXWWP443',1,-1,100,'AXWWP2_ATLAS',43,'axwwp443.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP443','TXT_KEY_BUILDING_AXWWP443','BUILDING_AXWWP443',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP443'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP443');

UPDATE Buildings SET
	Cost = 500,
	Hill = 1,
	Happiness = 5,
	Defense = 250,
	FreeBuildingThisCity = 'BUILDINGCLASS_CASTLE',
	PrereqTech = 'TECH_GUNPOWDER',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP443';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP443','YIELD_CULTURE',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP443','Heidelberg Castle'),
('TXT_KEY_BUILDING_AXWWP443_PEDIA','Heidelberg Castle is a ruin in Germany and landmark of Heidelberg. The castle ruins are among the most important Renaissance structures north of the Alps.'),
('TXT_KEY_BUILDING_AXWWP443_QUOTE','[NEWLINE]"The lofty pine is oftenest shaken by the winds; High towers fall with a heavier crash; And the lightning strikes the highest mountain."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP443_HELP','Free castle in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');




-- AXWWP444

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP444','TXT_KEY_BUILDING_AXWWP444','TXT_KEY_BUILDING_AXWWP444_PEDIA','TXT_KEY_BUILDING_AXWWP444_HELP','TXT_KEY_BUILDING_AXWWP444_QUOTE','BUILDINGCLASS_AXWWP444',1,-1,100,'AXWWP2_ATLAS',44,'axwwp444.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP444','TXT_KEY_BUILDING_AXWWP444','BUILDING_AXWWP444',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP444'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP444');

UPDATE Buildings SET
	Cost = 500,
	Water = 1, MinAreaSize = 10,
	Defense = 250,
	NumTradeRouteBonus = 1,
	PrereqTech = 'TECH_GUNPOWDER',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP444';

INSERT INTO Building_SeaResourceYieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP444','YIELD_GOLD',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP444','Fort San Lorenzo'),
('TXT_KEY_BUILDING_AXWWP444_PEDIA','Attracted to the treasure, pirates began attacking Panama''s coast around 1560. To protect the Atlantic terminus of Las Cruces Trail, Spain built Fort San Lorenzo at the Chagres River''s mouth. From 1587 to 1599, the fortifications evolved into a sea-level battery.'),
('TXT_KEY_BUILDING_AXWWP444_QUOTE','[NEWLINE]"Coffee tastes better if the latrines are dug downstream from an encampment."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP444_HELP','Additional trade route. +1 [ICON_GOLD] Gold from sea resources.[NEWLINE][COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP445

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP445','TXT_KEY_BUILDING_AXWWP445','TXT_KEY_BUILDING_AXWWP445_PEDIA','TXT_KEY_BUILDING_AXWWP445_HELP','TXT_KEY_BUILDING_AXWWP445_QUOTE','BUILDINGCLASS_AXWWP445',1,-1,100,'AXWWP2_ATLAS',45,'axwwp445.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP445','TXT_KEY_BUILDING_AXWWP445','BUILDING_AXWWP445',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP445'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP445');

UPDATE Buildings SET
	Cost = 500,
	Flat = 1,
	Happiness = 5,
	GreatWorkCount = 2,
	GlobalCultureRateModifier = 10,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT',
	FreeBuildingThisCity = 'BUILDINGCLASS_CASTLE',
	PrereqTech = 'TECH_GUNPOWDER',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP445';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP445','Frederiksborg Castle'),
('TXT_KEY_BUILDING_AXWWP445_PEDIA','Frederiksborg Castle is a palatial complex in Hillerod, Denmark.[NEWLINE][NEWLINE]It was built as a royal residence for King Christian IV of Denmark-Norway in the early 17th century, replacing an older castle acquired by Frederick II and becoming the largest Renaissance residence in Scandinavia.'),
('TXT_KEY_BUILDING_AXWWP445_QUOTE','[NEWLINE]"In our fine arts, not imitation, but creation is the aim. The details, the prose of nature, he should omit, and give us only the spirit and splendour."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP445_HELP','+10% [ICON_CULTURE] Culture in every city. Free castle in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires flat ground.[ENDCOLOR]');




-- AXWWP446

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP446','TXT_KEY_BUILDING_AXWWP446','TXT_KEY_BUILDING_AXWWP446_PEDIA','TXT_KEY_BUILDING_AXWWP446_HELP','TXT_KEY_BUILDING_AXWWP446_QUOTE','BUILDINGCLASS_AXWWP446',1,-1,100,'AXWWP2_ATLAS',46,'axwwp446.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP446','TXT_KEY_BUILDING_AXWWP446','BUILDING_AXWWP446',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP446'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP446');

UPDATE Buildings SET
	Cost = 500,
	FreshWater = 1,
	Happiness = 3,
	GreatWorkCount = 1,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT',
	PrereqTech = 'TECH_GUNPOWDER',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP446';

INSERT INTO Building_LakePlotYieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP446','YIELD_CULTURE',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP446','Schwerin Palace'),
('TXT_KEY_BUILDING_AXWWP446_PEDIA','Schwerin Palace, or Schwerin Castle, is a palatial schloss located in the city of Schwerin, the capital of Mecklenburg-Vorpommern state, Germany.[NEWLINE][NEWLINE]It is situated on an island in the city''s main lake, the Schweriner See.[NEWLINE][NEWLINE]For centuries the palace was the home of the dukes and grand dukes of Mecklenburg and later Mecklenburg-Schwerin.'),
('TXT_KEY_BUILDING_AXWWP446_QUOTE','[NEWLINE]"Happiness is like those palaces in fairy tales whose gates are guarded by dragons: we must fight in order to conquer it."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP446_HELP','+1 [ICON_CULTURE] Culture from lake tiles.[NEWLINE][COLOR_LIGHT_GREY]Requires fresh water.[ENDCOLOR]');




-- AXWWP447

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP447','TXT_KEY_BUILDING_AXWWP447','TXT_KEY_BUILDING_AXWWP447_PEDIA','TXT_KEY_BUILDING_AXWWP447_HELP','TXT_KEY_BUILDING_AXWWP447_QUOTE','BUILDINGCLASS_AXWWP447',1,-1,100,'AXWWP2_ATLAS',47,'axwwp447.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP447','TXT_KEY_BUILDING_AXWWP447','BUILDING_AXWWP447',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP447'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP447');

UPDATE Buildings SET
	Cost = 625,
	Water = 1, MinAreaSize = 10,
	Defense = 250,
	Happiness = 2,
	GreatWorkCount = 1,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT',
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	FreeBuildingThisCity = 'BUILDINGCLASS_CASTLE',
	PrereqTech = 'TECH_NAVIGATION',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP447';

INSERT INTO Building_UnitCombatFreeExperiences (BuildingType, UnitCombatType, Experience) VALUES 
('BUILDING_AXWWP321','UNITCOMBAT_NAVALMELEE',15), ('BUILDING_AXWWP321','UNITCOMBAT_NAVALRANGED',15);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP447','Suomenlinna'),
('TXT_KEY_BUILDING_AXWWP447_PEDIA','Suomenlinna is an inhabited sea fortress built on six islands and which now forms part of the city of Helsinki, the capital of Finland.[NEWLINE][NEWLINE]The Swedish crown commenced the construction of the fortress in 1748 as protection against Russian expansionism.'),
('TXT_KEY_BUILDING_AXWWP447_QUOTE','[NEWLINE]"I feel we are all islands - in a common sea."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP447_HELP','+15 [ICON_WAR] XP for naval units. Free castle in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP448

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP448','TXT_KEY_BUILDING_AXWWP448','TXT_KEY_BUILDING_AXWWP448_PEDIA','TXT_KEY_BUILDING_AXWWP448_HELP','TXT_KEY_BUILDING_AXWWP448_QUOTE','BUILDINGCLASS_AXWWP448',1,-1,100,'AXWWP2_ATLAS',48,'axwwp448.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP448','TXT_KEY_BUILDING_AXWWP448','BUILDING_AXWWP448',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP448'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP448');

UPDATE Buildings SET
	Cost = 625,
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 2,
	PrereqTech = 'TECH_NAVIGATION',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP448';

INSERT INTO Building_RiverPlotYieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP448','YIELD_PRODUCTION',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP448','Canal du Midi'),
('TXT_KEY_BUILDING_AXWWP448_PEDIA','The Canal du Midi is a 240 km (150 mi) long canal in Southern France. The canal was at the time considered one of the greatest construction works of the 17th century.[NEWLINE][NEWLINE]The canal connects the Garonne to the Etang de Thau on the Mediterranean and along with the 193 km (120 mi) long Canal de Garonne forms the Canal des Deux Mers, joining the Atlantic to the Mediterranean.'),
('TXT_KEY_BUILDING_AXWWP448_QUOTE','[NEWLINE]"Architecture can''t force people to connect, it can only plan the crossing points, remove barriers, and make the meeting places useful and attractive."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP448_HELP','+1 [ICON_PRODUCTION] Production from river tiles.');




-- AXWWP449

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP449','TXT_KEY_BUILDING_AXWWP449','TXT_KEY_BUILDING_AXWWP449_PEDIA','TXT_KEY_BUILDING_AXWWP449_HELP','TXT_KEY_BUILDING_AXWWP449_QUOTE','BUILDINGCLASS_AXWWP449',1,-1,100,'AXWWP2_ATLAS',49,'axwwp449.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP449','TXT_KEY_BUILDING_AXWWP449','BUILDING_AXWWP449',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP449'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP449');

UPDATE Buildings SET
	Cost = 625,
	Water = 1, MinAreaSize = 10,
	Defense = 250,
	SpecialistType = 'SPECIALIST_MERCHANT',
	GreatPeopleRateChange = 1,
	NumTradeRouteBonus = 1,
	FreeBuildingThisCity = 'BUILDINGCLASS_HARBOR',
	PrereqTech = 'TECH_NAVIGATION',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP449';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP449','Fort Jesus'),
('TXT_KEY_BUILDING_AXWWP449_PEDIA','Fort Jesus is a fort located on Mombasa Island. It was built between 1593 and 1596, by order of King Philip I of Portugal, to guard the Old Port of Mombasa.[NEWLINE][NEWLINE]Fort Jesus was the only fort maintained by the Portuguese on the Swahili Coast, and is recognised as a testament to the first successful attempt by a Western power to establish influence over the Indian Ocean trade.'),
('TXT_KEY_BUILDING_AXWWP449_QUOTE','[NEWLINE]"Any damn fool can navigate the world sober. It takes a really good sailor to do it drunk."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP449_HELP','Additional trade route. Free harbor in the city.[NEWLINE][COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP450

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP450','TXT_KEY_BUILDING_AXWWP450','TXT_KEY_BUILDING_AXWWP450_PEDIA','TXT_KEY_BUILDING_AXWWP450_HELP','TXT_KEY_BUILDING_AXWWP450_QUOTE','BUILDINGCLASS_AXWWP450',1,-1,100,'AXWWP2_ATLAS',50,'axwwp450.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP450','TXT_KEY_BUILDING_AXWWP450','BUILDING_AXWWP450',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP450'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP450');

UPDATE Buildings SET
	Cost = 625,
	ReligiousPressureModifier = 30,
	FreeBuildingThisCity = 'BUILDINGCLASS_CATHEDRAL',
	PrereqTech = 'TECH_ARCHITECTURE',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP450';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP450','YIELD_FAITH',8);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP450','Our Lady of Grace Cathedral'),
('TXT_KEY_BUILDING_AXWWP450_PEDIA','The Lady of Grace Cathedral, Leon, also known as Cathedral of the Assumption of Mary and the "Real and Renowned Basilica Cathedral of the Assumption of the Blessed Virgin Mary", is a significantly important and historic landmark in Nicaragua.[NEWLINE][NEWLINE]Cathedral has maintained the status of being the largest cathedral in Central America and one of the best known in the Americas due to its distinct architecture and special cultural importance.'),
('TXT_KEY_BUILDING_AXWWP450_QUOTE','[NEWLINE]"Architecture belongs to culture, not to civilization."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP450_HELP','Religious pressure increased by 30%. Free cathedral in the city.');




-- AXWWP451

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP451','TXT_KEY_BUILDING_AXWWP451','TXT_KEY_BUILDING_AXWWP451_PEDIA','TXT_KEY_BUILDING_AXWWP451_HELP','TXT_KEY_BUILDING_AXWWP451_QUOTE','BUILDINGCLASS_AXWWP451',1,-1,100,'AXWWP2_ATLAS',51,'axwwp451.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP451','TXT_KEY_BUILDING_AXWWP451','BUILDING_AXWWP451',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP451'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP451');

UPDATE Buildings SET
	Cost = 625,
	Happiness = 6,
	SpecialistType = 'SPECIALIST_ARTIST',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_ARCHITECTURE',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP451';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP451','YIELD_CULTURE',1);
INSERT INTO Building_YieldModifiers (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP451','YIELD_CULTURE',10);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP451','Bergpark Wilhelmshohe'),
('TXT_KEY_BUILDING_AXWWP451_PEDIA','Bergpark Wilhelmshohe is a landscape park in Kassel, Germany. The area of the park is 2.4 square kilometres (590 acres), making it the largest European hillside park, and second largest park on a hill slope in the world.[NEWLINE][NEWLINE]Construction of the Bergpark, or "mountain park", began in 1696 at the behest of the Landgraves of Hesse-Kassel and took about 150 years.'),
('TXT_KEY_BUILDING_AXWWP451_QUOTE','[NEWLINE]"The park grass looked greener, the park benches looked better and the flowers were trying harder."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP451_HELP','+10% [ICON_CULTURE] Culture in the city.');




-- AXWWP452

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP452','TXT_KEY_BUILDING_AXWWP452','TXT_KEY_BUILDING_AXWWP452_PEDIA','TXT_KEY_BUILDING_AXWWP452_HELP','TXT_KEY_BUILDING_AXWWP452_QUOTE','BUILDINGCLASS_AXWWP452',1,-1,100,'AXWWP2_ATLAS',52,'axwwp452.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP452','TXT_KEY_BUILDING_AXWWP452','BUILDING_AXWWP452',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP452'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP452');

UPDATE Buildings SET
	Cost = 625,
	GreatWorkCount = 2,
	HappinessPerXPolicies = 2,
	GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT',
	PrereqTech = 'TECH_ARCHITECTURE',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP452';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP452','YIELD_CULTURE',6);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP452','Royal Palace of Caserta'),
('TXT_KEY_BUILDING_AXWWP452_PEDIA','The Royal Palace of Caserta is a former royal residence in Caserta, southern Italy, constructed for the Bourbon kings of Naples. It is one of the largest palaces erected in Europe during the 18th century.'),
('TXT_KEY_BUILDING_AXWWP452_QUOTE','[NEWLINE]"Better to see something once than hear about it a thousand times."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP452_HELP','+1 [ICON_HAPPINESS_1] Happiness every two policies.[NEWLINE][COLOR_LIGHT_GREY]Requires.[ENDCOLOR]');




-- AXWWP453

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP453','TXT_KEY_BUILDING_AXWWP453','TXT_KEY_BUILDING_AXWWP453_PEDIA','TXT_KEY_BUILDING_AXWWP453_HELP','TXT_KEY_BUILDING_AXWWP453_QUOTE','BUILDINGCLASS_AXWWP453',1,-1,100,'AXWWP2_ATLAS',53,'axwwp453.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP453','TXT_KEY_BUILDING_AXWWP453','BUILDING_AXWWP453',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP453'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP453');

UPDATE Buildings SET
	Cost = 625,
	Hill = 1,
	Happiness = 3,
	GlobalCultureRateModifier = 20,
	ReligiousPressureModifier = 50,
	PrereqTech = 'TECH_ARCHITECTURE',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP453';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP453','YIELD_CULTURE',1), ('BUILDING_AXWWP453','YIELD_FAITH',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP453','Potala Palace'),
('TXT_KEY_BUILDING_AXWWP453_PEDIA','The Potala Palace in Lhasa, Tibet Autonomous Region, China was the residence of the Dalai Lama until the 14th Dalai Lama fled to India during the 1959 Tibetan uprising. It is now a museum and World Heritage Site.'),
('TXT_KEY_BUILDING_AXWWP453_QUOTE','[NEWLINE]"If the problem has a solution, why worry? Take action instead. If the problem has no solution, worrying will not do you any good."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP453_HELP','+20% [ICON_CULTURE] Culture in every city. Religious pressure increased by 50%. [NEWLINE][COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');




-- AXWWP454

INSERT INTO Buildings (Type, Description, Civilopedia, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP454','TXT_KEY_BUILDING_AXWWP454','TXT_KEY_BUILDING_AXWWP454_PEDIA','TXT_KEY_BUILDING_AXWWP454_QUOTE','BUILDINGCLASS_AXWWP454',1,-1,100,'AXWWP2_ATLAS',54,'axwwp454.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP454','TXT_KEY_BUILDING_AXWWP454','BUILDING_AXWWP454',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP454'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP454');

UPDATE Buildings SET
	Cost = 625,
	Happiness = 3,
	SpecialistType = 'SPECIALIST_ARTIST',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_ARCHITECTURE',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP454';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP454','YIELD_CULTURE',3);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP454','Trevi Fountain'),
('TXT_KEY_BUILDING_AXWWP454_PEDIA','The Trevi Fountain  is a fountain in the Trevi district in Rome, Italy.[NEWLINE][NEWLINE]Standing 26.3 metres (86 ft) high and 49.15 metres (161.3 ft) wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.'),
('TXT_KEY_BUILDING_AXWWP454_QUOTE','[NEWLINE]"I''ll toss my coins in the fountain,[NEWLINE]Look for clovers in grassy lawns,[NEWLINE]Search for shooting stars in the night,[NEWLINE]Cross my fingers and dream on."[NEWLINE]');




-- AXWWP455

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP455','TXT_KEY_BUILDING_AXWWP455','TXT_KEY_BUILDING_AXWWP455_PEDIA','TXT_KEY_BUILDING_AXWWP455_HELP','TXT_KEY_BUILDING_AXWWP455_QUOTE','BUILDINGCLASS_AXWWP455',1,-1,100,'AXWWP2_ATLAS',55,'axwwp455.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP455','TXT_KEY_BUILDING_AXWWP455','BUILDING_AXWWP455',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP455'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP455');

UPDATE Buildings SET
	Cost = 625,
	FoodKept = 30,
	FreeBuildingThisCity = 'BUILDINGCLASS_AQUEDUCT',
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_ECONOMICS',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP455';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP455','YIELD_FOOD',6);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP455','Aqueduct of Padre Tembleque'),
('TXT_KEY_BUILDING_AXWWP455_PEDIA','The Aqueduct of Padre Tembleque, or Tembleque Aqueduct, is a Mexican aqueduct located between the towns of Zempoala, Hidalgo, and Otumba in the State of Mexico.[NEWLINE][NEWLINE]Originally constructed between 1553 and 1570, the aqueduct stretches 45 kilometres (28 mi) long, beginning at Tecajete volcano just east of Zempoala and terminating at Otumba. It passed mostly at ground level, but also went underground as well as over ravines and valleys.'),
('TXT_KEY_BUILDING_AXWWP455_QUOTE','[NEWLINE]"Thousands have lived without love, not one without water."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP455_HELP','30% [ICON_FOOD] Food carried over when [ICON_CITIZEN] Citizen is born. Free aqueduct in the city.');




-- AXWWP456

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP456','TXT_KEY_BUILDING_AXWWP456','TXT_KEY_BUILDING_AXWWP456_PEDIA','TXT_KEY_BUILDING_AXWWP456_HELP','TXT_KEY_BUILDING_AXWWP456_QUOTE','BUILDINGCLASS_AXWWP456',1,-1,100,'AXWWP2_ATLAS',56,'axwwp456.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP456','TXT_KEY_BUILDING_AXWWP456','BUILDING_AXWWP456',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP456'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP456');

UPDATE Buildings SET
	Cost = 625,
	Flat = 1,
	SpecialistType = 'SPECIALIST_MERCHANT',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_ECONOMICS',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP456';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP456','YIELD_GOLD',5);
INSERT INTO Building_FeatureYieldChanges (BuildingType, FeatureType, YieldType, Yield) VALUES 
('BUILDING_AXWWP456','FEATURE_MARSH','YIELD_PRODUCTION',2), ('BUILDING_AXWWP456','FEATURE_MARSH','YIELD_FOOD',2);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP456','Windmills at Kinderdijk'),
('TXT_KEY_BUILDING_AXWWP456_PEDIA','The windmills at Kinderdijk are a group of 19 monumental windmills in the Alblasserwaard polder, in the province of South Holland, Netherlands.[NEWLINE][NEWLINE]Built in 1738 and 1740, to keep water out of the polder, it is the largest concentration of old windmills in the Netherlands and one of the best-known Dutch tourist sites.'),
('TXT_KEY_BUILDING_AXWWP456_QUOTE','[NEWLINE]"Black cat or white cat? If it can catch mice, it''s a good cat."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP456_HELP','+2 [ICON_FOOD] Food and [ICON_PRODUCTION] Production from marshes.[NEWLINE][COLOR_LIGHT_GREY]Requires flat ground.[ENDCOLOR]');




-- AXWWP457

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP457','TXT_KEY_BUILDING_AXWWP457','TXT_KEY_BUILDING_AXWWP457_PEDIA','TXT_KEY_BUILDING_AXWWP457_HELP','TXT_KEY_BUILDING_AXWWP457_QUOTE','BUILDINGCLASS_AXWWP457',1,-1,100,'AXWWP2_ATLAS',57,'axwwp457.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP457','TXT_KEY_BUILDING_AXWWP457','BUILDING_AXWWP457',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP457'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP457');

UPDATE Buildings SET
	Cost = 625,
	River = 1,
	Happiness = 3,
	PrereqTech = 'TECH_ECONOMICS',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP457';

INSERT INTO Building_RiverPlotYieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP457','YIELD_CULTURE',1);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP457','Khaju Bridge'),
('TXT_KEY_BUILDING_AXWWP457_PEDIA','Khaju Bridge is a bridge in the province of Isfahan, Iran, which has been described as the finest in the province.[NEWLINE][NEWLINE]Khaju is one of the bridges that regulate the water flow in the river because there are sluice gates under the archways over the river. When the sluice gates are closed, the water level behind the bridge is raised to facilitate the irrigation of the many gardens along the river upstream of this bridge.'),
('TXT_KEY_BUILDING_AXWWP457_QUOTE','[NEWLINE]"The culminating monument of Persian bridge architecture and one of the most interesting bridges extant... where the whole has rhythm and dignity and combines in the happiest consistency, utility, beauty, and recreation."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP457_HELP','+1 [ICON_CULTURE] Culture from river tiles.[NEWLINE][COLOR_LIGHT_GREY]Requires river.[ENDCOLOR]');




-- AXWWP458

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP458','TXT_KEY_BUILDING_AXWWP458','TXT_KEY_BUILDING_AXWWP458_PEDIA','TXT_KEY_BUILDING_AXWWP458_HELP','TXT_KEY_BUILDING_AXWWP458_QUOTE','BUILDINGCLASS_AXWWP458',1,-1,100,'AXWWP2_ATLAS',58,'axwwp458.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP458','TXT_KEY_BUILDING_AXWWP458','BUILDING_AXWWP458',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP458'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP458');

UPDATE Buildings SET
	Cost = 625,
	Hill = 1,
	Defense = 250,
	GlobalDefenseMod = 10,
	NearbyTerrainRequired = 'TERRAIN_DESERT',
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_METALLURGY',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP458';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP458','Ranikot Fort'),
('TXT_KEY_BUILDING_AXWWP458_PEDIA','Ranikot Fort is a historical fort near Sann, Jamshoro District, Sindh, Pakistan.[NEWLINE][NEWLINE]Ranikot Fort is also known as The Great Wall of Sindh and is believed to be the world''s largest fort. with a circumference of approximately 32 kilometres (20 mi).'),
('TXT_KEY_BUILDING_AXWWP458_QUOTE','[NEWLINE]"The nation which forgets its defenders will be itself forgotten."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP458_HELP','Defense of all cities increased by 10%.[NEWLINE][COLOR_LIGHT_GREY]Requires desert and hill.[ENDCOLOR]');




-- AXWWP459

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP459','TXT_KEY_BUILDING_AXWWP459','TXT_KEY_BUILDING_AXWWP459_PEDIA','TXT_KEY_BUILDING_AXWWP459_HELP','TXT_KEY_BUILDING_AXWWP459_QUOTE','BUILDINGCLASS_AXWWP459',1,-1,100,'AXWWP2_ATLAS',59,'axwwp459.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP459','TXT_KEY_BUILDING_AXWWP459','BUILDING_AXWWP459',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP459'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP459');

UPDATE Buildings SET
	Cost = 625,
	Water = 1, MinAreaSize = 10,
	Defense = 500,
	PrereqTech = 'TECH_METALLURGY',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP459';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP459','YIELD_PRODUCTION',5);
INSERT INTO Building_UnitCombatFreeExperiences (BuildingType, UnitCombatType, Experience) VALUES 
('BUILDING_AXWWP459','UNITCOMBAT_NAVALMELEE',15), ('BUILDING_AXWWP459','UNITCOMBAT_NAVALRANGED',15);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP459','Venetian Arsenal'),
('TXT_KEY_BUILDING_AXWWP459_PEDIA','The Venetian Arsenal is a complex of former shipyards and armories clustered together in the city of Venice in northern Italy.[NEWLINE][NEWLINE]Owned by the state, the Arsenal was responsible for the bulk of the Venetian republic''s naval power during the middle part of the second millennium AD. It was "one of the earliest large-scale industrial enterprises in history".'),
('TXT_KEY_BUILDING_AXWWP459_QUOTE','[NEWLINE]"To be prepared for war is one of the most effective means of preserving peace."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP459_HELP','+15 [ICON_WAR] XP for naval units.[NEWLINE][COLOR_LIGHT_GREY]Requires coast.[ENDCOLOR]');




-- AXWWP460

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP460','TXT_KEY_BUILDING_AXWWP460','TXT_KEY_BUILDING_AXWWP460_PEDIA','TXT_KEY_BUILDING_AXWWP460_HELP','TXT_KEY_BUILDING_AXWWP460_QUOTE','BUILDINGCLASS_AXWWP460',1,-1,100,'AXWWP2_ATLAS',60,'axwwp460.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP460','TXT_KEY_BUILDING_AXWWP460','BUILDING_AXWWP460',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP460'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP460');

UPDATE Buildings SET
	Cost = 625,
	Flat = 1,
	Defense = 250,
	Happiness = 2,
	PrereqTech = 'TECH_METALLURGY',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP460';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield) VALUES ('BUILDING_AXWWP460','YIELD_CULTURE',5);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP460','Lahore Fort'),
('TXT_KEY_BUILDING_AXWWP460_PEDIA','The Lahore Fort is a citadel in the city of Lahore, Pakistan.[NEWLINE][NEWLINE]It contains 21 notable monuments, some of which date to the era of Emperor Akbar. The Lahore Fort is notable for having been almost entirely rebuilt in the 17th century, when the Mughal Empire was at the height of its splendour and opulence.'),
('TXT_KEY_BUILDING_AXWWP460_QUOTE','[NEWLINE]"A people without the knowledge of their past history, origin and culture is like a tree without roots."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP460_HELP','[COLOR_LIGHT_GREY]Requires flat ground.[ENDCOLOR]');




-- AXWWP461

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP461','TXT_KEY_BUILDING_AXWWP461','TXT_KEY_BUILDING_AXWWP461_PEDIA','TXT_KEY_BUILDING_AXWWP461_HELP','TXT_KEY_BUILDING_AXWWP461_QUOTE','BUILDINGCLASS_AXWWP461',1,-1,100,'AXWWP2_ATLAS',61,'axwwp461.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP461','TXT_KEY_BUILDING_AXWWP461','BUILDING_AXWWP461',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP461'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP461');

UPDATE Buildings SET
	Cost = 625,
	Hill = 1,
	Defense = 500,
	GlobalPlotCultureCostModifier = -15,
	PrereqTech = 'TECH_CHEMISTRY',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP461';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP461','Rohtas Fort'),
('TXT_KEY_BUILDING_AXWWP461_PEDIA','Rohtas Fort is a 16th-century fortress located near the city of Jhelum in the Pakistani province of Punjab.The fortress was built during the reign of the Pashtun king Sher Shah Suri between 1541 and 1548 in order to help subdue the rebellious tribes of the Potohar region of northern Punjab that were loyal to the Mughal crown.[NEWLINE][NEWLINE]The fort is one of the largest and most formidable in the subcontinent. Rohtas Fort was never stormed by force, and has survived remarkably intact.'),
('TXT_KEY_BUILDING_AXWWP461_QUOTE','[NEWLINE]"Protecting yourself is self defense. Protecting others is warriorship."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP461_HELP','Culture cost of acquiring new tiles reduced by 15% in all cities. [NEWLINE][COLOR_LIGHT_GREY]Requires hill.[ENDCOLOR]');




-- AXWWP462

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP462','TXT_KEY_BUILDING_AXWWP462','TXT_KEY_BUILDING_AXWWP462_PEDIA','TXT_KEY_BUILDING_AXWWP462_HELP','TXT_KEY_BUILDING_AXWWP462_QUOTE','BUILDINGCLASS_AXWWP462',1,-1,100,'AXWWP2_ATLAS',62,'axwwp462.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP462','TXT_KEY_BUILDING_AXWWP462','BUILDING_AXWWP462',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP462'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP462');

UPDATE Buildings SET
	Cost = 625,
	Hill = 1,
	Water = 1, MinAreaSize = 10,
	Defense = 250,
	TradeRouteSeaGoldBonus = 100,
	PrereqTech = 'TECH_CHEMISTRY',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP462';

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP462','Brimstone Hill Fortress'),
('TXT_KEY_BUILDING_AXWWP462_PEDIA','Brimstone Hill Fortress National Park is a UNESCO World Heritage Site, a well-preserved fortress on a hill on the island of St. Kitts in the Federation of St. Christopher (St. Kitts) and Nevis in the Eastern Caribbean.[NEWLINE][NEWLINE]It was designed by British military engineers, and was built and maintained by African slaves. It is one of the best preserved historical fortifications in the Americas.'),
('TXT_KEY_BUILDING_AXWWP462_QUOTE','[NEWLINE]"To service a gun mounted on a siege carriage, seven men are necessary: one gunner and six other cannoneers."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP462_HELP','Increases [ICON_GOLD] Gold from sea trade routes.[NEWLINE][COLOR_LIGHT_GREY]Requires hill and coast.[ENDCOLOR]');




-- AXWWP463

INSERT INTO Buildings (Type, Description, Civilopedia, Help, Quote, BuildingClass, NukeImmune, HurryCostModifier, ConquestProb, IconAtlas, PortraitIndex, WonderSplashImage, WonderSplashAnchor)
VALUES ('BUILDING_AXWWP463','TXT_KEY_BUILDING_AXWWP463','TXT_KEY_BUILDING_AXWWP463_PEDIA','TXT_KEY_BUILDING_AXWWP463_HELP','TXT_KEY_BUILDING_AXWWP463_QUOTE','BUILDINGCLASS_AXWWP463',1,-1,100,'AXWWP2_ATLAS',63,'axwwp463.dds','C,T');
INSERT INTO BuildingClasses (Type, Description, DefaultBuilding, MaxGlobalInstances) VALUES ('BUILDINGCLASS_AXWWP463','TXT_KEY_BUILDING_AXWWP463','BUILDING_AXWWP463',1);
INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType) VALUES ('CIVILIZATION_BARBARIAN','BUILDINGCLASS_AXWWP463'),('CIVILIZATION_MINOR','BUILDINGCLASS_AXWWP463');

UPDATE Buildings SET
	Cost = 625,
	Flat =  1,
	Defense = 250,
	SpecialistCount = 1,
	SpecialistType = 'SPECIALIST_ENGINEER',
	GreatPeopleRateChange = 1,
	PrereqTech = 'TECH_CHEMISTRY',
	MaxStartEra = 'ERA_INDUSTRIAL'
WHERE Type = 'BUILDING_AXWWP463';

INSERT INTO Building_DomainFreeExperiences (BuildingType, DomainType, Experience) VALUES ('BUILDING_AXWWP463','DOMAIN_LAND',15);

INSERT INTO Language_en_US (Tag, Text) VALUES
('TXT_KEY_BUILDING_AXWWP463','Spandau Citadel'),
('TXT_KEY_BUILDING_AXWWP463_PEDIA','The Spandau Citadel is a fortress in Berlin, Germany, one of the best-preserved Renaissance military structures of Europe.[NEWLINE][NEWLINE]With four bastions, symmetrically arranged and connected by curtain walls, the Spandau citadel is an ideal example of a 16th-century fortress. Due to the bastions'' formation, there is no blind spot for enemies to hide.'),
('TXT_KEY_BUILDING_AXWWP463_QUOTE','[NEWLINE]"It doesn''t matter what you have if you can''t protect it."[NEWLINE]'),
('TXT_KEY_BUILDING_AXWWP463_HELP','+15 [ICON_WAR] XP for land units.[NEWLINE][COLOR_LIGHT_GREY]Requires flat ground.[ENDCOLOR]');
