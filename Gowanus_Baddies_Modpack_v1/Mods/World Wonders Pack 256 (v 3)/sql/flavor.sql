-- WONDER
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_WONDER', 21 FROM Buildings WHERE Type LIKE '%AXWWP1%';
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_WONDER', 22 FROM Buildings WHERE Type LIKE '%AXWWP2%';
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_WONDER', 23 FROM Buildings WHERE Type LIKE '%AXWWP3%';
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_WONDER', 24 FROM Buildings WHERE Type LIKE '%AXWWP4%';
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_WONDER', 25 FROM Buildings WHERE Type LIKE '%AXWWP5%';
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_WONDER', 26 FROM Buildings WHERE Type LIKE '%AXWWP6%';
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_WONDER', 27 FROM Buildings WHERE Type LIKE '%AXWWP7%';
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_WONDER', 28 FROM Buildings WHERE Type LIKE '%AXWWP8%';

-- HAPPINESS
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_HAPPINESS', 21+Happiness FROM Buildings WHERE Type LIKE '%AXWWP1%' AND Happiness > 0;
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_HAPPINESS', 22+Happiness FROM Buildings WHERE Type LIKE '%AXWWP2%' AND Happiness > 0;
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_HAPPINESS', 23+Happiness FROM Buildings WHERE Type LIKE '%AXWWP3%' AND Happiness > 0;
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_HAPPINESS', 24+Happiness FROM Buildings WHERE Type LIKE '%AXWWP4%' AND Happiness > 0;
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_HAPPINESS', 25+Happiness FROM Buildings WHERE Type LIKE '%AXWWP5%' AND Happiness > 0;
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_HAPPINESS', 26+Happiness FROM Buildings WHERE Type LIKE '%AXWWP6%' AND Happiness > 0;
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_HAPPINESS', 27+Happiness FROM Buildings WHERE Type LIKE '%AXWWP7%' AND Happiness > 0;
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_HAPPINESS', 28+Happiness FROM Buildings WHERE Type LIKE '%AXWWP8%' AND Happiness > 0;

-- CULTURE
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_CULTURE', 21+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP1%' AND YieldType = 'YIELD_CULTURE';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_CULTURE', 22+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP2%' AND YieldType = 'YIELD_CULTURE';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_CULTURE', 23+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP3%' AND YieldType = 'YIELD_CULTURE';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_CULTURE', 24+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP4%' AND YieldType = 'YIELD_CULTURE';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_CULTURE', 25+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP5%' AND YieldType = 'YIELD_CULTURE';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_CULTURE', 26+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP6%' AND YieldType = 'YIELD_CULTURE';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_CULTURE', 27+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP7%' AND YieldType = 'YIELD_CULTURE';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_CULTURE', 28+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP8%' AND YieldType = 'YIELD_CULTURE';

-- RELIGION
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_RELIGION', 21+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP1%' AND YieldType = 'YIELD_FAITH';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_RELIGION', 22+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP2%' AND YieldType = 'YIELD_FAITH';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_RELIGION', 23+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP3%' AND YieldType = 'YIELD_FAITH';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_RELIGION', 24+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP4%' AND YieldType = 'YIELD_FAITH';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_RELIGION', 25+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP5%' AND YieldType = 'YIELD_FAITH';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_RELIGION', 26+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP6%' AND YieldType = 'YIELD_FAITH';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_RELIGION', 27+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP7%' AND YieldType = 'YIELD_FAITH';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_RELIGION', 28+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP8%' AND YieldType = 'YIELD_FAITH';

-- GOLD
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_GOLD', 21+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP1%' AND YieldType = 'YIELD_GOLD';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_GOLD', 22+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP2%' AND YieldType = 'YIELD_GOLD';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_GOLD', 23+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP3%' AND YieldType = 'YIELD_GOLD';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_GOLD', 24+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP4%' AND YieldType = 'YIELD_GOLD';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_GOLD', 25+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP5%' AND YieldType = 'YIELD_GOLD';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_GOLD', 26+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP6%' AND YieldType = 'YIELD_GOLD';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_GOLD', 27+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP7%' AND YieldType = 'YIELD_GOLD';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_GOLD', 28+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP8%' AND YieldType = 'YIELD_GOLD';

-- GROWTH
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_GROWTH', 21+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP1%' AND YieldType = 'YIELD_FOOD';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_GROWTH', 22+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP2%' AND YieldType = 'YIELD_FOOD';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_GROWTH', 23+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP3%' AND YieldType = 'YIELD_FOOD';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_GROWTH', 24+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP4%' AND YieldType = 'YIELD_FOOD';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_GROWTH', 25+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP5%' AND YieldType = 'YIELD_FOOD';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_GROWTH', 26+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP6%' AND YieldType = 'YIELD_FOOD';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_GROWTH', 27+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP7%' AND YieldType = 'YIELD_FOOD';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_GROWTH', 28+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP8%' AND YieldType = 'YIELD_FOOD';

-- CITY_DEFENSE
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_CITY_DEFENSE', 21 FROM Buildings WHERE Type LIKE '%AXWWP1%' AND (Defense > 0 OR ExtraCityHitPoints > 0 OR GlobalDefenseMod > 0);
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_CITY_DEFENSE', 22 FROM Buildings WHERE Type LIKE '%AXWWP2%' AND (Defense > 0 OR ExtraCityHitPoints > 0 OR GlobalDefenseMod > 0);
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_CITY_DEFENSE', 23 FROM Buildings WHERE Type LIKE '%AXWWP3%' AND (Defense > 0 OR ExtraCityHitPoints > 0 OR GlobalDefenseMod > 0);
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_CITY_DEFENSE', 24 FROM Buildings WHERE Type LIKE '%AXWWP4%' AND (Defense > 0 OR ExtraCityHitPoints > 0 OR GlobalDefenseMod > 0);
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_CITY_DEFENSE', 25 FROM Buildings WHERE Type LIKE '%AXWWP5%' AND (Defense > 0 OR ExtraCityHitPoints > 0 OR GlobalDefenseMod > 0);
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_CITY_DEFENSE', 26 FROM Buildings WHERE Type LIKE '%AXWWP6%' AND (Defense > 0 OR ExtraCityHitPoints > 0 OR GlobalDefenseMod > 0);
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_CITY_DEFENSE', 27 FROM Buildings WHERE Type LIKE '%AXWWP7%' AND (Defense > 0 OR ExtraCityHitPoints > 0 OR GlobalDefenseMod > 0);
INSERT INTO Building_Flavors SELECT Type, 'FLAVOR_CITY_DEFENSE', 28 FROM Buildings WHERE Type LIKE '%AXWWP8%' AND (Defense > 0 OR ExtraCityHitPoints > 0 OR GlobalDefenseMod > 0);

-- PRODUCTION
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_PRODUCTION', 21+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP1%' AND YieldType = 'YIELD_PRODUCTION';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_PRODUCTION', 22+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP2%' AND YieldType = 'YIELD_PRODUCTION';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_PRODUCTION', 23+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP3%' AND YieldType = 'YIELD_PRODUCTION';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_PRODUCTION', 24+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP4%' AND YieldType = 'YIELD_PRODUCTION';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_PRODUCTION', 25+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP5%' AND YieldType = 'YIELD_PRODUCTION';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_PRODUCTION', 26+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP6%' AND YieldType = 'YIELD_PRODUCTION';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_PRODUCTION', 27+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP7%' AND YieldType = 'YIELD_PRODUCTION';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_PRODUCTION', 28+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP8%' AND YieldType = 'YIELD_PRODUCTION';

-- SCIENCE
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_SCIENCE', 21+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP1%' AND YieldType = 'YIELD_SCIENCE';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_SCIENCE', 22+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP2%' AND YieldType = 'YIELD_SCIENCE';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_SCIENCE', 23+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP3%' AND YieldType = 'YIELD_SCIENCE';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_SCIENCE', 24+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP4%' AND YieldType = 'YIELD_SCIENCE';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_SCIENCE', 25+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP5%' AND YieldType = 'YIELD_SCIENCE';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_SCIENCE', 26+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP6%' AND YieldType = 'YIELD_SCIENCE';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_SCIENCE', 27+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP7%' AND YieldType = 'YIELD_SCIENCE';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_SCIENCE', 28+Yield FROM Building_YieldChanges WHERE BuildingType LIKE '%AXWWP8%' AND YieldType = 'YIELD_SCIENCE';

-- TILE_IMPROVEMENT
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_TILE_IMPROVEMENT', 21 FROM Building_ResourceYieldChanges WHERE BuildingType LIKE '%AXWWP1%';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_TILE_IMPROVEMENT', 22 FROM Building_ResourceYieldChanges WHERE BuildingType LIKE '%AXWWP2%';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_TILE_IMPROVEMENT', 23 FROM Building_ResourceYieldChanges WHERE BuildingType LIKE '%AXWWP3%';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_TILE_IMPROVEMENT', 24 FROM Building_ResourceYieldChanges WHERE BuildingType LIKE '%AXWWP4%';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_TILE_IMPROVEMENT', 25 FROM Building_ResourceYieldChanges WHERE BuildingType LIKE '%AXWWP5%';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_TILE_IMPROVEMENT', 26 FROM Building_ResourceYieldChanges WHERE BuildingType LIKE '%AXWWP6%';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_TILE_IMPROVEMENT', 27 FROM Building_ResourceYieldChanges WHERE BuildingType LIKE '%AXWWP7%';
INSERT INTO Building_Flavors SELECT BuildingType, 'FLAVOR_TILE_IMPROVEMENT', 28 FROM Building_ResourceYieldChanges WHERE BuildingType LIKE '%AXWWP8%';

-- NAVAL_TILE_IMPROVEMENT
INSERT INTO Building_Flavors SELECT BuildingType,'FLAVOR_NAVAL_TILE_IMPROVEMENT',21 FROM Building_SeaPlotYieldChanges WHERE BuildingType LIKE '%AXWWP1%' UNION SELECT BuildingType,'FLAVOR_NAVAL_TILE_IMPROVEMENT',21 FROM Building_SeaResourceYieldChanges WHERE BuildingType LIKE '%AXWWP1%';
INSERT INTO Building_Flavors SELECT BuildingType,'FLAVOR_NAVAL_TILE_IMPROVEMENT',22 FROM Building_SeaPlotYieldChanges WHERE BuildingType LIKE '%AXWWP2%' UNION SELECT BuildingType,'FLAVOR_NAVAL_TILE_IMPROVEMENT',22 FROM Building_SeaResourceYieldChanges WHERE BuildingType LIKE '%AXWWP2%';
INSERT INTO Building_Flavors SELECT BuildingType,'FLAVOR_NAVAL_TILE_IMPROVEMENT',23 FROM Building_SeaPlotYieldChanges WHERE BuildingType LIKE '%AXWWP3%' UNION SELECT BuildingType,'FLAVOR_NAVAL_TILE_IMPROVEMENT',23 FROM Building_SeaResourceYieldChanges WHERE BuildingType LIKE '%AXWWP3%';
INSERT INTO Building_Flavors SELECT BuildingType,'FLAVOR_NAVAL_TILE_IMPROVEMENT',24 FROM Building_SeaPlotYieldChanges WHERE BuildingType LIKE '%AXWWP4%' UNION SELECT BuildingType,'FLAVOR_NAVAL_TILE_IMPROVEMENT',24 FROM Building_SeaResourceYieldChanges WHERE BuildingType LIKE '%AXWWP4%';
INSERT INTO Building_Flavors SELECT BuildingType,'FLAVOR_NAVAL_TILE_IMPROVEMENT',25 FROM Building_SeaPlotYieldChanges WHERE BuildingType LIKE '%AXWWP5%' UNION SELECT BuildingType,'FLAVOR_NAVAL_TILE_IMPROVEMENT',25 FROM Building_SeaResourceYieldChanges WHERE BuildingType LIKE '%AXWWP5%';
INSERT INTO Building_Flavors SELECT BuildingType,'FLAVOR_NAVAL_TILE_IMPROVEMENT',26 FROM Building_SeaPlotYieldChanges WHERE BuildingType LIKE '%AXWWP6%' UNION SELECT BuildingType,'FLAVOR_NAVAL_TILE_IMPROVEMENT',26 FROM Building_SeaResourceYieldChanges WHERE BuildingType LIKE '%AXWWP6%';
INSERT INTO Building_Flavors SELECT BuildingType,'FLAVOR_NAVAL_TILE_IMPROVEMENT',27 FROM Building_SeaPlotYieldChanges WHERE BuildingType LIKE '%AXWWP7%' UNION SELECT BuildingType,'FLAVOR_NAVAL_TILE_IMPROVEMENT',27 FROM Building_SeaResourceYieldChanges WHERE BuildingType LIKE '%AXWWP7%';
INSERT INTO Building_Flavors SELECT BuildingType,'FLAVOR_NAVAL_TILE_IMPROVEMENT',28 FROM Building_SeaPlotYieldChanges WHERE BuildingType LIKE '%AXWWP8%' UNION SELECT BuildingType,'FLAVOR_NAVAL_TILE_IMPROVEMENT',28 FROM Building_SeaResourceYieldChanges WHERE BuildingType LIKE '%AXWWP8%';
