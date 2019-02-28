/*
	Anuradhapura
	~ Your Builders can construct Cetiya improvements.

	Authors: thecrazyscotsman, ChimpanG
*/

-----------------------------------------------
-- ModCheck
-----------------------------------------------

INSERT INTO ModValidation (Version) VALUES ('CSE_ANURADHAPURA');

-----------------------------------------------
-- CSE_Master

-- NOTES:
-- FallbackType is used when the CityStateType is unavailable
-- FallbackCity is used in cases where a modded civilization or leader uses the same city as their Capital.
-----------------------------------------------

INSERT INTO CSE_Master
		(CityState,				ProposedType,	FallbackType,	FallbackCity,	Ethnicity			)
VALUES	('CSE_ANURADHAPURA',	'SCIENTIFIC',	NULL,			NULL,			'ETHNICITY_MEDIT'	);

-----------------------------------------------
-- CSE_StartBias

-- NOTES:
-- ObjectType can be TERRAIN, FEATURE, RESOURCE or RIVER
-- Object is the latter part of the object, except RIVER which should be NULL
-----------------------------------------------

INSERT INTO CSE_StartBias
		(CityState,				Type,			Object,			Tier	)
VALUES	('CSE_ANURADHAPURA',	'FEATURE',		'JUNGLE',		3		);


-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,					ModifierId							)
VALUES	('CSE_ANURADHAPURA_TRAIT',	'CSE_ANURADHAPURA_SUZERAIN_CETIYA'	);	

INSERT INTO TraitModifiers (TraitType, ModifierId)
SELECT	'CSE_ANURADHAPURA_TRAIT', 'CSE_ANURADHAPURA_CAN_BUILD_CETIYA'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'RECEIVE_OWN_BONUS' AND Value = 1);

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,						Kind				)
VALUES	('IMPROVEMENT_CSE_CETIYA',	'KIND_IMPROVEMENT'	);

-----------------------------------------------
-- Improvements
-----------------------------------------------

INSERT INTO Improvements
		(ImprovementType,			Name,								Description,								Icon,							PlunderType,		PlunderAmount,	Buildable,	TraitType,						SameAdjacentValid,	Appeal	)
VALUES	('IMPROVEMENT_CSE_CETIYA',	'LOC_IMPROVEMENT_CSE_CETIYA_NAME',	'LOC_IMPROVEMENT_CSE_CETIYA_DESCRIPTION',	'ICON_IMPROVEMENT_CSE_CETIYA',	'PLUNDER_FAITH',	25,				1,			'MINOR_CIV_ANURADHAPURA_TRAIT',	0,					1		);

-----------------------------------------------
-- Improvement_ValidTerrains
-----------------------------------------------

INSERT INTO Improvement_ValidTerrains
		(ImprovementType,			TerrainType				)
VALUES	('IMPROVEMENT_CSE_CETIYA',	'TERRAIN_PLAINS'		),
		('IMPROVEMENT_CSE_CETIYA',	'TERRAIN_GRASS'			),
		('IMPROVEMENT_CSE_CETIYA',	'TERRAIN_PLAINS_HILLS'	),
		('IMPROVEMENT_CSE_CETIYA',	'TERRAIN_GRASS_HILLS'	);

-----------------------------------------------
-- Improvement_ValidBuildUnits
-----------------------------------------------

INSERT INTO Improvement_ValidBuildUnits
		(ImprovementType,			UnitType		)
VALUES	('IMPROVEMENT_CSE_CETIYA',	'UNIT_BUILDER'	);

-----------------------------------------------
-- Improvement_YieldChanges
-----------------------------------------------

INSERT INTO Improvement_YieldChanges
		(ImprovementType,			YieldType,			YieldChange	)
VALUES	('IMPROVEMENT_CSE_CETIYA',	'YIELD_CULTURE',	0			),
		('IMPROVEMENT_CSE_CETIYA',	'YIELD_SCIENCE',	0			),
		('IMPROVEMENT_CSE_CETIYA',	'YIELD_FAITH',		2			);

-----------------------------------------------
-- Improvement_Tourism
-----------------------------------------------

INSERT INTO Improvement_Tourism
		(ImprovementType,			TourismSource,				PrereqTech,		ScalingFactor	)
VALUES	('IMPROVEMENT_CSE_CETIYA',	'TOURISMSOURCE_CULTURE',	'TECH_FLIGHT',	100				);

-----------------------------------------------
-- Improvement_Adjacencies
-----------------------------------------------

INSERT INTO Improvement_Adjacencies
		(ImprovementType,			YieldChangeId						)
VALUES	('IMPROVEMENT_CSE_CETIYA',	'ADJ_CSE_CETIYA_CAMPUS'				),
		('IMPROVEMENT_CSE_CETIYA',	'ADJ_CSE_CETIYA_CAMPUS_TECH'		),
		('IMPROVEMENT_CSE_CETIYA',	'ADJ_CSE_CETIYA_THEATER'			),
		('IMPROVEMENT_CSE_CETIYA',	'ADJ_CSE_CETIYA_THEATER_CIVIC'		),
		('IMPROVEMENT_CSE_CETIYA',	'ADJ_CSE_CETIYA_HOLY_SITE'			),
		('IMPROVEMENT_CSE_CETIYA',	'ADJ_CSE_CETIYA_HOLY_SITE_CIVIC'	);

-----------------------------------------------
-- Adjacency_YieldChanges
-----------------------------------------------
		
INSERT INTO Adjacency_YieldChanges
		(ID,								Description,	YieldType,			YieldChange,	TilesRequired,	AdjacentRiver,	AdjacentDistrict,		PrereqCivic,				ObsoleteCivic,				PrereqTech,					ObsoleteTech				)
VALUES	('ADJ_CSE_CETIYA_CAMPUS',			'Placeholder',	'YIELD_SCIENCE',	1,				1,				0,				'DISTRICT_CAMPUS',		NULL,						NULL,						NULL,						'TECH_SCIENTIFIC_THEORY'	),
		('ADJ_CSE_CETIYA_CAMPUS_TECH',		'Placeholder',	'YIELD_SCIENCE',	2,				1,				0,				'DISTRICT_CAMPUS',		NULL,						NULL,						'TECH_SCIENTIFIC_THEORY',	NULL						),
		('ADJ_CSE_CETIYA_THEATER',			'Placeholder',	'YIELD_CULTURE',	1,				1,				0,				'DISTRICT_THEATER',		NULL,						'CIVIC_HUMANISM',			NULL,						NULL						),
		('ADJ_CSE_CETIYA_THEATER_CIVIC',	'Placeholder',	'YIELD_CULTURE',	2,				1,				0,				'DISTRICT_THEATER',		'CIVIC_HUMANISM',			NULL,						NULL,						NULL						),
		('ADJ_CSE_CETIYA_HOLY_SITE',		'Placeholder',	'YIELD_FAITH',		1,				1,				0,				'DISTRICT_HOLY_SITE',	NULL,						'CIVIC_REFORMED_CHURCH',	NULL,						NULL						),
		('ADJ_CSE_CETIYA_HOLY_SITE_CIVIC',	'Placeholder',	'YIELD_FAITH',		2,				1,				0,				'DISTRICT_HOLY_SITE',	'CIVIC_REFORMED_CHURCH',	NULL,						NULL,						NULL						);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,							ModifierType,						SubjectRequirementSetId				)
VALUES	('CSE_ANURADHAPURA_SUZERAIN_CETIYA',	'MODTYPE_CSE_ATTACH_PLAYERS',		'REQSET_CSE_PLAYER_IS_SUZERAIN'		),
		('CSE_ANURADHAPURA_CAN_BUILD_CETIYA',	'MODTYPE_CSE_VALID_IMPROVEMENT',	NULL								);
		
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,				Value								)
VALUES	('CSE_ANURADHAPURA_SUZERAIN_ALLOW_CETIYA',	'ModifierId',		'CSE_ANURADHAPURA_CAN_BUILD_CETIYA'	),
		('CSE_ANURADHAPURA_CAN_BUILD_CETIYA',		'ImprovementType',	'IMPROVEMENT_CSE_CETIYA'			);