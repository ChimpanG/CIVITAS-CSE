/*
	Ampi
	~ Receive the Glass luxury resource, which provide 6 Amenities. Plantations yield +1 Production.

	Authors: thecrazyscotsman, ChimpanG
*/

-----------------------------------------------
-- ModCheck
-----------------------------------------------

INSERT INTO ModCheck (ModType) VALUES ('CSE_AMPI');

-----------------------------------------------
-- CSE_Master

-- NOTES:
-- FallbackType is used when the CityStateType is unavailable
-- FallbackCity is used in cases where a modded civilization or leader uses the same city as their Capital.
-----------------------------------------------

INSERT INTO CSE_Master
		(CityState,		ProposedType,	FallbackType,	FallbackCity,	Ethnicity			)
VALUES	('CSE_AMPI',	'MARITIME',		'TRADE',		NULL,			'ETHNICITY_MEDIT'	);

-----------------------------------------------
-- CSE_StartBias

-- NOTES:
-- ObjectType can be TERRAIN, FEATURE, RESOURCE or RIVER
-- Object is the latter part of the object, except RIVER which should be NULL
-----------------------------------------------

INSERT INTO CSE_StartBias
		(CityState,		Type,			Object,			Tier	)
VALUES	('CSE_AMPI',	'TERRAIN',		'COAST',		1		),
		('CSE_AMPI',	'TERRAIN',		'GRASS',		5		),
		('CSE_AMPI',	'TERRAIN',		'GRASS_HILLS',	5		);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,			ModifierId									)
VALUES	('CSE_AMPI_TRAIT',	'CSE_AMPI_SUZERAIN_GLASS_LUXURY_ATTACH'		),
		('CSE_AMPI_TRAIT',	'CSE_AMPI_SUZERAIN_PLANTATION_PRODUCTION'	);

INSERT INTO TraitModifiers (TraitType, ModifierId)
SELECT 'CSE_AMPI_TRAIT', 'CSE_AMPI_GLASS_LUXURY'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'RECEIVE_OWN_BONUS' AND Value = 1);

INSERT INTO TraitModifiers (TraitType, ModifierId)
SELECT 'CSE_AMPI_TRAIT', 'CSE_AMPI_PLANTATION_PRODUCTION'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'RECEIVE_OWN_BONUS' AND Value = 1);

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type, 					Kind			)
VALUES	('RESOURCE_CSE_GLASS', 	'KIND_RESOURCE'	);

-----------------------------------------------
-- Resources
-----------------------------------------------

INSERT INTO Resources
		(ResourceType, 			Name, 							ResourceClassType, 			Happiness,	Frequency	)
VALUES	('RESOURCE_CSE_GLASS',	'LOC_RESOURCE_CSE_GLASS_NAME',	'RESOURCECLASS_LUXURY', 	6, 			0			);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,								ModifierType,									SubjectRequirementSetId				)
VALUES	('CSE_AMPI_SUZERAIN_GLASS_LUXURY_ATTACH',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',			'PLAYER_IS_SUZERAIN'				),
		('CSE_AMPI_SUZERAIN_PLANTATION_PRODUCTION',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',			'PLAYER_IS_SUZERAIN'				),
		('CSE_AMPI_GLASS_LUXURY',					'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT',	NULL								),
		('CSE_AMPI_PLANTATION_PRODUCTION',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'REQSET_CSE_PLOT_HAS_PLANTATION'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value								)
VALUES	('CSE_AMPI_SUZERAIN_GLASS_LUXURY_ATTACH',	'ModifierId',	'CSE_AMPI_GLASS_LUXURY'				),
		('CSE_AMPI_SUZERAIN_PLANTATION_PRODUCTION',	'ModifierId',	'CSE_AMPI_PLANTATION_PRODUCTION'	),
		('CSE_AMPI_GLASS_LUXURY',					'ResourceType',	'RESOURCE_CSE_GLASS'				),
		('CSE_AMPI_GLASS_LUXURY',					'Amount',		1									),
		('CSE_AMPI_PLANTATION_PRODUCTION',			'YieldType',	'YIELD_PRODUCTION'					),
		('CSE_AMPI_PLANTATION_PRODUCTION',			'Amount',		1									);