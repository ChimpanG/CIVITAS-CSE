/*
	Colors
	Authors: ChimpanG
*/

-----------------------------------------------
-- ModValidation
-----------------------------------------------

INSERT INTO ModValidation
		(Version				)
VALUES	('CSE_ENTERTAINMENT'	);

-----------------------------------------------
-- CSE_Colors
-----------------------------------------------

INSERT INTO CSE_Colors
		(CityStateType,			Reference												)
VALUES	('CSE_ENTERTAINMENT',	'COLOR_PLAYER_CITY_STATE_CSE_ENTERTAINMENT_SECONDARY'	);

-----------------------------------------------
-- Colors
-----------------------------------------------

INSERT INTO Colors
		(Type,													Color				)
VALUES	('COLOR_PLAYER_CITY_STATE_CSE_ENTERTAINMENT_SECONDARY',	'255,100,170,255'	);

-----------------------------------------------
-- CSE_ColorFallbacks
-----------------------------------------------

UPDATE	CSE_ColorFallbacks
SET		Removed = 'CSE_ENTERTAINMENT'
WHERE	CivilizationType IN ('CIVILIZATION_MEXICO_CITY');

REPLACE INTO CSE_ColorFallbacks
		(CivilizationType,				CityStateType,			Required,	Version,				Removed	)
VALUES	('CIVILIZATION_MEXICO_CITY',	'CSE_ENTERTAINMENT',	'XP2',		'CSE_ENTERTAINMENT',	NULL	);