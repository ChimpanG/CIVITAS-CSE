/*
	Colors
	Authors: ChimpanG
*/

-----------------------------------------------
-- ModValidation
-----------------------------------------------

INSERT INTO ModValidation
		(Version			)
VALUES	('CSE_CATALHOYUK'	);

-----------------------------------------------
-- CSE_ColorFallbacks
-----------------------------------------------

INSERT INTO CSE_ColorFallbacks
		(CivilizationType,				CityStateType,		Required,	Version,			Removed				)
VALUES	('CIVILIZATION_CSE_CATALHOYUK',	'TRADE',			'BASE',		NULL,				'CSE_AGRICULTURAL'	),
		('CIVILIZATION_CSE_CATALHOYUK',	'CSE_AGRICULTURAL',	'BASE',		'CSE_AGRICULTURAL',	NULL				);