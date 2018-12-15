/*
	City-States
	Authors: thecrazyscotsman, Chrisy15, ChimpanG
*/

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

DELETE FROM TraitModifiers
WHERE TraitType
IN (
	'MINOR_CIV_DEFAULT_TRAIT',
	'MINOR_CIV_SCIENTIFIC_TRAIT',
	'MINOR_CIV_RELIGIOUS_TRAIT',
	'MINOR_CIV_TRADE_TRAIT',
	'MINOR_CIV_CULTURAL_TRAIT',
	'MINOR_CIV_MILITARISTIC_TRAIT',
	'MINOR_CIV_INDUSTRIAL_TRAIT'
);

INSERT INTO TraitModifiers 
		(TraitType, 						ModifierId										)
VALUES	('MINOR_CIV_DEFAULT_TRAIT',			'MODIFIER_CSE_DEFAULT_WAR_WEARINESS'			),
		('MINOR_CIV_DEFAULT_TRAIT',			'MODIFIER_CSE_DEFAULT_GARRISON_STRENGTH'		),
		('MINOR_CIV_DEFAULT_TRAIT',			'MODIFIER_CSE_DEFAULT_WALLS_STRENGTH'			),
		('MINOR_CIV_DEFAULT_TRAIT',			'MODIFIER_CSE_DEFAULT_CITY_RANGED_STRENGTH'		),
		('MINOR_CIV_DEFAULT_TRAIT',			'MODIFIER_CSE_DEFAULT_WALLS_PRODUCTION'			),
		('MINOR_CIV_DEFAULT_TRAIT',			'MODIFIER_CSE_DEFAULT_CASTLE_PRODUCTION'		),
		('MINOR_CIV_DEFAULT_TRAIT',			'MODIFIER_CSE_DEFAULT_STAR_FORT_PRODUCTION'		),

		('MINOR_CIV_SCIENTIFIC_TRAIT',		'MODIFIER_CSE_SCIENTIFIC_SEND_TRADE_BONUS'		),
		('MINOR_CIV_SCIENTIFIC_TRAIT',		'MODIFIER_CSE_SCIENTIFIC_CAPITAL_SCIENCE'		),
		('MINOR_CIV_SCIENTIFIC_TRAIT',		'MODIFIER_CSE_SCIENTIFIC_LIBRARY_SCIENCE'		),
		('MINOR_CIV_SCIENTIFIC_TRAIT',		'MODIFIER_CSE_SCIENTIFIC_UNIVERSITY_SCIENCE'	),
		
		('MINOR_CIV_CULTURAL_TRAIT',		'MODIFIER_CSE_CULTURAL_SEND_TRADE_BONUS'		),
		('MINOR_CIV_CULTURAL_TRAIT',		'MODIFIER_CSE_CULTURAL_CAPITAL_CULTURE'			),
		('MINOR_CIV_CULTURAL_TRAIT',		'MODIFIER_CSE_CULTURAL_AMPHITHEATER_CULTURE'	),
		('MINOR_CIV_CULTURAL_TRAIT',		'MODIFIER_CSE_CULTURAL_MUSEUM_ART_CULTURE'		),
		('MINOR_CIV_CULTURAL_TRAIT',		'MODIFIER_CSE_CULTURAL_MUSEUM_ARTIFACT_CULTURE'	),
		
		('MINOR_CIV_TRADE_TRAIT',			'MODIFIER_CSE_TRADE_SEND_TRADE_BONUS'			),
		('MINOR_CIV_TRADE_TRAIT',			'MODIFIER_CSE_TRADE_CAPITAL_GOLD'				),
		('MINOR_CIV_TRADE_TRAIT',			'MODIFIER_CSE_TRADE_MARKET_GOLD'				),
		('MINOR_CIV_TRADE_TRAIT',			'MODIFIER_CSE_TRADE_BANK_GOLD'					),
		
		('MINOR_CIV_RELIGIOUS_TRAIT',		'MODIFIER_CSE_RELIGIOUS_SEND_TRADE_BONUS'		),
		('MINOR_CIV_RELIGIOUS_TRAIT',		'MODIFIER_CSE_RELIGIOUS_CAPITAL_FAITH'			),
		('MINOR_CIV_RELIGIOUS_TRAIT',		'MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH'			),
		('MINOR_CIV_RELIGIOUS_TRAIT',		'MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH'			),
		
		('MINOR_CIV_MILITARISTIC_TRAIT',	'MODIFIER_CSE_MILITARISTIC_SEND_TRADE_BONUS'	),
		('MINOR_CIV_MILITARISTIC_TRAIT',	'MODIFIER_CSE_MILITARISTIC_CAPITAL_UNITS'		),
		('MINOR_CIV_MILITARISTIC_TRAIT',	'MODIFIER_CSE_MILITARISTIC_BARRACKS_UNITS'		),
		('MINOR_CIV_MILITARISTIC_TRAIT',	'MODIFIER_CSE_MILITARISTIC_STABLE_UNITS'		),
		('MINOR_CIV_MILITARISTIC_TRAIT',	'MODIFIER_CSE_MILITARISTIC_ARMORY_UNITS'		),
		
		('MINOR_CIV_INDUSTRIAL_TRAIT',		'MODIFIER_CSE_INDUSTRIAL_SEND_TRADE_BONUS'		),
		('MINOR_CIV_INDUSTRIAL_TRAIT',		'MODIFIER_CSE_INDUSTRIAL_CAPITAL_DISTRICTS'		),
		('MINOR_CIV_INDUSTRIAL_TRAIT',		'MODIFIER_CSE_INDUSTRIAL_CAPITAL_BUILDINGS'		),
		('MINOR_CIV_INDUSTRIAL_TRAIT',		'MODIFIER_CSE_INDUSTRIAL_WORKSHOP_DISTRICTS'	),
		('MINOR_CIV_INDUSTRIAL_TRAIT',		'MODIFIER_CSE_INDUSTRIAL_WORKSHOP_BUILDINGS'	),
		('MINOR_CIV_INDUSTRIAL_TRAIT',		'MODIFIER_CSE_INDUSTRIAL_FACTORY_DISTRICTS'		),
		('MINOR_CIV_INDUSTRIAL_TRAIT',		'MODIFIER_CSE_INDUSTRIAL_FACTORY_BUILDINGS'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers 
		(ModifierId,											ModifierType,													SubjectRequirementSetId			)
VALUES	-- DEFAULT
		('MODIFIER_CSE_DEFAULT_WAR_WEARINESS',					'MODIFIER_PLAYER_ADJUST_WAR_WEARINESS',							NULL							),
		('MODIFIER_CSE_DEFAULT_GARRISON_STRENGTH',				'MODIFIER_PLAYER_CITIES_ADJUST_INNER_DEFENSE',					NULL							),
		('MODIFIER_CSE_DEFAULT_WALLS_STRENGTH',					'MODIFIER_PLAYER_CITIES_ADJUST_OUTER_DEFENSE',					NULL							),
		('MODIFIER_CSE_DEFAULT_CITY_RANGED_STRENGTH',			'MODIFIER_PLAYER_CITIES_ADJUST_RANGED_STRIKE',					NULL							),
		('MODIFIER_CSE_DEFAULT_WALLS_PRODUCTION',				'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',			NULL							),
		('MODIFIER_CSE_DEFAULT_CASTLE_PRODUCTION',				'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',			NULL							),
		('MODIFIER_CSE_DEFAULT_STAR_FORT_PRODUCTION',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',			NULL							),

		-- SCIENTIFIC
		('MODIFIER_CSE_SCIENTIFIC_SEND_TRADE_BONUS',			'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',	NULL							),
		('MODIFIER_CSE_SCIENTIFIC_CAPITAL_SCIENCE',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_SMALL_INFLUENCE'	),
		('MODIFIER_CSE_SCIENTIFIC_CAPITAL_SCIENCE_MOD',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',		NULL							),
		('MODIFIER_CSE_SCIENTIFIC_LIBRARY_SCIENCE',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_MEDIUM_INFLUENCE'	),
		('MODIFIER_CSE_SCIENTIFIC_LIBRARY_SCIENCE_MOD',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							),
		('MODIFIER_CSE_SCIENTIFIC_UNIVERSITY_SCIENCE',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGE_INFLUENCE'	),
		('MODIFIER_CSE_SCIENTIFIC_UNIVERSITY_SCIENCE_MOD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							),

		-- CULTURAL
		('MODIFIER_CSE_CULTURAL_SEND_TRADE_BONUS',				'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',	NULL							),
		('MODIFIER_CSE_CULTURAL_CAPITAL_CULTURE',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_SMALL_INFLUENCE'	),
		('MODIFIER_CSE_CULTURAL_CAPITAL_CULTURE_MOD',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',		NULL							),
		('MODIFIER_CSE_CULTURAL_AMPHITHEATER_CULTURE',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_MEDIUM_INFLUENCE'	),
		('MODIFIER_CSE_CULTURAL_AMPHITHEATER_CULTURE_MOD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							),
		('MODIFIER_CSE_CULTURAL_MUSEUM_ART_CULTURE',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGE_INFLUENCE'	),
		('MODIFIER_CSE_CULTURAL_MUSEUM_ART_CULTURE_MOD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							),
		('MODIFIER_CSE_CULTURAL_MUSEUM_ARTIFACT_CULTURE',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGE_INFLUENCE'	),
		('MODIFIER_CSE_CULTURAL_MUSEUM_ARTIFACT_CULTURE_MOD',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							),

		-- TRADE
		('MODIFIER_CSE_TRADE_SEND_TRADE_BONUS',					'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',	NULL							),
		('MODIFIER_CSE_TRADE_CAPITAL_GOLD',						'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_SMALL_INFLUENCE'	),
		('MODIFIER_CSE_TRADE_CAPITAL_GOLD_MOD',					'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',		NULL							),
		('MODIFIER_CSE_TRADE_MARKET_GOLD',						'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_MEDIUM_INFLUENCE'	),
		('MODIFIER_CSE_TRADE_MARKET_GOLD_MOD',					'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							),
		('MODIFIER_CSE_TRADE_BANK_GOLD',						'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGE_INFLUENCE'	),
		('MODIFIER_CSE_TRADE_BANK_GOLD_MOD',					'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							),

		-- RELIGIOUS
		('MODIFIER_CSE_RELIGIOUS_SEND_TRADE_BONUS',				'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',	NULL							),
		('MODIFIER_CSE_RELIGIOUS_CAPITAL_FAITH',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_SMALL_INFLUENCE'	),
		('MODIFIER_CSE_RELIGIOUS_CAPITAL_FAITH_MOD',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',		NULL							),
		('MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH',					'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_MEDIUM_INFLUENCE'	),
		('MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH_MOD',				'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							),
		('MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH',					'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGE_INFLUENCE'	),
		('MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH_MOD',				'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',			NULL							),
		
		-- MILITARISTIC
		('MODIFIER_CSE_MILITARISTIC_SEND_TRADE_BONUS',			'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',	NULL							),
		('MODIFIER_CSE_MILITARISTIC_CAPITAL_UNITS',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_SMALL_INFLUENCE'	),
		('MODIFIER_CSE_MILITARISTIC_CAPITAL_UNITS_MOD',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_UNIT_PRODUCTION',			NULL							),
		('MODIFIER_CSE_MILITARISTIC_BARRACKS_UNITS',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_MEDIUM_INFLUENCE'	),
		('MODIFIER_CSE_MILITARISTIC_BARRACKS_UNITS_MOD',		'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_PRODUCTION_CHANGE',			'REQSET_CSE_CITY_HAS_BARRACKS'	),
		('MODIFIER_CSE_MILITARISTIC_STABLE_UNITS',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_MEDIUM_INFLUENCE'	),
		('MODIFIER_CSE_MILITARISTIC_STABLE_UNITS_MOD',			'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_PRODUCTION_CHANGE',			'REQSET_CSE_CITY_HAS_STABLE'	),
		('MODIFIER_CSE_MILITARISTIC_ARMORY_UNITS',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGE_INFLUENCE'	),
		('MODIFIER_CSE_MILITARISTIC_ARMORY_UNITS_MOD',			'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_PRODUCTION_CHANGE',			'REQSET_CSE_CITY_HAS_ARMORY'	),

		-- INDUSTRIAL
		('MODIFIER_CSE_INDUSTRIAL_SEND_TRADE_BONUS',			'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',	NULL							),
		('MODIFIER_CSE_INDUSTRIAL_CAPITAL_DISTRICTS',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_SMALL_INFLUENCE'	),
		('MODIFIER_CSE_INDUSTRIAL_CAPITAL_DISTRICTS_MOD',		'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_DISTRICT_PRODUCTION',		NULL							),
		('MODIFIER_CSE_INDUSTRIAL_CAPITAL_BUILDINGS',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_SMALL_INFLUENCE'	),
		('MODIFIER_CSE_INDUSTRIAL_CAPITAL_BUILDINGS_MOD',		'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_BUILDING_PRODUCTION',		NULL							),
		('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_DISTRICTS',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_MEDIUM_INFLUENCE'	),
		('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_DISTRICTS_MOD',		'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_WORKSHOP'	),
		('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_BUILDINGS',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_MEDIUM_INFLUENCE'	),
		('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_BUILDINGS_MOD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_WORKSHOP'	),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_DISTRICTS',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGE_INFLUENCE'	),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_DISTRICTS_MOD',		'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_FACTORY'	),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_BUILDINGS',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGE_INFLUENCE'	),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_BUILDINGS_MOD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_FACTORY'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,												Name,				Value												)
VALUES	-- DEFAULT
		('MODIFIER_CSE_DEFAULT_WAR_WEARINESS',						'Amount',			-100												),
		('MODIFIER_CSE_DEFAULT_WAR_WEARINESS',						'Overall',			1													),
		('MODIFIER_CSE_DEFAULT_GARRISON_STRENGTH',					'Amount',			6													),
		('MODIFIER_CSE_DEFAULT_WALLS_STRENGTH',						'Amount',			6													),
		('MODIFIER_CSE_DEFAULT_CITY_RANGED_STRENGTH',				'Amount',			6													),
		('MODIFIER_CSE_DEFAULT_WALLS_PRODUCTION',					'BuildingType',		'BUILDING_WALLS'									),
		('MODIFIER_CSE_DEFAULT_WALLS_PRODUCTION',					'Amount',			100													),
		('MODIFIER_CSE_DEFAULT_CASTLE_PRODUCTION',					'BuildingType',		'BUILDING_CASTLE'									),
		('MODIFIER_CSE_DEFAULT_CASTLE_PRODUCTION',					'Amount',			100													),
		('MODIFIER_CSE_DEFAULT_STAR_FORT_PRODUCTION',				'BuildingType',		'BUILDING_STAR_FORT'								),
		('MODIFIER_CSE_DEFAULT_STAR_FORT_PRODUCTION',				'Amount',			100													),

		-- SCIENTIFIC
		('MODIFIER_CSE_SCIENTIFIC_SEND_TRADE_BONUS',				'YieldType',		'YIELD_SCIENCE'										),
		('MODIFIER_CSE_SCIENTIFIC_SEND_TRADE_BONUS',				'Amount',			1													),
		('MODIFIER_CSE_SCIENTIFIC_CAPITAL_SCIENCE',					'ModifierId',		'MODIFIER_CSE_SCIENTIFIC_CAPITAL_SCIENCE_MOD'		),
		('MODIFIER_CSE_SCIENTIFIC_CAPITAL_SCIENCE_MOD',				'YieldType',		'YIELD_SCIENCE'										),
		('MODIFIER_CSE_SCIENTIFIC_CAPITAL_SCIENCE_MOD',				'Amount',			2													),
		('MODIFIER_CSE_SCIENTIFIC_LIBRARY_SCIENCE',					'ModifierId',		'MODIFIER_CSE_SCIENTIFIC_LIBRARY_SCIENCE_MOD'		),
		('MODIFIER_CSE_SCIENTIFIC_LIBRARY_SCIENCE_MOD',				'BuildingType',		'BUILDING_LIBRARY'									),
		('MODIFIER_CSE_SCIENTIFIC_LIBRARY_SCIENCE_MOD',				'YieldType',		'YIELD_SCIENCE'										),
		('MODIFIER_CSE_SCIENTIFIC_LIBRARY_SCIENCE_MOD',				'Amount',			2													),
		('MODIFIER_CSE_SCIENTIFIC_LIBRARY_SCIENCE_MOD',				'CityStatesOnly',	1													),
		('MODIFIER_CSE_SCIENTIFIC_UNIVERSITY_SCIENCE',				'ModifierId',		'MODIFIER_CSE_SCIENTIFIC_UNIVERSITY_SCIENCE_MOD'	),
		('MODIFIER_CSE_SCIENTIFIC_UNIVERSITY_SCIENCE_MOD',			'BuildingType',		'BUILDING_UNIVERSITY'								),
		('MODIFIER_CSE_SCIENTIFIC_UNIVERSITY_SCIENCE_MOD',			'YieldType',		'YIELD_SCIENCE'										),
		('MODIFIER_CSE_SCIENTIFIC_UNIVERSITY_SCIENCE_MOD',			'Amount',			2													),
		('MODIFIER_CSE_SCIENTIFIC_UNIVERSITY_SCIENCE_MOD',			'CityStatesOnly',	1													),
		
		-- CULTURAL
		('MODIFIER_CSE_CULTURAL_SEND_TRADE_BONUS',					'YieldType',		'YIELD_CULTURE'										),
		('MODIFIER_CSE_CULTURAL_SEND_TRADE_BONUS',					'Amount',			1													),
		('MODIFIER_CSE_CULTURAL_CAPITAL_CULTURE',					'ModifierId',		'MODIFIER_CSE_CULTURAL_CAPITAL_CULTURE_MOD'			),
		('MODIFIER_CSE_CULTURAL_CAPITAL_CULTURE_MOD',				'YieldType',		'YIELD_CULTURE'										),
		('MODIFIER_CSE_CULTURAL_CAPITAL_CULTURE_MOD',				'Amount',			2													),
		('MODIFIER_CSE_CULTURAL_AMPHITHEATER_CULTURE',				'ModifierId',		'MODIFIER_CSE_CULTURAL_AMPHITHEATER_CULTURE_MOD'	),
		('MODIFIER_CSE_CULTURAL_AMPHITHEATER_CULTURE_MOD',			'BuildingType',		'BUILDING_AMPHITHEATER'								),
		('MODIFIER_CSE_CULTURAL_AMPHITHEATER_CULTURE_MOD',			'YieldType',		'YIELD_CULTURE'										),
		('MODIFIER_CSE_CULTURAL_AMPHITHEATER_CULTURE_MOD',			'Amount',			2													),
		('MODIFIER_CSE_CULTURAL_AMPHITHEATER_CULTURE_MOD',			'CityStatesOnly',	1													),
		('MODIFIER_CSE_CULTURAL_MUSEUM_ART_CULTURE',				'ModifierId',		'MODIFIER_CSE_CULTURAL_MUSEUM_ART_CULTURE_MOD'		),
		('MODIFIER_CSE_CULTURAL_MUSEUM_ART_CULTURE_MOD',			'BuildingType',		'BUILDING_MUSEUM_ART'								),
		('MODIFIER_CSE_CULTURAL_MUSEUM_ART_CULTURE_MOD',			'YieldType',		'YIELD_CULTURE'										),
		('MODIFIER_CSE_CULTURAL_MUSEUM_ART_CULTURE_MOD',			'Amount',			2													),
		('MODIFIER_CSE_CULTURAL_MUSEUM_ART_CULTURE_MOD',			'CityStatesOnly',	1													),
		('MODIFIER_CSE_CULTURAL_MUSEUM_ARTIFACT_CULTURE',			'ModifierId',		'MODIFIER_CSE_CULTURAL_MUSEUM_ARTIFACT_CULTURE_MOD'	),
		('MODIFIER_CSE_CULTURAL_MUSEUM_ARTIFACT_CULTURE_MOD',		'BuildingType',		'BUILDING_MUSEUM_ARTIFACT'							),
		('MODIFIER_CSE_CULTURAL_MUSEUM_ARTIFACT_CULTURE_MOD',		'YieldType',		'YIELD_CULTURE'										),
		('MODIFIER_CSE_CULTURAL_MUSEUM_ARTIFACT_CULTURE_MOD',		'Amount',			2													),
		('MODIFIER_CSE_CULTURAL_MUSEUM_ARTIFACT_CULTURE_MOD',		'CityStatesOnly',	1													),
		
		-- TRADE
		('MODIFIER_CSE_TRADE_SEND_TRADE_BONUS',						'YieldType',		'YIELD_GOLD'										),
		('MODIFIER_CSE_TRADE_SEND_TRADE_BONUS',						'Amount',			2													),
		('MODIFIER_CSE_TRADE_CAPITAL_GOLD',							'ModifierId',		'MODIFIER_CSE_TRADE_CAPITAL_CULTURE_MOD'			),
		('MODIFIER_CSE_TRADE_CAPITAL_GOLD_MOD',						'YieldType',		'YIELD_GOLD'										),
		('MODIFIER_CSE_TRADE_CAPITAL_GOLD_MOD',						'Amount',			2													),
		('MODIFIER_CSE_TRADE_MARKET_GOLD',							'ModifierId',		'MODIFIER_CSE_TRADE_MARKET_GOLD_MOD'				),
		('MODIFIER_CSE_TRADE_MARKET_GOLD_MOD',						'BuildingType',		'BUILDING_MARKET'									),
		('MODIFIER_CSE_TRADE_MARKET_GOLD_MOD',						'YieldType',		'YIELD_GOLD'										),
		('MODIFIER_CSE_TRADE_MARKET_GOLD_MOD',						'Amount',			2													),
		('MODIFIER_CSE_TRADE_MARKET_GOLD_MOD',						'CityStatesOnly',	1													),
		('MODIFIER_CSE_TRADE_BANK_GOLD',							'ModifierId',		'MODIFIER_CSE_TRADE_BANK_GOLD_MOD'					),
		('MODIFIER_CSE_TRADE_BANK_GOLD_MOD',						'BuildingType',		'BUILDING_BANK'										),
		('MODIFIER_CSE_TRADE_BANK_GOLD_MOD',						'YieldType',		'YIELD_GOLD'										),
		('MODIFIER_CSE_TRADE_BANK_GOLD_MOD',						'Amount',			2													),
		('MODIFIER_CSE_TRADE_BANK_GOLD_MOD',						'CityStatesOnly',	1													),

		-- RELIGIOUS
		('MODIFIER_CSE_RELIGIOUS_SEND_TRADE_BONUS',					'YieldType',		'YIELD_FAITH'										),
		('MODIFIER_CSE_RELIGIOUS_SEND_TRADE_BONUS',					'Amount',			1													),
		('MODIFIER_CSE_RELIGIOUS_CAPITAL_FAITH',					'ModifierId',		'MODIFIER_CSE_RELIGIOUS_CAPITAL_FAITH_MOD'			),
		('MODIFIER_CSE_RELIGIOUS_CAPITAL_FAITH_MOD',				'YieldType',		'YIELD_FAITH'										),
		('MODIFIER_CSE_RELIGIOUS_CAPITAL_FAITH_MOD',				'Amount',			2													),
		('MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH',						'ModifierId',		'MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH_MOD'			),
		('MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH_MOD',					'BuildingType',		'BUILDING_SHRINE'									),
		('MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH_MOD',					'YieldType',		'YIELD_FAITH'										),
		('MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH_MOD',					'Amount',			2													),
		('MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH_MOD',					'CityStatesOnly',	1													),
		('MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH',						'ModifierId',		'MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH_MOD'			),
		('MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH_MOD',					'BuildingType',		'BUILDING_TEMPLE'									),
		('MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH_MOD',					'YieldType',		'YIELD_FAITH'										),
		('MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH_MOD',					'Amount',			2													),
		('MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH_MOD',					'CityStatesOnly',	1													),

		-- MILITARISTIC
		('MODIFIER_CSE_MILITARISTIC_SEND_TRADE_BONUS',				'YieldType',		'YIELD_PRODUCTION'									),
		('MODIFIER_CSE_MILITARISTIC_SEND_TRADE_BONUS',				'Amount',			1													),
		('MODIFIER_CSE_MILITARISTIC_CAPITAL_UNITS',					'ModifierId',		'MODIFIER_CSE_MILITARISTIC_CAPITAL_UNITS_MOD'		),
		('MODIFIER_CSE_MILITARISTIC_CAPITAL_UNITS_MOD',				'Amount',			1													),
		('MODIFIER_CSE_MILITARISTIC_BARRACKS_UNITS',				'ModifierId',		'MODIFIER_CSE_MILITARISTIC_BARRACKS_UNITS_MOD'		),
		('MODIFIER_CSE_MILITARISTIC_BARRACKS_UNITS_MOD',			'Amount',			1													),
		('MODIFIER_CSE_MILITARISTIC_STABLE_UNITS',					'ModifierId',		'MODIFIER_CSE_MILITARISTIC_STABLE_UNITS_MOD'		),
		('MODIFIER_CSE_MILITARISTIC_STABLE_UNITS_MOD',				'Amount',			1													),
		('MODIFIER_CSE_MILITARISTIC_ARMORY_UNITS',					'ModifierId',		'MODIFIER_CSE_MILITARISTIC_ARMORY_UNITS_MOD'		),
		('MODIFIER_CSE_MILITARISTIC_ARMORY_UNITS_MOD',				'Amount',			1													),

		-- INDUSTRIAL
		('MODIFIER_CSE_INDUSTRIAL_SEND_TRADE_BONUS',				'YieldType',		'YIELD_PRODUCTION'									),
		('MODIFIER_CSE_INDUSTRIAL_SEND_TRADE_BONUS',				'Amount',			1													),
		('MODIFIER_CSE_INDUSTRIAL_CAPITAL_DISTRICTS',				'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_CAPITAL_DISTRICTS_MOD'		),
		('MODIFIER_CSE_INDUSTRIAL_CAPITAL_DISTRICTS_MOD',			'Amount',			2													),
		('MODIFIER_CSE_INDUSTRIAL_CAPITAL_BUILDINGS',				'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_CAPITAL_BUILDINGS_MOD'		),
		('MODIFIER_CSE_INDUSTRIAL_CAPITAL_BUILDINGS_MOD',			'Amount',			2													),
		('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_DISTRICTS',				'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_WORKSHOP_DISTRICTS_MOD'	),
		('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_DISTRICTS_MOD',			'Amount',			2													),
		('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_BUILDINGS',				'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_WORKSHOP_BUILDINGS_MOD'	),
		('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_BUILDINGS_MOD',			'Amount',			2													),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_DISTRICTS',				'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_FACTORY_DISTRICTS_MOD'		),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_DISTRICTS_MOD',			'Amount',			2													),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_BUILDINGS',				'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_FACTORY_BUILDINGS_MOD'		),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_BUILDINGS_MOD',			'Amount',			2													);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings 
		(ModifierId, 										Context, 	Text												)
VALUES	('MODIFIER_CSE_SCIENTIFIC_CAPITAL_SCIENCE', 		'Preview', 	'LOC_CSE_SCIENTIFIC_TRAIT_SMALL_INFLUENCE_BONUS'	),
		('MODIFIER_CSE_SCIENTIFIC_LIBRARY_SCIENCE', 		'Preview', 	'LOC_CSE_SCIENTIFIC_TRAIT_MEDIUM_INFLUENCE_BONUS'	),
		('MODIFIER_CSE_SCIENTIFIC_UNIVERSITY_SCIENCE',		'Preview', 	'LOC_CSE_SCIENTIFIC_TRAIT_LARGE_INFLUENCE_BONUS'	),

		('MODIFIER_CSE_CULTURAL_CAPITAL_CULTURE', 			'Preview', 	'LOC_CSE_CULTURAL_TRAIT_SMALL_INFLUENCE_BONUS'		),
		('MODIFIER_CSE_CULTURAL_AMPHITHEATER_CULTURE', 		'Preview', 	'LOC_CSE_CULTURAL_TRAIT_MEDIUM_INFLUENCE_BONUS'		),
		('MODIFIER_CSE_CULTURAL_MUSEUM_ART_CULTURE',		'Preview', 	'LOC_CSE_CULTURAL_TRAIT_LARGE_INFLUENCE_BONUS'		),
		('MODIFIER_CSE_CULTURAL_MUSEUM_ARTIFACT_CULTURE',	'Preview', 	'LOC_CSE_CULTURAL_TRAIT_LARGE_INFLUENCE_BONUS'		),
		
		('MODIFIER_CSE_TRADE_CAPITAL_GOLD', 				'Preview', 	'LOC_CSE_TRADE_TRAIT_SMALL_INFLUENCE_BONUS'			),
		('MODIFIER_CSE_TRADE_MARKET_GOLD', 					'Preview', 	'LOC_CSE_TRADE_TRAIT_MEDIUM_INFLUENCE_BONUS'		),
		('MODIFIER_CSE_TRADE_BANK_GOLD',	 				'Preview', 	'LOC_CSE_TRADE_TRAIT_LARGE_INFLUENCE_BONUS'			),

		('MODIFIER_CSE_RELIGIOUS_CAPITAL_FAITH', 			'Preview', 	'LOC_CSE_RELIGIOUS_TRAIT_SMALL_INFLUENCE_BONUS'		),
		('MODIFIER_CSE_RELIGIOUS_SHRINE_FAITH', 			'Preview', 	'LOC_CSE_RELIGIOUS_TRAIT_MEDIUM_INFLUENCE_BONUS'	),
		('MODIFIER_CSE_RELIGIOUS_TEMPLE_FAITH',	 			'Preview', 	'LOC_CSE_RELIGIOUS_TRAIT_LARGE_INFLUENCE_BONUS'		),

		('MODIFIER_CSE_MILITARISTIC_CAPITAL_UNITS', 		'Preview', 	'LOC_CSE_MILITARISTIC_TRAIT_SMALL_INFLUENCE_BONUS'	),
		('MODIFIER_CSE_MILITARISTIC_BARRACKS_UNITS', 		'Preview', 	'LOC_CSE_MILITARISTIC_TRAIT_MEDIUM_INFLUENCE_BONUS'	),
		('MODIFIER_CSE_MILITARISTIC_STABLE_UNITS',	 		'Preview', 	'LOC_CSE_MILITARISTIC_TRAIT_MEDIUM_INFLUENCE_BONUS'	),
		('MODIFIER_CSE_MILITARISTIC_ARMORY_UNITS', 			'Preview', 	'LOC_CSE_MILITARISTIC_TRAIT_LARGE_INFLUENCE_BONUS'	),

		('MODIFIER_CSE_INDUSTRIAL_CAPITAL_DISTRICTS', 		'Preview', 	'LOC_CSE_INDUSTRIAL_TRAIT_SMALL_INFLUENCE_BONUS'	),
		('MODIFIER_CSE_INDUSTRIAL_CAPITAL_BUILDINGS', 		'Preview', 	'LOC_CSE_INDUSTRIAL_TRAIT_SMALL_INFLUENCE_BONUS'	),
		('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_DISTRICTS', 		'Preview', 	'LOC_CSE_INDUSTRIAL_TRAIT_MEDIUM_INFLUENCE_BONUS'	),
		('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_BUILDINGS',	 	'Preview', 	'LOC_CSE_INDUSTRIAL_TRAIT_MEDIUM_INFLUENCE_BONUS'	),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_DISTRICTS', 		'Preview', 	'LOC_CSE_INDUSTRIAL_TRAIT_LARGE_INFLUENCE_BONUS'	),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_BUILDINGS', 		'Preview', 	'LOC_CSE_INDUSTRIAL_TRAIT_LARGE_INFLUENCE_BONUS'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CSE_CITY_HAS_BARRACKS',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CSE_CITY_HAS_STABLE',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CSE_CITY_HAS_ARMORY',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CSE_CITY_HAS_WORKSHOP',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CSE_CITY_HAS_FACTORY',		'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId				)
VALUES	('REQSET_CSE_CITY_HAS_BARRACKS',	'REQ_CSE_CITY_HAS_BARRACKS'	),
		('REQSET_CSE_CITY_HAS_STABLE',		'REQ_CSE_CITY_HAS_STABLE'	),
		('REQSET_CSE_CITY_HAS_ARMORY',		'REQ_CSE_CITY_HAS_ARMORY'	),
		('REQSET_CSE_CITY_HAS_WORKSHOP',	'REQ_CSE_CITY_HAS_WORKSHOP'	),
		('REQSET_CSE_CITY_HAS_FACTORY',		'REQ_CSE_CITY_HAS_FACTORY'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,					RequirementType					)
VALUES	('REQ_CSE_CITY_HAS_BARRACKS',	'REQUIREMENT_CITY_HAS_BUILDING'	),
		('REQ_CSE_CITY_HAS_STABLE',		'REQUIREMENT_CITY_HAS_BUILDING'	),
		('REQ_CSE_CITY_HAS_ARMORY',		'REQUIREMENT_CITY_HAS_BUILDING'	),
		('REQ_CSE_CITY_HAS_WORKSHOP',	'REQUIREMENT_CITY_HAS_BUILDING'	),
		('REQ_CSE_CITY_HAS_FACTORY',	'REQUIREMENT_CITY_HAS_BUILDING'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,					Name,			Value				)
VALUES	('REQ_CSE_CITY_HAS_BARRACKS',	'BuildingType',	'BUILDING_BARRACKS'	),
		('REQ_CSE_CITY_HAS_STABLE',		'BuildingType',	'BUILDING_STABLE'	),
		('REQ_CSE_CITY_HAS_ARMORY',		'BuildingType',	'BUILDING_ARMORY'	),
		('REQ_CSE_CITY_HAS_WORKSHOP',	'BuildingType',	'BUILDING_WORKSHOP'	),
		('REQ_CSE_CITY_HAS_FACTORY',	'BuildingType',	'BUILDING_FACTORY'	);

-----------------------------------------------
-- Colors
-----------------------------------------------

UPDATE	Colors
SET		Color	=	'32,32,32,255' -- DEFAULT 33,38,40,255
WHERE	Type	=	'COLOR_PLAYER_CITY_STATE_PRIMARY';

UPDATE	Colors
SET		Color	=	'50,202,237,255' -- DEFAULT 33,191,247,255
WHERE	Type	=	'COLOR_PLAYER_CITY_STATE_SCIENCE_SECONDARY';

UPDATE	Colors
SET		Color	=	'255,206,108,255' -- DEFAULT 232,214,0,255
WHERE	Type	=	'COLOR_PLAYER_CITY_STATE_TRADE_SECONDARY';

UPDATE	Colors
SET		Color	=	'255,149,77,255' -- DEFAULT 199,135,51,255
WHERE	Type	=	'COLOR_PLAYER_CITY_STATE_INDUSTRIAL_SECONDARY';

UPDATE	Colors
SET		Color	=	'214,102,255,255' -- DEFAULT 232,0,232,255
WHERE	Type	=	'COLOR_PLAYER_CITY_STATE_CULTURAL_SECONDARY';

UPDATE	Colors
SET		Color	=	'255,246,235,255' -- DEFAULT 255,255,255,255
WHERE	Type	=	'COLOR_PLAYER_CITY_STATE_RELIGIOUS_SECONDARY';

UPDATE	Colors
SET		Color	=	'255,92,92,255' -- DEFAULT 153,51,51,255
WHERE	Type	=	'COLOR_PLAYER_CITY_STATE_MILITARISTIC_SECONDARY';