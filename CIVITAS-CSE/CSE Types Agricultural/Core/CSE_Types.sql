/*
	Type
	Authors: thecrazyscotsman, ChimpanG
*/

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers 
		(TraitType, 						ModifierId										)
VALUES	('MINOR_CIV_AGRICULTURAL_TRAIT',	'MODIFIER_CSE_AGRICULTURAL_SEND_TRADE_BONUS'	),
		('MINOR_CIV_AGRICULTURAL_TRAIT',	'MODIFIER_CSE_AGRICULTURAL_CAPITAL_FOOD'		),
		('MINOR_CIV_AGRICULTURAL_TRAIT',	'MODIFIER_CSE_AGRICULTURAL_GRANARY_FOOD'		),
		('MINOR_CIV_AGRICULTURAL_TRAIT',	'MODIFIER_CSE_AGRICULTURAL_SEWER_FOOD'			);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers 
		(ModifierId,									ModifierType,														SubjectRequirementSetId			)
VALUES	('MODIFIER_CSE_AGRICULTURAL_SEND_TRADE_BONUS',	'MODIFIER_CSE_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',	NULL							),
		('MODIFIER_CSE_AGRICULTURAL_CAPITAL_FOOD',		'MODIFIER_CSE_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_SMALL_INFLUENCE'	),
		('MODIFIER_CSE_AGRICULTURAL_CAPITAL_FOOD_MOD',	'MODIFIER_CSE_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',		NULL							),
		('MODIFIER_CSE_AGRICULTURAL_GRANARY_FOOD',		'MODIFIER_CSE_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_MEDIUM_INFLUENCE'	),
		('MODIFIER_CSE_AGRICULTURAL_GRANARY_FOOD_MOD',	'MODIFIER_CSE_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							),
		('MODIFIER_CSE_AGRICULTURAL_SEWER_FOOD',		'MODIFIER_CSE_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGE_INFLUENCE'	),
		('MODIFIER_CSE_AGRICULTURAL_SEWER_FOOD_MOD',	'MODIFIER_CSE_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							);
		
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,				Value											)
VALUES	('MODIFIER_CSE_AGRICULTURAL_SEND_TRADE_BONUS',	'YieldType',		'YIELD_FOOD'									),
		('MODIFIER_CSE_AGRICULTURAL_SEND_TRADE_BONUS',	'Amount',			2												),
		('MODIFIER_CSE_AGRICULTURAL_CAPITAL_FOOD',		'ModifierId',		'MODIFIER_CSE_AGRICULTURAL_CAPITAL_FOOD_MOD'	),
		('MODIFIER_CSE_AGRICULTURAL_CAPITAL_FOOD_MOD',	'YieldType',		'YIELD_FOOD'									),
		('MODIFIER_CSE_AGRICULTURAL_CAPITAL_FOOD_MOD',	'Amount',			2												),
		('MODIFIER_CSE_AGRICULTURAL_GRANARY_FOOD',		'ModifierId',		'MODIFIER_CSE_AGRICULTURAL_GRANARY_FOOD_MOD'	),
		('MODIFIER_CSE_AGRICULTURAL_GRANARY_FOOD_MOD',	'BuildingType',		'BUILDING_GRANARY'								),
		('MODIFIER_CSE_AGRICULTURAL_GRANARY_FOOD_MOD',	'YieldType',		'YIELD_FOOD'									),
		('MODIFIER_CSE_AGRICULTURAL_GRANARY_FOOD_MOD',	'Amount',			2												),
		('MODIFIER_CSE_AGRICULTURAL_GRANARY_FOOD_MOD',	'CityStatesOnly',	1												),
		('MODIFIER_CSE_AGRICULTURAL_SEWER_FOOD',		'ModifierId',		'MODIFIER_CSE_AGRICULTURAL_SEWER_FOOD_MOD'		),
		('MODIFIER_CSE_AGRICULTURAL_SEWER_FOOD_MOD',	'BuildingType',		'BUILDING_SEWER'								),
		('MODIFIER_CSE_AGRICULTURAL_SEWER_FOOD_MOD',	'YieldType',		'YIELD_FOOD'									),
		('MODIFIER_CSE_AGRICULTURAL_SEWER_FOOD_MOD',	'Amount',			2												),
		('MODIFIER_CSE_AGRICULTURAL_SEWER_FOOD_MOD',	'CityStatesOnly',	1												);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings 
		(ModifierId, 								Context, 	Text												)
VALUES	('MODIFIER_CSE_AGRICULTURAL_CAPITAL_FOOD',	'Preview', 	'LOC_CSE_AGRICULTURAL_TRAIT_SMALL_INFLUENCE_BONUS'	),
		('MODIFIER_CSE_AGRICULTURAL_GRANARY_FOOD',	'Preview', 	'LOC_CSE_AGRICULTURAL_TRAIT_MEDIUM_INFLUENCE_BONUS'	),
		('MODIFIER_CSE_AGRICULTURAL_SEWER_FOOD',	'Preview', 	'LOC_CSE_AGRICULTURAL_TRAIT_LARGE_INFLUENCE_BONUS'	);

-----------------------------------------------
-- Colors
-----------------------------------------------

INSERT INTO Colors 
		(Type,												Color				)
VALUES	('COLOR_PLAYER_CITY_STATE_AGRICULTURAL_SECONDARY',	'193,231,115,255'	);

-----------------------------------------------
-- CivilopediaPageGroups
-----------------------------------------------

INSERT INTO CivilopediaPageGroups 
		(SectionID, 	PageGroupId,			Name, 														VisibleIfEmpty, SortIndex	)
VALUES	('CITYSTATES',	'CSE_AGRICULTURAL',		'LOC_PEDIA_CITYSTATES_PAGEGROUP_CSE_AGRICULTURAL_NAME',		0,				10			);

-----------------------------------------------
-- C15_MinorCivilization_CityStateClassTypes
-----------------------------------------------

INSERT INTO C15_MinorCivilization_CityStateClassTypes
		(Type,				TypeName,									LeaderType,								SmallBonus,											MedBonus,												LargeBonus,											BonusIcon,								TypeIcon							)
VALUES	('AGRICULTURAL',	'LOC_CITY_STATES_TYPE_CSE_AGRICULTURAL',	'LEADER_MINOR_CIV_CSE_AGRICULTURAL',	'LOC_CSE_AGRICULTURAL_TRAIT_SMALL_INFLUENCE_BONUS',	'LOC_CSE_AGRICULTURAL_TRAIT_MEDIUM_INFLUENCE_BONUS',	'LOC_CSE_AGRICULTURAL_TRAIT_LARGE_INFLUENCE_BONUS',	'ICON_ENVOY_BONUS_CSE_AGRICULTURAL',	'ICON_CITYSTATE_CSE_AGRICULTURAL'	);