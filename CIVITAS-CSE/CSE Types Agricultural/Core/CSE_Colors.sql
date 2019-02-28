/*
	Colors
	Authors: ChimpanG
*/

-----------------------------------------------
-- ModValidation
-----------------------------------------------

INSERT INTO ModValidation
		(Version			)
VALUES	('CSE_AGRICULTURAL'	);

-----------------------------------------------
-- CSE_Colors
-----------------------------------------------

INSERT INTO CSE_Colors
		(CityStateType,			Reference												)
VALUES	('CSE_AGRICULTURAL',	'COLOR_PLAYER_CITY_STATE_CSE_AGRICULTURAL_SECONDARY'	);

-----------------------------------------------
-- Colors
-----------------------------------------------

INSERT INTO Colors
		(Type,													Color				)
VALUES	('COLOR_PLAYER_CITY_STATE_CSE_AGRICULTURAL_SECONDARY',	'159,226,100,255'	);

-----------------------------------------------
-- CSE_ColorFallbacks
-----------------------------------------------

UPDATE	CSE_ColorFallbacks
SET		Removed = 'CSE_AGRICULTURAL'
WHERE	CivilizationType IN ('CIVILIZATION_BUENOS_AIRES');

REPLACE INTO CSE_ColorFallbacks
		(CivilizationType,				CityStateType,			Required,	Version,			Removed	)
VALUES	('CIVILIZATION_BUENOS_AIRES',	'CSE_AGRICULTURAL',		'BASE',		'CSE_AGRICULTURAL',	NULL	);