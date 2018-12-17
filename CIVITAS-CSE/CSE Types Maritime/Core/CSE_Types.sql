/*
	Type
	Authors: thecrazyscotsman, ChimpanG
*/

-----------------------------------------------
-- CSE_ClassTypes
-----------------------------------------------

INSERT INTO CSE_ClassTypes
		(Type,				Color,				BonusIcon,							TypeIcon						)
VALUES	('CSE_MARITIME',	'88,220,195,255',	'ICON_ENVOY_BONUS_CSE_MARITIME',	'ICON_CITYSTATE_CSE_MARITIME'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers 
		(TraitType, 						ModifierId										)
VALUES	('MINOR_CIV_CSE_MARITIME_TRAIT',	'MODIFIER_CSE_MARITIME_SEND_TRADE_BONUS'		),
		('MINOR_CIV_CSE_MARITIME_TRAIT',	'MODIFIER_CSE_MARITIME_CAPITAL_FOOD'			),
		('MINOR_CIV_CSE_MARITIME_TRAIT',	'MODIFIER_CSE_MARITIME_CAPITAL_PRODUCTION'		),
		('MINOR_CIV_CSE_MARITIME_TRAIT',	'MODIFIER_CSE_MARITIME_LIGHTHOUSE_FOOD'			),
		('MINOR_CIV_CSE_MARITIME_TRAIT',	'MODIFIER_CSE_MARITIME_LIGHTHOUSE_PRODUCTION'	),
		('MINOR_CIV_CSE_MARITIME_TRAIT',	'MODIFIER_CSE_MARITIME_SHIPYARD_FOOD'			),
		('MINOR_CIV_CSE_MARITIME_TRAIT',	'MODIFIER_CSE_MARITIME_SHIPYARD_PRODUCTION'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers 
		(ModifierId,										ModifierType,													SubjectRequirementSetId			)
VALUES	('MODIFIER_CSE_MARITIME_SEND_TRADE_BONUS',			'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',	NULL							),
		('MODIFIER_CSE_MARITIME_CAPITAL_FOOD',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_SMALL_INFLUENCE'	),
		('MODIFIER_CSE_MARITIME_CAPITAL_FOOD_MOD',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',		NULL							),
		('MODIFIER_CSE_MARITIME_CAPITAL_PRODUCTION',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_SMALL_INFLUENCE'	),
		('MODIFIER_CSE_MARITIME_CAPITAL_PRODUCTION_MOD',	'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',		NULL							),
		('MODIFIER_CSE_MARITIME_LIGHTHOUSE_FOOD',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_MEDIUM_INFLUENCE'	),
		('MODIFIER_CSE_MARITIME_LIGHTHOUSE_FOOD_MOD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							),
		('MODIFIER_CSE_MARITIME_LIGHTHOUSE_PRODUCTION',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_MEDIUM_INFLUENCE'	),
		('MODIFIER_CSE_MARITIME_LIGHTHOUSE_PRODUCTION_MOD',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							),
		('MODIFIER_CSE_MARITIME_SHIPYARD_FOOD',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGE_INFLUENCE'	),
		('MODIFIER_CSE_MARITIME_SHIPYARD_FOOD_MOD',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							),
		('MODIFIER_CSE_MARITIME_SHIPYARD_PRODUCTION',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGE_INFLUENCE'	),
		('MODIFIER_CSE_MARITIME_SHIPYARD_PRODUCTION_MOD',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,										Name,				Value												)
VALUES	('MODIFIER_CSE_MARITIME_SEND_TRADE_BONUS',			'YieldType',		'YIELD_FOOD'										),
		('MODIFIER_CSE_MARITIME_SEND_TRADE_BONUS',			'Amount',			1													),
		('MODIFIER_CSE_MARITIME_CAPITAL_FOOD',				'ModifierId',		'MODIFIER_CSE_MARITIME_CAPITAL_FOOD_MOD'			),
		('MODIFIER_CSE_MARITIME_CAPITAL_FOOD_MOD',			'YieldType',		'YIELD_FOOD'										),
		('MODIFIER_CSE_MARITIME_CAPITAL_FOOD_MOD',			'Amount',			1													),
		('MODIFIER_CSE_MARITIME_CAPITAL_PRODUCTION',		'ModifierId',		'MODIFIER_CSE_MARITIME_CAPITAL_PRODUCTION_MOD'		),
		('MODIFIER_CSE_MARITIME_CAPITAL_PRODUCTION_MOD',	'YieldType',		'YIELD_PRODUCTION'									),
		('MODIFIER_CSE_MARITIME_CAPITAL_PRODUCTION_MOD',	'Amount',			1													),
		('MODIFIER_CSE_MARITIME_LIGHTHOUSE_FOOD',			'ModifierId',		'MODIFIER_CSE_MARITIME_LIGHTHOUSE_FOOD_MOD'			),
		('MODIFIER_CSE_MARITIME_LIGHTHOUSE_FOOD_MOD',		'BuildingType',		'BUILDING_LIGHTHOUSE'								),
		('MODIFIER_CSE_MARITIME_LIGHTHOUSE_FOOD_MOD',		'YieldType',		'YIELD_FOOD'										),
		('MODIFIER_CSE_MARITIME_LIGHTHOUSE_FOOD_MOD',		'Amount',			1													),
		('MODIFIER_CSE_MARITIME_LIGHTHOUSE_FOOD_MOD',		'CityStatesOnly',	1													),
		('MODIFIER_CSE_MARITIME_LIGHTHOUSE_PRODUCTION',		'ModifierId',		'MODIFIER_CSE_MARITIME_LIGHTHOUSE_PRODUCTION_MOD'	),
		('MODIFIER_CSE_MARITIME_LIGHTHOUSE_PRODUCTION_MOD',	'BuildingType',		'BUILDING_LIGHTHOUSE'								),
		('MODIFIER_CSE_MARITIME_LIGHTHOUSE_PRODUCTION_MOD',	'YieldType',		'YIELD_PRODUCTION'									),
		('MODIFIER_CSE_MARITIME_LIGHTHOUSE_PRODUCTION_MOD',	'Amount',			1													),
		('MODIFIER_CSE_MARITIME_LIGHTHOUSE_PRODUCTION_MOD',	'CityStatesOnly',	1													),
		('MODIFIER_CSE_MARITIME_SHIPYARD_FOOD',				'ModifierId',		'MODIFIER_CSE_MARITIME_SHIPYARD_FOOD_MOD'			),
		('MODIFIER_CSE_MARITIME_SHIPYARD_FOOD_MOD',			'BuildingType',		'BUILDING_SHIPYARD'									),
		('MODIFIER_CSE_MARITIME_SHIPYARD_FOOD_MOD',			'YieldType',		'YIELD_FOOD'										),
		('MODIFIER_CSE_MARITIME_SHIPYARD_FOOD_MOD',			'Amount',			1													),
		('MODIFIER_CSE_MARITIME_SHIPYARD_FOOD_MOD',			'CityStatesOnly',	1													),
		('MODIFIER_CSE_MARITIME_SHIPYARD_PRODUCTION',		'ModifierId',		'MODIFIER_CSE_MARITIME_SHIPYARD_PRODUCTION_MOD'		),
		('MODIFIER_CSE_MARITIME_SHIPYARD_PRODUCTION_MOD',	'BuildingType',		'BUILDING_SHIPYARD'									),
		('MODIFIER_CSE_MARITIME_SHIPYARD_PRODUCTION_MOD',	'YieldType',		'YIELD_PRODUCTION'									),
		('MODIFIER_CSE_MARITIME_SHIPYARD_PRODUCTION_MOD',	'Amount',			1													),
		('MODIFIER_CSE_MARITIME_SHIPYARD_PRODUCTION_MOD',	'CityStatesOnly',	1													);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings 
		(ModifierId, 									Context, 	Text												)
VALUES	('MODIFIER_CSE_MARITIME_CAPITAL_FOOD',			'Preview', 	'LOC_CSE_MARITIME_TRAIT_SMALL_INFLUENCE_BONUS'		),
		('MODIFIER_CSE_MARITIME_CAPITAL_PRODUCTION',	'Preview', 	'LOC_CSE_MARITIME_TRAIT_SMALL_INFLUENCE_BONUS'		),
		('MODIFIER_CSE_MARITIME_LIGHTHOUSE_FOOD',		'Preview', 	'LOC_CSE_MARITIME_TRAIT_MEDIUM_INFLUENCE_BONUS'		),
		('MODIFIER_CSE_MARITIME_LIGHTHOUSE_PRODUCTION',	'Preview', 	'LOC_CSE_MARITIME_TRAIT_MEDIUM_INFLUENCE_BONUS'		),
		('MODIFIER_CSE_MARITIME_SHIPYARD_FOOD',			'Preview', 	'LOC_CSE_MARITIME_TRAIT_LARGE_INFLUENCE_BONUS'		),
		('MODIFIER_CSE_MARITIME_SHIPYARD_PRODUCTION', 	'Preview', 	'LOC_CSE_MARITIME_TRAIT_LARGE_INFLUENCE_BONUS'		);

-----------------------------------------------
-- CivilopediaPageGroups
-----------------------------------------------

INSERT INTO CivilopediaPageGroups 
		(SectionID, 	PageGroupId,		Name, 													VisibleIfEmpty, SortIndex	)
VALUES	('CITYSTATES',	'CSE_MARITIME',		'LOC_PEDIA_CITYSTATES_PAGEGROUP_CSE_MARITIME_NAME',		0,				10			);