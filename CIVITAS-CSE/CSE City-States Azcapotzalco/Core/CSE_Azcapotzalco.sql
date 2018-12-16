/*
	Azcapotzalco
	~ Earn Alliance Points +25% faster

	Authors: thecrazyscotsman, ChimpanG
*/

-----------------------------------------------
-- ModCheck
-----------------------------------------------

INSERT INTO ModCheck (ModType) VALUES ('CSE_AZCAPOTZALCO');

-----------------------------------------------
-- CSE_Master

-- NOTES:
-- FallbackType is used when the CityStateType is unavailable
-- FallbackCity is used in cases where a modded civilization or leader uses the same city as their Capital.
-----------------------------------------------

INSERT INTO CSE_Master
		(CityState,				ProposedType,	FallbackType,	FallbackCity,	Ethnicity			)
VALUES	('CSE_AZCAPOTZALCO',	'CONSULAR',		'SCIENCE',		NULL,			'ETHNICITY_SOUTHAM'	);

-----------------------------------------------
-- CSE_StartBias

-- NOTES:
-- ObjectType can be TERRAIN, FEATURE, RESOURCE or RIVER
-- Object is the latter part of the object, except RIVER which should be NULL
-----------------------------------------------

INSERT INTO CSE_StartBias
		(CityState,				Type,		Object,		Tier	)
VALUES	('CSE_AZCAPOTZALCO',	'FEATURE',	'JUNG;E',	3		);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,					ModifierId									)
VALUES	('CSE_AZCAPOTZALCO_TRAIT',	'CSE_AZCAPOTZALCO_SUZERAIN_ALLIANCE_POINTS'	);	

INSERT INTO TraitModifiers (TraitType, ModifierId)
SELECT	'CSE_AZCAPOTZALCO_TRAIT', 'CSE_AZCAPOTZALCO_ALLIANCE_POINTS'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'RECEIVE_OWN_BONUS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,									ModifierType,					SubjectRequirementSetId			)
VALUES	('CSE_AZCAPOTZALCO_SUZERAIN_ALLIANCE_POINTS',	'MODTYPE_CSE_ATTACH_PLAYERS',	'REQSET_CSE_PLAYER_IS_SUZERAIN'	),
		('CSE_AZCAPOTZALCO_ALLIANCE_POINTS',			'MODTYPE_CSE_ALLIANCE_POINTS',	NULL							);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value								)
VALUES	('CSE_AZCAPOTZALCO_SUZERAIN_ALLIANCE_POINTS',	'ModifierId',	'CSE_AZCAPOTZALCO_ALLIANCE_POINTS'	),
		('CSE_AZCAPOTZALCO_ALLIANCE_POINTS',			'Amount',		1									);