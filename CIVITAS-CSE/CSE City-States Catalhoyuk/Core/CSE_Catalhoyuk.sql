/*
	Catalhoyuk
	~ Receive the Leather and Wool Luxury resources (not tradeable), which provide 6 Amenities each.

	Authors: thecrazyscotsman, ChimpanG
*/

-----------------------------------------------
-- ModCheck
-----------------------------------------------

INSERT INTO ModCheck (ModType) VALUES ('CSE_CATALHOYUK');

-----------------------------------------------
-- CSE_Master

-- NOTES:
-- FallbackType is used when the CityStateType is unavailable
-- FallbackCity is used in cases where a modded civilization or leader uses the same city as their Capital.
-----------------------------------------------

INSERT INTO CSE_Master
		(CityState,			ProposedType,		FallbackType,	FallbackCity,	Ethnicity			)
VALUES	('CSE_CATALHOYUK',	'AGRICULTURAL',		'TRADE',		'KONYA',		'ETHNICITY_MEDIT'	);

-----------------------------------------------
-- CSE_StartBias

-- NOTES:
-- ObjectType can be TERRAIN, FEATURE, RESOURCE or RIVER
-- Object is the latter part of the object, except RIVER which should be NULL
-----------------------------------------------

INSERT INTO CSE_StartBias
		(CityState,			Type,			Object,			Tier	)
VALUES	('CSE_CATALHOYUK',	'TERRAIN',		'PLAINS',		5		),
		('CSE_CATALHOYUK',	'TERRAIN',		'PLAINS_HILLS',	5		);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,					ModifierId										)
VALUES	('TRAIT_CSE_CATALHOYUK',	'CSE_CATALHOYUK_SUZERAIN_LEATHER_LUXURY_ATTACH'	),
		('TRAIT_CSE_CATALHOYUK',	'CSE_CATALHOYUK_SUZERAIN_WOOL_LUXURY_ATTACH'	);

INSERT INTO TraitModifiers (TraitType, ModifierId)
SELECT 'TRAIT_CSE_CATALHOYUK', 'CSE_CATALHOYUK_LEATHER_LUXURY'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'RECEIVE_OWN_BONUS' AND Value = 1);

INSERT INTO TraitModifiers (TraitType, ModifierId)
SELECT 'TRAIT_CSE_CATALHOYUK', 'CSE_CATALHOYUK_WOOL_LUXURY'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'RECEIVE_OWN_BONUS' AND Value = 1);

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type, 						Kind			)
VALUES	('RESOURCE_CSE_LEATHER',	'KIND_RESOURCE'	),
		('RESOURCE_CSE_WOOL',		'KIND_RESOURCE'	);

-----------------------------------------------
-- Resources
-----------------------------------------------

INSERT INTO Resources
		(ResourceType, 				Name, 								ResourceClassType, 			Happiness,	Frequency	)
VALUES	('RESOURCE_CSE_LEATHER',	'LOC_RESOURCE_CSE_LEATHER_NAME',	'RESOURCECLASS_LUXURY', 	6, 			0			),
		('RESOURCE_CSE_WOOL',		'LOC_RESOURCE_CSE_WOOL_NAME',		'RESOURCECLASS_LUXURY', 	6, 			0			);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,										ModifierType,									SubjectRequirementSetId	)
VALUES	('CSE_CATALHOYUK_SUZERAIN_LEATHER_LUXURY_ATTACH',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',			'PLAYER_IS_SUZERAIN'	),
		('CSE_CATALHOYUK_SUZERAIN_WOOL_LUXURY_ATTACH',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',			'PLAYER_IS_SUZERAIN'	),
		('CSE_CATALHOYUK_LEATHER_LUXURY',					'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT',	NULL					),
		('CSE_CATALHOYUK_WOOL_LUXURY',						'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT',	NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value							)
VALUES	('CSE_CATALHOYUK_SUZERAIN_LEATHER_LUXURY_ATTACH',	'ModifierId',	'CSE_CATALHOYUK_LEATHER_LUXURY'	),
		('CSE_CATALHOYUK_SUZERAIN_WOOL_LUXURY_ATTACH',		'ModifierId',	'CSE_CATALHOYUK_WOOL_LUXURY'	),
		('CSE_CATALHOYUK_LEATHER_LUXURY',					'ResourceType',	'RESOURCE_CSE_LEATHER'			),
		('CSE_CATALHOYUK_LEATHER_LUXURY',					'Amount',		1								),
		('CSE_CATALHOYUK_WOOL_LUXURY',						'ResourceType',	'RESOURCE_CSE_WOOL'				),
		('CSE_CATALHOYUK_WOOL_LUXURY',						'Amount',		1								);