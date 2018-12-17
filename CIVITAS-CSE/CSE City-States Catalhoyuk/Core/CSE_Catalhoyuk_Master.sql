/*
	Master
	Authors: ChimpanG
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
		(CityState,			ProposedType,			FallbackType,	FallbackCity,	Ethnicity			)
VALUES	('CSE_CATALHOYUK',	'CSE_AGRICULTURAL',		'TRADE',		'KONYA',		'ETHNICITY_MEDIT'	);

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