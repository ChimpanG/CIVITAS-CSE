/*
	Colors
	Authors: ChimpanG
*/

-----------------------------------------------
-- Colors
-----------------------------------------------

REPLACE INTO Colors
		(Type,												Color				)
VALUES	('COLOR_PLAYER_CITY_STATE_PRIMARY',					'32,32,32,255'		),
		('COLOR_PLAYER_CITY_STATE_SCIENCE_SECONDARY',		'50,202,237,255'	),
		('COLOR_PLAYER_CITY_STATE_CULTURAL_SECONDARY',		'214,102,255,255'	),
		('COLOR_PLAYER_CITY_STATE_RELIGIOUS_SECONDARY',		'255,246,235,255'	),
		('COLOR_PLAYER_CITY_STATE_TRADE_SECONDARY',			'255,206,108,255'	),
		('COLOR_PLAYER_CITY_STATE_INDUSTRIAL_SECONDARY',	'255,149,77,255'	),
		('COLOR_PLAYER_CITY_STATE_MILITARISTIC_SECONDARY',	'255,82,82,255'		);

-----------------------------------------------
-- PlayerColors
-----------------------------------------------

UPDATE	CSE_ColorFallbacks
SET		Required = 
			CASE
				WHEN Requires = 'XP1' AND NOT EXISTS (SELECT * FROM ModValidation WHERE Version = 'XP1') AND EXISTS (SELECT * FROM ModValidation WHERE Version = 'XP2')
				THEN 'XP2'
				ELSE 'XP1'
			END;

UPDATE	CSE_ColorFallbacks
SET		Discard = 1
WHERE	Required NOT IN (SELECT * FROM ModValidation)
OR		Removed IN (SELECT * FROM ModValidation);

DELETE FROM CSE_ColorFallbacks
WHERE	Discard = 1;

UPDATE	CSE_ColorFallbacks
SET		Reference = (SELECT a.Reference FROM CSE_Colors AS a WHERE a.CityStateType = CSE_ColorFallbacks.CityStateType);

UPDATE	PlayerColors
SET		SecondaryColor = (SELECT a.Reference FROM CSE_ColorFallbacks AS a WHERE a.CivilizationType = PlayerColors.Type)
WHERE	Type IN (SELECT CivilizationType FROM CSE_ColorFallbacks);