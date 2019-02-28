/*
	Arvad
	~ Your City Centers gain +1 Food and +1 Production for each adjacent Coast tile.

	Authors: thecrazyscotsman, ChimpanG
*/

-----------------------------------------------
-- ModCheck
-----------------------------------------------

INSERT INTO ModValidation (Version) VALUES ('CSE_ARVAD');

-----------------------------------------------
-- CSE_Master

-- NOTES:
-- FallbackType is used when the CityStateType is unavailable
-- FallbackCity is used in cases where a modded civilization or leader uses the same city as their Capital.
-----------------------------------------------

INSERT INTO CSE_Master
		(CityState,		ProposedType,	FallbackType,	FallbackCity,	Ethnicity			)
VALUES	('CSE_ARVAD',	'MARITIME',		'INDUSTRIAL',	NULL,			'ETHNICITY_MEDIT'	);

-----------------------------------------------
-- CSE_StartBias

-- NOTES:
-- ObjectType can be TERRAIN, FEATURE, RESOURCE or RIVER
-- Object is the latter part of the object, except RIVER which should be NULL
-----------------------------------------------

INSERT INTO CSE_StartBias
		(CityState,		Type,			Object,			Tier	)
VALUES	('CSE_ARVAD',	'TERRAIN',		'COAST',		1		),
		('CSE_ARVAD',	'TERRAIN',		'DESERT',		5		),
		('CSE_ARVAD',	'TERRAIN',		'DESERT_HILLS',	5		);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,			ModifierId									)
VALUES	('CSE_ARVAD_TRAIT',	'CSE_ARVAD_SUZERAIN_ADJ_COAST_FOOD'			),
		('CSE_ARVAD_TRAIT',	'CSE_ARVAD_SUZERAIN_ADJ_COAST_PRODUCTION'	);

INSERT INTO TraitModifiers (TraitType, ModifierId)
SELECT	'CSE_ARVAD_TRAIT', 'CSE_ARVAD_ADJ_COAST_FOOD'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'RECEIVE_OWN_BONUS' AND Value = 1);

INSERT INTO TraitModifiers (TraitType, ModifierId)
SELECT	'CSE_ARVAD_TRAIT', 'CSE_ARVAD_ADJ_COAST_PRODUCTION'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'RECEIVE_OWN_BONUS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,								ModifierType,							SubjectRequirementSetId			)
VALUES	('CSE_ARVAD_SUZERAIN_ADJ_COAST_FOOD',		'MODTYPE_CSE_ATTACH_PLAYERS',			'REQSET_CSE_PLAYER_IS_SUZERAIN'	),
		('CSE_ARVAD_SUZERAIN_ADJ_COAST_PRODUCTION',	'MODTYPE_CSE_ATTACH_PLAYERS',			'REQSET_CSE_PLAYER_IS_SUZERAIN'	),
		('CSE_ARVAD_ADJ_COAST_FOOD',				'MODTYPE_CSE_TERRAIN_ADJACENCY_CITIES',	NULL							),
		('CSE_ARVAD_ADJ_COAST_PRODUCTION',			'MODTYPE_CSE_TERRAIN_ADJACENCY_CITIES',	NULL							);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value									)
VALUES	('CSE_ARVAD_SUZERAIN_ADJ_COAST_FOOD',		'ModifierId',	'CSE_ARVAD_ADJ_COAST_FOOD'				),
		('CSE_ARVAD_SUZERAIN_ADJ_COAST_PRODUCTION',	'ModifierId',	'CSE_ARVAD_ADJ_COAST_PRODUCTION'		),
		('CSE_ARVAD_ADJ_COAST_FOOD',				'DistrictType',	'DISTRICT_CITY_CENTER'					),
		('CSE_ARVAD_ADJ_COAST_FOOD',				'TerrainType',	'TERRAIN_COAST'							),
		('CSE_ARVAD_ADJ_COAST_FOOD',				'YieldType',	'YIELD_FOOD'							),
		('CSE_ARVAD_ADJ_COAST_FOOD',				'Amount',		1										),
		('CSE_ARVAD_ADJ_COAST_FOOD',				'Description',	'LOC_CSE_ARVAD_ADJ_COAST_FOOD'			),
		('CSE_ARVAD_ADJ_COAST_PRODUCTION',			'DistrictType',	'DISTRICT_CITY_CENTER'					),
		('CSE_ARVAD_ADJ_COAST_PRODUCTION',			'TerrainType',	'TERRAIN_COAST'							),
		('CSE_ARVAD_ADJ_COAST_PRODUCTION',			'YieldType',	'YIELD_PRODUCTION'						),
		('CSE_ARVAD_ADJ_COAST_PRODUCTION',			'Amount',		1										),
		('CSE_ARVAD_ADJ_COAST_PRODUCTION',			'Description',	'LOC_CSE_ARVAD_ADJ_COAST_PRODUCTION'	);