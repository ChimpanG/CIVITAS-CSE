/*
	New City State Template
	Authors: ChimpanG

	INSTRUCTIONS:
	Step 1 ~ Use Find & Replace (CTRL + H) on the current document to replace EXAMPLE with your own reference.
	Step 2 ~ Update the CSE_Master and CSE_StartBias tables in Section B.
	Step 3 ~ Code your suzerain bonus in Section C.
*/




-- SECTION A

-----------------------------------------------
-- New Tables
-----------------------------------------------

CREATE TABLE IF NOT EXISTS ModCheck
	(
	ModType					TEXT		NOT NULL,
	Active					BOOLEAN		DEFAULT 1,

	PRIMARY KEY	(ModType)			
	);

-----------------------------------------------
-- ModCheck
-----------------------------------------------

INSERT INTO ModCheck (ModType) VALUES ('CSE_EXAMPLE');




-- SECTION B

-----------------------------------------------
-- CSE_Master

-- NOTES:
-- FallbackType is used when the CityStateType is unavailable
-- FallbackCity is used in cases where a modded civilization or leader uses the same city as their Capital.
-- Don't forget to include the fallback city in your localisation file.
-----------------------------------------------

INSERT INTO CSE_Master
		(CityState,		CityStateType,	FallbackType,	FallbackCity		Ethnicity			)
VALUES	('EXAMPLE',		'AGRICULTURAL',	'TRADE',		'OTHER_EXAMPLE',	'ETHNICITY_MEDIT'	);

-----------------------------------------------
-- CSE_StartBias

-- NOTES:
-- ObjectType can be TERRAIN, FEATURE, RESOURCE or RIVER
-- Object is the latter part of the object, except RIVER which should be NULL
-----------------------------------------------

INSERT INTO CSE_StartBias
		(CityState,		ObjectType,		Object,				Tier	)
VALUES	('EXAMPLE',		'TERRAIN',		'PLAINS',			5		),
		('EXAMPLE',		'TERRAIN',		'PLAINS_HILLS',		5		),
		('EXAMPLE',		'FEATURE',		'FOREST',			3		),
		('EXAMPLE',		'RESOURCE',		'IRON',				5		),
		('EXAMPLE',		'RIVER',		NULL,				3		);




-- SECTION C

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,				ModifierId										)
VALUES	('TRAIT_CSE_EXAMPLE',	'CSE_EXAMPLE_SUZERAIN_LEATHER_LUXURY_ATTACH'	),
		('TRAIT_CSE_EXAMPLE',	'CSE_EXAMPLE_SUZERAIN_WOOL_LUXURY_ATTACH'		);

INSERT INTO TraitModifiers (TraitType, ModifierId)
SELECT 'TRAIT_CSE_EXAMPLE', 'CSE_EXAMPLE_LEATHER_LUXURY'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'RECEIVE_OWN_BONUS' AND Value = 1);

INSERT INTO TraitModifiers (TraitType, ModifierId)
SELECT 'TRAIT_CSE_EXAMPLE', 'CSE_EXAMPLE_WOOL_LUXURY'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'RECEIVE_OWN_BONUS' AND Value = 1);

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type, 						Kind			)
VALUES	('CSE_RESOURCE_LEATHER',	'KIND_RESOURCE'	),
		('CSE_RESOURCE_WOOL',		'KIND_RESOURCE'	);

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
		(ModifierId,									ModifierType,									SubjectRequirementSetId	)
VALUES	('CSE_EXAMPLE_SUZERAIN_LEATHER_LUXURY_ATTACH',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',			'PLAYER_IS_SUZERAIN'	),
		('CSE_EXAMPLE_SUZERAIN_WOOL_LUXURY_ATTACH',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',			'PLAYER_IS_SUZERAIN'	),
		('CSE_EXAMPLE_LEATHER_LUXURY',					'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT',	NULL					),
		('CSE_EXAMPLE_WOOL_LUXURY',						'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT',	NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value							)
VALUES	('CSE_EXAMPLE_SUZERAIN_LEATHER_LUXURY_ATTACH',	'ModifierId',	'CSE_EXAMPLE_LEATHER_LUXURY'	),
		('CSE_EXAMPLE_SUZERAIN_WOOL_LUXURY_ATTACH',		'ModifierId',	'CSE_EXAMPLE_WOOL_LUXURY'		),
		('CSE_EXAMPLE_LEATHER_LUXURY',					'ResourceType',	'RESOURCE_CSE_LEATHER'			),
		('CSE_EXAMPLE_LEATHER_LUXURY',					'Amount',		1								),
		('CSE_EXAMPLE_WOOL_LUXURY',						'ResourceType',	'RESOURCE_CSE_WOOL'				),
		('CSE_EXAMPLE_WOOL_LUXURY',						'Amount',		1								);