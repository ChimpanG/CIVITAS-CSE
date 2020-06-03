/*
	Singapore
	~ Your cities receive +1 Science and +1 Culture for each foreign civilization they have a Trade Route to.

	Authors: ChimpanG
*/

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,							ModifierId								)
VALUES	('MINOR_CIV_CSE_SINGAPORE_TRAIT',	'CSE_SINGAPORE_SUZERAIN_TRADE_SCIENCE'	),
		('MINOR_CIV_CSE_SINGAPORE_TRAIT',	'CSE_SINGAPORE_SUZERAIN_TRADE_CULTURE'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,								ModifierType,														SubjectRequirementSetId	)
VALUES	('CSE_SINGAPORE_SUZERAIN_TRADE_SCIENCE',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',								'PLAYER_IS_SUZERAIN'	),
		('CSE_SINGAPORE_SUZERAIN_TRADE_CULTURE',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',								'PLAYER_IS_SUZERAIN'	),
		('CSE_SINGAPORE_TRADE_SCIENCE',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_PER_MAJOR_TRADE_PARTNER',	NULL					),
		('CSE_SINGAPORE_TRADE_CULTURE',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_PER_MAJOR_TRADE_PARTNER',	NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value							)
VALUES	('CSE_SINGAPORE_SUZERAIN_TRADE_SCIENCE',	'ModifierId',	'CSE_SINGAPORE_TRADE_SCIENCE'	),
		('CSE_SINGAPORE_TRADE_SCIENCE',				'YieldType',	'YIELD_SCIENCE'					),
		('CSE_SINGAPORE_TRADE_SCIENCE',				'Amount',		1								),
		('CSE_SINGAPORE_SUZERAIN_TRADE_CULTURE',	'ModifierId',	'CSE_SINGAPORE_TRADE_CULTURE'	),
		('CSE_SINGAPORE_TRADE_CULTURE',				'YieldType',	'YIELD_CULTURE'					),
		('CSE_SINGAPORE_TRADE_CULTURE',				'Amount',		1								);