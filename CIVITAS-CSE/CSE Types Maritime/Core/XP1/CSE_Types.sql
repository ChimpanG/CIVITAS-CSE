/*
	Type
	Authors: thecrazyscotsman, ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types 
		(Type, 							Kind			)
VALUES	('LEADER_MINOR_CIV_MARITIME',	'KIND_LEADER'	),
		('MINOR_CIV_MARITIME_TRAIT', 	'KIND_TRAIT'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO Leaders 
		(LeaderType, 					Name, 				InheritFrom					)
VALUES	('LEADER_MINOR_CIV_MARITIME',	'LOC_PLACEHOLDER',	'LEADER_MINOR_CIV_DEFAULT'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits 
		(TraitType, 					Name, 									Description									)
VALUES	('MINOR_CIV_MARITIME_TRAIT',	'LOC_MINOR_CIV_MARITIME_TRAIT_NAME',	'LOC_MINOR_CIV_MARITIME_TRAIT_DESCRIPTION'	);

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO LeaderTraits 
		(LeaderType, 					TraitType					)
VALUES	('LEADER_MINOR_CIV_MARITIME',	'MINOR_CIV_MARITIME_TRAIT'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers 
		(TraitType, 					ModifierId									)
VALUES	('MINOR_CIV_MARITIME_TRAIT',	'MODIFIER_MARITIME_SEND_TRADE_BONUS'		),
		('MINOR_CIV_MARITIME_TRAIT',	'MODIFIER_MARITIME_CAPITAL_FOOD'			),
		('MINOR_CIV_MARITIME_TRAIT',	'MODIFIER_MARITIME_CAPITAL_PRODUCTION'		),
		('MINOR_CIV_MARITIME_TRAIT',	'MODIFIER_MARITIME_LIGHTHOUSE_FOOD'			),
		('MINOR_CIV_MARITIME_TRAIT',	'MODIFIER_MARITIME_LIGHTHOUSE_PRODUCTION'	),
		('MINOR_CIV_MARITIME_TRAIT',	'MODIFIER_MARITIME_SHIPYARD_FOOD'			),
		('MINOR_CIV_MARITIME_TRAIT',	'MODIFIER_MARITIME_SHIPYARD_PRODUCTION'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers 
		(ModifierId,									ModifierType,													SubjectRequirementSetId			)
VALUES	('MODIFIER_MARITIME_SEND_TRADE_BONUS',			'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',	NULL							),
		('MODIFIER_MARITIME_CAPITAL_FOOD',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_SMALL_INFLUENCE'	),
		('MODIFIER_MARITIME_CAPITAL_FOOD_MOD',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',		NULL							),
		('MODIFIER_MARITIME_CAPITAL_PRODUCTION',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_SMALL_INFLUENCE'	),
		('MODIFIER_MARITIME_CAPITAL_PRODUCTION_MOD',	'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',		NULL							),
		('MODIFIER_MARITIME_LIGHTHOUSE_FOOD',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_MEDIUM_INFLUENCE'	),
		('MODIFIER_MARITIME_LIGHTHOUSE_FOOD_MOD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							),
		('MODIFIER_MARITIME_LIGHTHOUSE_PRODUCTION',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_MEDIUM_INFLUENCE'	),
		('MODIFIER_MARITIME_LIGHTHOUSE_PRODUCTION_MOD',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							),
		('MODIFIER_MARITIME_SHIPYARD_FOOD',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGE_INFLUENCE'	),
		('MODIFIER_MARITIME_SHIPYARD_FOOD_MOD',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							),
		('MODIFIER_MARITIME_SHIPYARD_PRODUCTION',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGE_INFLUENCE'	),
		('MODIFIER_MARITIME_SHIPYARD_PRODUCTION_MOD',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,				Value												)
VALUES	('MODIFIER_MARITIME_SEND_TRADE_BONUS',			'YieldType',		'YIELD_FOOD'										),
		('MODIFIER_MARITIME_SEND_TRADE_BONUS',			'Amount',			1													),
		('MODIFIER_MARITIME_CAPITAL_FOOD',				'ModifierId',		'MODIFIER_MARITIME_CAPITAL_FOOD_MOD'				),
		('MODIFIER_MARITIME_CAPITAL_FOOD_MOD',			'YieldType',		'YIELD_FOOD'										),
		('MODIFIER_MARITIME_CAPITAL_FOOD_MOD',			'Amount',			1													),
		('MODIFIER_MARITIME_CAPITAL_PRODUCTION',		'ModifierId',		'MODIFIER_MARITIME_CAPITAL_PRODUCTION_MOD'			),
		('MODIFIER_MARITIME_CAPITAL_PRODUCTION_MOD',	'YieldType',		'YIELD_PRODUCTION'									),
		('MODIFIER_MARITIME_CAPITAL_PRODUCTION_MOD',	'Amount',			1													),
		('MODIFIER_MARITIME_LIGHTHOUSE_FOOD',			'ModifierId',		'MODIFIER_MARITIME_LIGHTHOUSE_FOOD_MOD'				),
		('MODIFIER_MARITIME_LIGHTHOUSE_FOOD_MOD',		'BuildingType',		'BUILDING_LIGHTHOUSE'								),
		('MODIFIER_MARITIME_LIGHTHOUSE_FOOD_MOD',		'YieldType',		'YIELD_FOOD'										),
		('MODIFIER_MARITIME_LIGHTHOUSE_FOOD_MOD',		'Amount',			1													),
		('MODIFIER_MARITIME_LIGHTHOUSE_FOOD_MOD',		'CityStatesOnly',	1													),
		('MODIFIER_MARITIME_LIGHTHOUSE_PRODUCTION',		'ModifierId',		'MODIFIER_MARITIME_LIGHTHOUSE_PRODUCTION_MOD'		),
		('MODIFIER_MARITIME_LIGHTHOUSE_PRODUCTION_MOD',	'BuildingType',		'BUILDING_LIGHTHOUSE'								),
		('MODIFIER_MARITIME_LIGHTHOUSE_PRODUCTION_MOD',	'YieldType',		'YIELD_PRODUCTION'									),
		('MODIFIER_MARITIME_LIGHTHOUSE_PRODUCTION_MOD',	'Amount',			1													),
		('MODIFIER_MARITIME_LIGHTHOUSE_PRODUCTION_MOD',	'CityStatesOnly',	1													),
		('MODIFIER_MARITIME_SHIPYARD_FOOD',				'ModifierId',		'MODIFIER_MARITIME_SHIPYARD_FOOD_MOD'				),
		('MODIFIER_MARITIME_SHIPYARD_FOOD_MOD',			'BuildingType',		'BUILDING_SHIPYARD'									),
		('MODIFIER_MARITIME_SHIPYARD_FOOD_MOD',			'YieldType',		'YIELD_FOOD'										),
		('MODIFIER_MARITIME_SHIPYARD_FOOD_MOD',			'Amount',			1													),
		('MODIFIER_MARITIME_SHIPYARD_FOOD_MOD',			'CityStatesOnly',	1													),
		('MODIFIER_MARITIME_SHIPYARD_PRODUCTION',		'ModifierId',		'MODIFIER_MARITIME_SHIPYARD_PRODUCTION_MOD'			),
		('MODIFIER_MARITIME_SHIPYARD_PRODUCTION_MOD',	'BuildingType',		'BUILDING_SHIPYARD'									),
		('MODIFIER_MARITIME_SHIPYARD_PRODUCTION_MOD',	'YieldType',		'YIELD_PRODUCTION'									),
		('MODIFIER_MARITIME_SHIPYARD_PRODUCTION_MOD',	'Amount',			1													),
		('MODIFIER_MARITIME_SHIPYARD_PRODUCTION_MOD',	'CityStatesOnly',	1													);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings 
		(ModifierId, 								Context, 	Text														)
VALUES	('MODIFIER_MARITIME_CAPITAL_FOOD',			'Preview', 	'LOC_MINOR_CIV_MARITIME_TRAIT_SMALL_INFLUENCE_BONUS'		),
		('MODIFIER_MARITIME_CAPITAL_PRODUCTION',	'Preview', 	'LOC_MINOR_CIV_MARITIME_TRAIT_SMALL_INFLUENCE_BONUS'		),
		('MODIFIER_MARITIME_LIGHTHOUSE_FOOD',		'Preview', 	'LOC_MINOR_CIV_MARITIME_TRAIT_MEDIUM_INFLUENCE_BONUS'		),
		('MODIFIER_MARITIME_LIGHTHOUSE_PRODUCTION',	'Preview', 	'LOC_MINOR_CIV_MARITIME_TRAIT_MEDIUM_INFLUENCE_BONUS'		),
		('MODIFIER_MARITIME_SHIPYARD_FOOD',			'Preview', 	'LOC_MINOR_CIV_MARITIME_TRAIT_LARGE_INFLUENCE_BONUS'		),
		('MODIFIER_MARITIME_SHIPYARD_PRODUCTION', 	'Preview', 	'LOC_MINOR_CIV_MARITIME_TRAIT_LARGE_INFLUENCE_BONUS'		);

-----------------------------------------------
-- Colors
-----------------------------------------------

INSERT INTO Colors 
		(Type,											Color				)
VALUES	('COLOR_PLAYER_CITY_STATE_MARITIME_SECONDARY',	'88,220,195,255'	);

-----------------------------------------------
-- CivilopediaPageGroups
-----------------------------------------------

INSERT INTO CivilopediaPageGroups 
		(SectionID, 	PageGroupId,	Name, 												VisibleIfEmpty, SortIndex	)
VALUES	('CITYSTATES',	'MARITIME',		'LOC_PEDIA_CITYSTATES_PAGEGROUP_MARITIME_NAME',		0,				10			);

-----------------------------------------------
-- C15_MinorCivilization_CityStateClassTypes
-----------------------------------------------

INSERT INTO C15_MinorCivilization_CityStateClassTypes
		(Type,			TypeName,							LeaderType,						SmallBonus,												MedBonus,												LargeBonus,												BonusIcon,						TypeIcon					)
VALUES	('MARITIME',	'LOC_CITY_STATES_TYPE_MARITIME',	'LEADER_MINOR_CIV_MARITIME',	'LOC_MINOR_CIV_MARITIME_TRAIT_SMALL_INFLUENCE_BONUS',	'LOC_MINOR_CIV_MARITIME_TRAIT_MEDIUM_INFLUENCE_BONUS',	'LOC_MINOR_CIV_MARITIME_TRAIT_LARGE_INFLUENCE_BONUS',	'ICON_ENVOY_BONUS_MARITIME',	'ICON_CITYSTATE_MARITIME'	);