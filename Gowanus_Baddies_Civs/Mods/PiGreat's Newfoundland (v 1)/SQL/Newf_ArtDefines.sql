--==========================================================================================================================
-- ART DEFINES
--==========================================================================================================================	
-- IconTextureAtlases
------------------------------
INSERT INTO IconTextureAtlases 
			(Atlas, 							IconSize, 	Filename, 							IconsPerRow, 	IconsPerColumn)
VALUES		('PI_NEWFOUNDLAND_ATLAS', 				256, 		'PI_NewfoundlandAtlas_256.dds',			2, 				2),
			('PI_NEWFOUNDLAND_ATLAS', 				128, 		'PI_NewfoundlandAtlas_128.dds',			2, 				2),
			('PI_NEWFOUNDLAND_ATLAS', 				80, 		'PI_NewfoundlandAtlas_80.dds',			2, 				2),
			('PI_NEWFOUNDLAND_ATLAS', 				64, 		'PI_NewfoundlandAtlas_64.dds',			2, 				2),
			('PI_NEWFOUNDLAND_ATLAS', 				45, 		'PI_NewfoundlandAtlas_45.dds',			2, 				2),
			('PI_NEWFOUNDLAND_ATLAS', 				32, 		'PI_NewfoundlandAtlas_32.dds',			2, 				2),
			('PI_NEWFOUNDLAND_ALPHA_ATLAS', 			128, 		'PI_NewfoundlandAlphaAtlas_128.dds',		1,				1),
			('PI_NEWFOUNDLAND_ALPHA_ATLAS', 			80, 		'PI_NewfoundlandAlphaAtlas_80.dds',		1, 				1),
			('PI_NEWFOUNDLAND_ALPHA_ATLAS', 			64, 		'PI_NewfoundlandAlphaAtlas_64.dds',		1, 				1),
			('PI_NEWFOUNDLAND_ALPHA_ATLAS', 			48, 		'PI_NewfoundlandAlphaAtlas_48.dds',		1, 				1),
			('PI_NEWFOUNDLAND_ALPHA_ATLAS', 			45, 		'PI_NewfoundlandAlphaAtlas_45.dds',		1, 				1),
			('PI_NEWFOUNDLAND_ALPHA_ATLAS', 			32, 		'PI_NewfoundlandAlphaAtlas_32.dds',		1, 				1),
			('PI_NEWFOUNDLAND_ALPHA_ATLAS', 			24, 		'PI_NewfoundlandAlphaAtlas_24.dds',		1, 				1),
			('PI_NEWFOUNDLAND_ALPHA_ATLAS', 			16, 		'PI_NewfoundlandAlphaAtlas_16.dds',		1, 				1),
			('PI_UNIT_FLAG_PUTTEE_ATLAS', 	32, 		'PI_Blue_Puttee_Flag_32.dds',		1, 				1);
------------------------------	
-- Colors
------------------------------		
INSERT INTO Colors 
			(Type, 									Red, 	Green, 	Blue, 	Alpha)
VALUES		('COLOR_PLAYER_PI_NEWFOUNDLAND_ICON', 		0.937,	0.682,	0.761,	1),
			('COLOR_PLAYER_PI_NEWFOUNDLAND_BACKGROUND',	0,	0.431,	0.224,	1);
------------------------------	
-- PlayerColors
------------------------------				
INSERT INTO PlayerColors 
			(Type, 						PrimaryColor, 					SecondaryColor, 						TextColor)
VALUES		('PLAYERCOLOR_PI_NEWFOUNDLAND',	'COLOR_PLAYER_PI_NEWFOUNDLAND_ICON', 	'COLOR_PLAYER_PI_NEWFOUNDLAND_BACKGROUND', 	'COLOR_PLAYER_WHITE_TEXT');
--==========================================================================================================================
-- AUDIO
--==========================================================================================================================	
-- Audio_Sounds
------------------------------	
INSERT INTO Audio_Sounds 
			(SoundID, 								Filename, 			LoadType)
VALUES		('SND_LEADER_MUSIC_PI_MORRIS_PEACE', 'Pi_Newfoundland_Peace',	'DynamicResident'),
			('SND_LEADER_MUSIC_PI_MORRIS_WAR', 	'Pi_Newfoundland_War', 	'DynamicResident');			
------------------------------	
-- Audio_2DSounds
------------------------------		
INSERT INTO Audio_2DSounds 
			(ScriptID, 									SoundID, 									SoundType, 		MinVolume, 	MaxVolume,  IsMusic, Looping)
VALUES		('AS2D_LEADER_MUSIC_PI_MORRIS_PEACE', 	'SND_LEADER_MUSIC_PI_MORRIS_PEACE', 		'GAME_MUSIC', 	60, 		60, 		1, 		 0),
			('AS2D_LEADER_MUSIC_PI_MORRIS_WAR', 		'SND_LEADER_MUSIC_PI_MORRIS_WAR', 		'GAME_MUSIC', 	60, 		60, 		1,		 0);
--==========================================================================================================================
-- UNIT GRAPHICS
--==========================================================================================================================	
-- ArtDefine_StrategicView
------------------------------
INSERT INTO ArtDefine_StrategicView 
		(StrategicViewType, 			TileType,	Asset)
VALUES	('ART_DEF_UNIT_PI_BLUE_PUTTEE',	'Unit',		'sv_blue_puttee.dds');
------------------------------
-- ArtDefine_UnitInfos
------------------------------			
INSERT INTO ArtDefine_UnitInfos 
		(Type, 						DamageStates,	Formation)
SELECT	Type,	DamageStates, 	Formation
FROM ArtDefine_UnitInfos WHERE Type = 'ART_DEF_UNIT_GREAT_WAR_INFANTRY';
------------------------------
-- ArtDefine_UnitInfoMemberInfos
------------------------------
INSERT INTO ArtDefine_UnitInfoMemberInfos 	
		(UnitInfoType,				UnitMemberInfoType,					NumMembers)
SELECT	UnitInfoType,	UnitMemberInfoType, 	7
FROM ArtDefine_UnitInfoMemberInfos WHERE UnitInfoType = 'ART_DEF_UNIT_GREAT_WAR_INFANTRY';
------------------------------	
-- ArtDefine_UnitMemberCombats
------------------------------	
INSERT INTO ArtDefine_UnitMemberCombats 
		(UnitMemberType,					EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
SELECT	UnitMemberType,	EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_GREAT_WAR_INFANTRY';
------------------------------	
-- ArtDefine_UnitMemberCombatWeapons
------------------------------	
INSERT INTO ArtDefine_UnitMemberCombatWeapons	
		(UnitMemberType,					"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
SELECT	UnitMemberType,	"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_GREAT_WAR_INFANTRY';
------------------------------	
-- ArtDefine_UnitMemberInfos
------------------------------		
INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 								Scale,	ZOffset, Domain, Model, 				MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	Type,	Scale,	ZOffset, Domain, Model,	MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_GREAT_WAR_INFANTRY';
--==========================================================================================================================	
--==========================================================================================================================	
