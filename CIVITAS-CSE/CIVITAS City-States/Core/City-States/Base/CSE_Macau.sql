/*
	Macau
	~ +25% Tourism toward civilizations to which you have a Trade Route.

	Authors: ChimpanG
*/

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,						ModifierId							)
VALUES	('MINOR_CIV_CSE_MACAU_TRAIT',	'CSE_MACAU_SUZERAIN_TRADE_TOURISM'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,							ModifierType,											SubjectRequirementSetId	)
VALUES	('CSE_MACAU_SUZERAIN_TRADE_TOURISM',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',					'PLAYER_IS_SUZERAIN'	),
		('CSE_MACAU_TRADE_TOURISM',				'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_TOURISM_MODIFIER',	NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,							Name,			Value						)
VALUES	('CSE_MACAU_SUZERAIN_TRADE_TOURISM',	'ModifierId',	'CSE_MACAU_TRADE_TOURISM'	),
		('CSE_MACAU_TRADE_TOURISM',				'Amount',		25							);