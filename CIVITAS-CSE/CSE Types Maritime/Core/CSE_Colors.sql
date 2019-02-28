/*
	Colors
	Authors: ChimpanG
*/

-----------------------------------------------
-- ModValidation
-----------------------------------------------

INSERT INTO ModValidation
		(Version		)
VALUES	('CSE_MARITIME'	);

-----------------------------------------------
-- CSE_Colors
-----------------------------------------------

INSERT INTO CSE_Colors
		(CityStateType,		Reference											)
VALUES	('CSE_MARITIME',	'COLOR_PLAYER_CITY_STATE_CSE_MARITIME_SECONDARY'	);

-----------------------------------------------
-- Colors
-----------------------------------------------

INSERT INTO Colors
		(Type,												Color				)
VALUES	('COLOR_PLAYER_CITY_STATE_CSE_MARITIME_SECONDARY',	'88,220,195,255'	);

-----------------------------------------------
-- CSE_ColorFallbacks
-----------------------------------------------

UPDATE	CSE_ColorFallbacks
SET		Removed = 'CSE_MARITIME'
WHERE	CivilizationType IN ('CIVILIZATION_JAKARTA','CIVILIZATION_LISBON');

REPLACE INTO CSE_ColorFallbacks
		(CivilizationType,			CityStateType,	Required,	Version,		Removed	)
VALUES	('CIVILIZATION_JAKARTA',	'CSE_MARITIME',	'BASE',		'CSE_MARITIME',	NULL	),
		('CIVILIZATION_LISBON',		'CSE_MARITIME',	'BASE',		'CSE_MARITIME',	NULL	);