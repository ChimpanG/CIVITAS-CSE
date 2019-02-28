/*
	Colors
	Authors: ChimpanG
*/

-----------------------------------------------
-- ModValidation
-----------------------------------------------

INSERT INTO ModValidation
		(Version			)
VALUES	('CSE_AZCAPOTZALCO'	);

-----------------------------------------------
-- CSE_ColorFallbacks
-----------------------------------------------

INSERT INTO CSE_ColorFallbacks
		(CivilizationType,					CityStateType,		Required,	Version,		Removed			)
VALUES	('CIVILIZATION_CSE_AZCAPOTZALCO',	'SCIENTIFIC',		'XP1',		NULL,			'CSE_CONSULAR'	),
		('CIVILIZATION_CSE_AZCAPOTZALCO',	'CSE_CONSULAR',		'XP1',		'CSE_CONSULAR',	NULL			);