/*
	Master
	Authors: ChimpanG
*/

-----------------------------------------------
-- ModCheck
-----------------------------------------------

INSERT INTO ModValidation (Version) VALUES ('CSE_AZCAPOTZALCO');

-----------------------------------------------
-- CSE_Master

-- NOTES:
-- FallbackType is used when the CityStateType is unavailable
-- FallbackCity is used in cases where a modded civilization or leader uses the same city as their Capital.
-----------------------------------------------

INSERT INTO CSE_Master
		(CityState,				ProposedType,	FallbackType,	FallbackCity,	Ethnicity,				Requires,	Removed	)
VALUES	('CSE_AZCAPOTZALCO',	'CSE_CONSULAR',	'SCIENTIFIC',	'CHICOMOZTOC',	'ETHNICITY_SOUTHAM',	'XP1',		NULL	);

-----------------------------------------------
-- CSE_StartBias

-- NOTES:
-- ObjectType can be TERRAIN, FEATURE, RESOURCE or RIVER
-- Object is the latter part of the object, except RIVER which should be NULL
-----------------------------------------------

INSERT INTO CSE_StartBias
		(CityState,				Type,		Object,		Tier	)
VALUES	('CSE_AZCAPOTZALCO',	'FEATURE',	'JUNGLE',	5		);