INSERT INTO BuildingClasses
        (DefaultBuilding,                            Type,                                            Description)
SELECT    'BUILDING_QROW_LIYUE_TRADE_DUMMY_'||Type,     'BUILDINGCLASS_QROW_LIYUE_TRADE_DUMMY_'||Type,     Description
FROM Eras;

INSERT INTO Buildings
        (Type,                                        BuildingClass,                                    Description,    Cost,    FaithCost,    PrereqTech,    GreatWorkCount,    NukeImmune,    NeverCapture,    NumTradeRouteBonus,    IconAtlas,            PortraitIndex)
SELECT    'BUILDING_QROW_LIYUE_TRADE_DUMMY_'||Type,    'BUILDINGCLASS_QROW_LIYUE_TRADE_DUMMY_'||Type,    Description,    -1,        -1,            NULL,        -1,                1,            1,                1,                    'CIV_LIYUE_ATLAS',    0
FROM Eras;

CREATE TRIGGER IF NOT EXISTS C15_Qrow_Zongli_Era
AFTER INSERT ON Eras
WHEN NOT EXISTS (SELECT 1 FROM Buildings WHERE Type = 'BUILDING_QROW_LIYUE_TRADE_DUMMY_'||NEW.Type)
BEGIN
    INSERT INTO BuildingClasses
            (DefaultBuilding,                            Type,                                            Description)
    VALUES    ('BUILDING_QROW_LIYUE_TRADE_DUMMY_'||NEW.Type,     'BUILDINGCLASS_QROW_LIYUE_TRADE_DUMMY_'||NEW.Type,     NEW.Description);
    
    INSERT INTO Buildings
            (Type,                                        BuildingClass,                                    Description,    Cost,    FaithCost,    PrereqTech,    GreatWorkCount,    NukeImmune,    NeverCapture,    NumTradeRouteBonus,    IconAtlas,            PortraitIndex)
    VALUES    ('BUILDING_QROW_LIYUE_TRADE_DUMMY_'||NEW.Type,    'BUILDINGCLASS_QROW_LIYUE_TRADE_DUMMY_'||NEW.Type,    NEW.Description,    -1,        -1,            NULL,        -1,                1,            1,                1,                    'CIV_LIYUE_ATLAS',    0);
END;
CREATE TRIGGER IF NOT EXISTS C15_Qrow_Zongli_Era_Update
AFTER UPDATE ON Eras
WHEN NEW.Type != OLD.Type AND NOT EXISTS (SELECT 1 FROM Buildings WHERE Type = 'BUILDING_QROW_LIYUE_TRADE_DUMMY_'||NEW.Type)
BEGIN
    INSERT INTO BuildingClasses
            (DefaultBuilding,                            Type,                                            Description)
    VALUES    ('BUILDING_QROW_LIYUE_TRADE_DUMMY_'||NEW.Type,     'BUILDINGCLASS_QROW_LIYUE_TRADE_DUMMY_'||NEW.Type,     NEW.Description);
    
    INSERT INTO Buildings
            (Type,                                        BuildingClass,                                    Description,    Cost,    FaithCost,    PrereqTech,    GreatWorkCount,    NukeImmune,    NeverCapture,    NumTradeRouteBonus,    IconAtlas,            PortraitIndex)
    VALUES    ('BUILDING_QROW_LIYUE_TRADE_DUMMY_'||NEW.Type,    'BUILDINGCLASS_QROW_LIYUE_TRADE_DUMMY_'||NEW.Type,    NEW.Description,    -1,        -1,            NULL,        -1,                1,            1,                1,                    'CIV_LIYUE_ATLAS',    0);
END;