/*
	Wonders XP1
	Authors: ChimpanG
*/

-----------------------------------------------
-- BuildingModifiers
-----------------------------------------------

DELETE FROM BuildingModifiers
WHERE	BuildingType = 'BUILDING_KILWA_KISIWANI';

INSERT INTO BuildingModifiers
		(BuildingType,				ModifierId											)
VALUES	('BUILDING_KILWA_KISIWANI',	'MODIFIER_CSE_KILWA_SCIENTIFIC_SCIENCE_SINGLE'		),
		('BUILDING_KILWA_KISIWANI',	'MODIFIER_CSE_KILWA_SCIENTIFIC_SCIENCE'				),
		('BUILDING_KILWA_KISIWANI',	'MODIFIER_CSE_KILWA_CULTURAL_CULTURE_SINGLE'		),
		('BUILDING_KILWA_KISIWANI',	'MODIFIER_CSE_KILWA_CULTURAL_CULTURE'				),
		('BUILDING_KILWA_KISIWANI',	'MODIFIER_CSE_KILWA_RELIGIOUS_FAITH_SINGLE'			),
		('BUILDING_KILWA_KISIWANI',	'MODIFIER_CSE_KILWA_RELIGIOUS_FAITH'				),
		('BUILDING_KILWA_KISIWANI',	'MODIFIER_CSE_KILWA_TRADE_GOLD_SINGLE'				),
		('BUILDING_KILWA_KISIWANI',	'MODIFIER_CSE_KILWA_TRADE_GOLD'						),
		('BUILDING_KILWA_KISIWANI',	'MODIFIER_CSE_KILWA_INDUSTRIAL_DISTRICTS_SINGLE'	),
		('BUILDING_KILWA_KISIWANI',	'MODIFIER_CSE_KILWA_INDUSTRIAL_DISTRICTS'			),
		('BUILDING_KILWA_KISIWANI',	'MODIFIER_CSE_KILWA_INDUSTRIAL_BUILDINGS_SINGLE'	),
		('BUILDING_KILWA_KISIWANI',	'MODIFIER_CSE_KILWA_INDUSTRIAL_BUILDINGS'			),
		('BUILDING_KILWA_KISIWANI',	'MODIFIER_CSE_KILWA_MILITARISTIC_UNITS_SINGLE'		),
		('BUILDING_KILWA_KISIWANI',	'MODIFIER_CSE_KILWA_MILITARISTIC_UNITS'				);
			
INSERT INTO BuildingModifiers (BuildingType, ModifierId)
SELECT	'BUILDING_KILWA_KISIWANI',
		'MODIFIER_CSE_KILWA_AGRICULTURAL_FOOD_SINGLE'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO BuildingModifiers (BuildingType, ModifierId)
SELECT	'BUILDING_KILWA_KISIWANI',
		'MODIFIER_CSE_KILWA_AGRICULTURAL_FOOD'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO BuildingModifiers (BuildingType, ModifierId)
SELECT	'BUILDING_KILWA_KISIWANI',
		'MODIFIER_CSE_KILWA_MARITIME_SINGLE'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

INSERT INTO BuildingModifiers (BuildingType, ModifierId)
SELECT	'BUILDING_KILWA_KISIWANI',
		'MODIFIER_CSE_KILWA_MARITIME'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,													SubjectRequirementSetId					)
VALUES	('MODIFIER_CSE_KILWA_SCIENTIFIC_SCIENCE_SINGLE',	'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',				'REQSET_CSE_SUZERAIN_1_SCIENTIFIC'		),
		('MODIFIER_CSE_KILWA_SCIENTIFIC_SCIENCE',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',			'REQSET_CSE_SUZERAIN_3_SCIENTIFIC'		),
		('MODIFIER_CSE_KILWA_CULTURAL_CULTURE_SINGLE',		'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',				'REQSET_CSE_SUZERAIN_1_CULTURAL'		),
		('MODIFIER_CSE_KILWA_CULTURAL_CULTURE',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',			'REQSET_CSE_SUZERAIN_3_CULTURAL'		),
		('MODIFIER_CSE_KILWA_RELIGIOUS_FAITH_SINGLE',		'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',				'REQSET_CSE_SUZERAIN_1_RELIGIOUS'		),
		('MODIFIER_CSE_KILWA_RELIGIOUS_FAITH',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',			'REQSET_CSE_SUZERAIN_3_RELIGIOUS'		),
		('MODIFIER_CSE_KILWA_TRADE_GOLD_SINGLE',			'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',				'REQSET_CSE_SUZERAIN_1_TRADE'			),
		('MODIFIER_CSE_KILWA_TRADE_GOLD',					'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',			'REQSET_CSE_SUZERAIN_3_TRADE'			),
		('MODIFIER_CSE_KILWA_INDUSTRIAL_DISTRICTS_SINGLE',	'MODIFIER_SINGLE_CITY_ADJUST_DISTRICT_PRODUCTION_MODIFIER',		'REQSET_CSE_SUZERAIN_1_INDUSTRIAL'		),
		('MODIFIER_CSE_KILWA_INDUSTRIAL_DISTRICTS',			'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION_MODIFIER',	'REQSET_CSE_SUZERAIN_3_INDUSTRIAL'		),
		('MODIFIER_CSE_KILWA_INDUSTRIAL_BUILDINGS_SINGLE',	'MODIFIER_SINGLE_CITY_ADJUST_BUILDING_PRODUCTION_MODIFIER',		'REQSET_CSE_SUZERAIN_1_INDUSTRIAL'		),
		('MODIFIER_CSE_KILWA_INDUSTRIAL_BUILDINGS',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION_MODIFIER',	'REQSET_CSE_SUZERAIN_3_INDUSTRIAL'		),
		('MODIFIER_CSE_KILWA_MILITARISTIC_UNITS_SINGLE',	'MODIFIER_SINGLE_CITY_ADJUST_UNIT_PRODUCTION_MODIFIER',			'REQSET_CSE_SUZERAIN_1_MILITARISTIC'	),
		('MODIFIER_CSE_KILWA_MILITARISTIC_UNITS',			'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_PRODUCTION_MODIFIER',		'REQSET_CSE_SUZERAIN_3_MILITARISTIC'	);

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT	'MODIFIER_CSE_KILWA_AGRICULTURAL_FOOD_SINGLE',
		'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',
		'REQSET_CSE_SUZERAIN_1_AGRICULTURAL'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT	'MODIFIER_CSE_KILWA_AGRICULTURAL_FOOD',
		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',
		'REQSET_CSE_SUZERAIN_3_AGRICULTURAL'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT	'MODIFIER_CSE_KILWA_MARITIME_FOOD_SINGLE',
		'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',
		'REQSET_CSE_SUZERAIN_1_MARITIME'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT	'MODIFIER_CSE_KILWA_MARITIME_FOOD',
		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',
		'REQSET_CSE_SUZERAIN_3_MARITIME'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT	'MODIFIER_CSE_KILWA_MARITIME_PRODUCTION_SINGLE',
		'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',
		'REQSET_CSE_SUZERAIN_1_MARITIME'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT	'MODIFIER_CSE_KILWA_MARITIME_PRODUCTION',
		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',
		'REQSET_CSE_SUZERAIN_3_MARITIME'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value			)
VALUES	('MODIFIER_CSE_KILWA_SCIENTIFIC_SCIENCE_SINGLE',	'YieldType',	'YIELD_SCIENCE'	),
		('MODIFIER_CSE_KILWA_SCIENTIFIC_SCIENCE_SINGLE',	'Amount',		20				),
		('MODIFIER_CSE_KILWA_SCIENTIFIC_SCIENCE',			'YieldType',	'YIELD_SCIENCE'	),
		('MODIFIER_CSE_KILWA_SCIENTIFIC_SCIENCE',			'Amount',		20				),
		('MODIFIER_CSE_KILWA_CULTURAL_CULTURE_SINGLE',		'YieldType',	'YIELD_CULTURE'	),
		('MODIFIER_CSE_KILWA_CULTURAL_CULTURE_SINGLE',		'Amount',		20				),
		('MODIFIER_CSE_KILWA_CULTURAL_CULTURE',				'YieldType',	'YIELD_CULTURE'	),
		('MODIFIER_CSE_KILWA_CULTURAL_CULTURE',				'Amount',		20				),
		('MODIFIER_CSE_KILWA_RELIGIOUS_FAITH_SINGLE',		'YieldType',	'YIELD_FAITH'	),
		('MODIFIER_CSE_KILWA_RELIGIOUS_FAITH_SINGLE',		'Amount',		20				),
		('MODIFIER_CSE_KILWA_RELIGIOUS_FAITH',				'YieldType',	'YIELD_FAITH'	),
		('MODIFIER_CSE_KILWA_RELIGIOUS_FAITH',				'Amount',		20				),
		('MODIFIER_CSE_KILWA_TRADE_GOLD_SINGLE',			'YieldType',	'YIELD_GOLD'	),
		('MODIFIER_CSE_KILWA_TRADE_GOLD_SINGLE',			'Amount',		20				),
		('MODIFIER_CSE_KILWA_TRADE_GOLD',					'YieldType',	'YIELD_GOLD'	),
		('MODIFIER_CSE_KILWA_TRADE_GOLD',					'Amount',		20				),
		('MODIFIER_CSE_KILWA_INDUSTRIAL_DISTRICTS_SINGLE',	'Amount',		20				),
		('MODIFIER_CSE_KILWA_INDUSTRIAL_DISTRICTS',			'Amount',		20				),
		('MODIFIER_CSE_KILWA_INDUSTRIAL_BUILDINGS_SINGLE',	'Amount',		20				),
		('MODIFIER_CSE_KILWA_INDUSTRIAL_BUILDINGS',			'Amount',		20				),
		('MODIFIER_CSE_KILWA_MILITARISTIC_UNITS_SINGLE',	'Amount',		20				),
		('MODIFIER_CSE_KILWA_MILITARISTIC_UNITS',			'Amount',		20				);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CSE_KILWA_AGRICULTURAL_FOOD_SINGLE', 'YieldType', 'YIELD_FOOD'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CSE_KILWA_AGRICULTURAL_FOOD_SINGLE', 'Amount', 20
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CSE_KILWA_AGRICULTURAL_FOOD', 'YieldType', 'YIELD_FOOD'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CSE_KILWA_AGRICULTURAL_FOOD', 'Amount', 20
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CSE_KILWA_MARITIME_FOOD_SINGLE', 'YieldType', 'YIELD_FOOD'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CSE_KILWA_MARITIME_FOOD_SINGLE', 'Amount', 10
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CSE_KILWA_MARITIME_FOOD', 'YieldType', 'YIELD_FOOD'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CSE_KILWA_MARITIME_FOOD', 'Amount', 10
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CSE_KILWA_MARITIME_PRODUCTION_SINGLE', 'YieldType', 'YIELD_FOOD'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CSE_KILWA_MARITIME_PRODUCTION_SINGLE', 'Amount', 10
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CSE_KILWA_MARITIME_PRODUCTION', 'YieldType', 'YIELD_FOOD'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CSE_KILWA_MARITIME_PRODUCTION', 'Amount', 10
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);
	
-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CSE_SUZERAIN_1_SCIENTIFIC',	'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CSE_SUZERAIN_3_SCIENTIFIC',	'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CSE_SUZERAIN_1_CULTURAL',		'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CSE_SUZERAIN_3_CULTURAL',		'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CSE_SUZERAIN_1_RELIGIOUS',		'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CSE_SUZERAIN_3_RELIGIOUS',		'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CSE_SUZERAIN_1_TRADE',			'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CSE_SUZERAIN_3_TRADE',			'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CSE_SUZERAIN_1_INDUSTRIAL',	'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CSE_SUZERAIN_3_INDUSTRIAL',	'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CSE_SUZERAIN_1_MILITARISTIC',	'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CSE_SUZERAIN_3_MILITARISTIC',	'REQUIREMENTSET_TEST_ANY'	);

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_CSE_SUZERAIN_1_AGRICULTURAL', 'REQUIREMENTSET_TEST_ANY'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_CSE_SUZERAIN_3_AGRICULTURAL', 'REQUIREMENTSET_TEST_ANY'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_CSE_SUZERAIN_1_MARITIME', 'REQUIREMENTSET_TEST_ANY'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_CSE_SUZERAIN_3_MARITIME', 'REQUIREMENTSET_TEST_ANY'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId						)
VALUES	('REQSET_CSE_SUZERAIN_1_SCIENTIFIC',	'REQ_CSE_SUZERAIN_1_SCIENTIFIC'		),
		('REQSET_CSE_SUZERAIN_3_SCIENTIFIC',	'REQ_CSE_SUZERAIN_3_SCIENTIFIC'		),
		('REQSET_CSE_SUZERAIN_1_CULTURAL',		'REQ_CSE_SUZERAIN_1_CULTURAL'		),
		('REQSET_CSE_SUZERAIN_3_CULTURAL',		'REQ_CSE_SUZERAIN_3_CULTURAL'		),
		('REQSET_CSE_SUZERAIN_1_RELIGIOUS',		'REQ_CSE_SUZERAIN_1_RELIGIOUS'		),
		('REQSET_CSE_SUZERAIN_3_RELIGIOUS',		'REQ_CSE_SUZERAIN_3_RELIGIOUS'		),
		('REQSET_CSE_SUZERAIN_1_TRADE',			'REQ_CSE_SUZERAIN_1_TRADE'			),
		('REQSET_CSE_SUZERAIN_3_TRADE',			'REQ_CSE_SUZERAIN_3_TRADE'			),
		('REQSET_CSE_SUZERAIN_1_INDUSTRIAL',	'REQ_CSE_SUZERAIN_1_INDUSTRIAL'		),
		('REQSET_CSE_SUZERAIN_3_INDUSTRIAL',	'REQ_CSE_SUZERAIN_3_INDUSTRIAL'		),
		('REQSET_CSE_SUZERAIN_1_MILITARISTIC',	'REQ_CSE_SUZERAIN_1_MILITARISTIC'	),
		('REQSET_CSE_SUZERAIN_3_MILITARISTIC',	'REQ_CSE_SUZERAIN_3_MILITARISTIC'	);


INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CSE_SUZERAIN_1_AGRICULTURAL', 'REQ_CSE_SUZERAIN_1_AGRICULTURAL'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CSE_SUZERAIN_3_AGRICULTURAL', 'REQ_CSE_SUZERAIN_3_AGRICULTURAL'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CSE_SUZERAIN_1_MARITIME', 'REQ_CSE_SUZERAIN_1_MARITIME'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CSE_SUZERAIN_3_MARITIME', 'REQ_CSE_SUZERAIN_3_MARITIME'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType							)
VALUES	('REQ_CSE_SUZERAIN_1_SCIENTIFIC',	'REQUIREMENT_PLAYER_IS_SUZERAIN_X_TYPE'	),
		('REQ_CSE_SUZERAIN_3_SCIENTIFIC',	'REQUIREMENT_PLAYER_IS_SUZERAIN_X_TYPE'	),
		('REQ_CSE_SUZERAIN_1_CULTURAL',		'REQUIREMENT_PLAYER_IS_SUZERAIN_X_TYPE'	),
		('REQ_CSE_SUZERAIN_3_CULTURAL',		'REQUIREMENT_PLAYER_IS_SUZERAIN_X_TYPE'	),
		('REQ_CSE_SUZERAIN_1_RELIGIOUS',	'REQUIREMENT_PLAYER_IS_SUZERAIN_X_TYPE'	),
		('REQ_CSE_SUZERAIN_3_RELIGIOUS',	'REQUIREMENT_PLAYER_IS_SUZERAIN_X_TYPE'	),
		('REQ_CSE_SUZERAIN_1_TRADE',		'REQUIREMENT_PLAYER_IS_SUZERAIN_X_TYPE'	),
		('REQ_CSE_SUZERAIN_3_TRADE',		'REQUIREMENT_PLAYER_IS_SUZERAIN_X_TYPE'	),
		('REQ_CSE_SUZERAIN_1_INDUSTRIAL',	'REQUIREMENT_PLAYER_IS_SUZERAIN_X_TYPE'	),
		('REQ_CSE_SUZERAIN_3_INDUSTRIAL',	'REQUIREMENT_PLAYER_IS_SUZERAIN_X_TYPE'	),
		('REQ_CSE_SUZERAIN_1_MILITARISTIC',	'REQUIREMENT_PLAYER_IS_SUZERAIN_X_TYPE'	),
		('REQ_CSE_SUZERAIN_3_MILITARISTIC',	'REQUIREMENT_PLAYER_IS_SUZERAIN_X_TYPE'	);

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT	'REQ_CSE_SUZERAIN_1_AGRICULTURAL',	'REQUIREMENT_PLAYER_IS_SUZERAIN_X_TYPE'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT	'REQ_CSE_SUZERAIN_3_AGRICULTURAL',	'REQUIREMENT_PLAYER_IS_SUZERAIN_X_TYPE'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT	'REQ_CSE_SUZERAIN_1_MARITIME',	'REQUIREMENT_PLAYER_IS_SUZERAIN_X_TYPE'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT	'REQ_CSE_SUZERAIN_3_MARITIME',	'REQUIREMENT_PLAYER_IS_SUZERAIN_X_TYPE'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value								)
VALUES	('REQ_CSE_SUZERAIN_1_SCIENTIFIC',	'LeaderType',	'LEADER_MINOR_CIV_SCIENTIFIC'		),
		('REQ_CSE_SUZERAIN_1_SCIENTIFIC',	'Amount',		1									),
		('REQ_CSE_SUZERAIN_3_SCIENTIFIC',	'LeaderType',	'LEADER_MINOR_CIV_SCIENTIFIC'		),
		('REQ_CSE_SUZERAIN_3_SCIENTIFIC',	'Amount',		3									),
		('REQ_CSE_SUZERAIN_1_CULTURAL',		'LeaderType',	'LEADER_MINOR_CIV_CULTURAL'			),
		('REQ_CSE_SUZERAIN_1_CULTURAL',		'Amount',		1									),
		('REQ_CSE_SUZERAIN_3_CULTURAL',		'LeaderType',	'LEADER_MINOR_CIV_CULTURAL'			),
		('REQ_CSE_SUZERAIN_3_CULTURAL',		'Amount',		3									),
		('REQ_CSE_SUZERAIN_1_RELIGIOUS',	'LeaderType',	'LEADER_MINOR_CIV_RELIGIOUS'		),
		('REQ_CSE_SUZERAIN_1_RELIGIOUS',	'Amount',		1									),
		('REQ_CSE_SUZERAIN_3_RELIGIOUS',	'LeaderType',	'LEADER_MINOR_CIV_RELIGIOUS'		),
		('REQ_CSE_SUZERAIN_3_RELIGIOUS',	'Amount',		3									),
		('REQ_CSE_SUZERAIN_1_TRADE',		'LeaderType',	'LEADER_MINOR_CIV_TRADE'			),
		('REQ_CSE_SUZERAIN_1_TRADE',		'Amount',		1									),
		('REQ_CSE_SUZERAIN_3_TRADE',		'LeaderType',	'LEADER_MINOR_CIV_TRADE'			),
		('REQ_CSE_SUZERAIN_3_TRADE',		'Amount',		3									),
		('REQ_CSE_SUZERAIN_1_INDUSTRIAL',	'LeaderType',	'LEADER_MINOR_CIV_INDUSTRIAL'		),
		('REQ_CSE_SUZERAIN_1_INDUSTRIAL',	'Amount',		1									),
		('REQ_CSE_SUZERAIN_3_INDUSTRIAL',	'LeaderType',	'LEADER_MINOR_CIV_INDUSTRIAL'		),
		('REQ_CSE_SUZERAIN_3_INDUSTRIAL',	'Amount',		3									),
		('REQ_CSE_SUZERAIN_1_MILITARISTIC',	'LeaderType',	'LEADER_MINOR_CIV_MILITARISTIC'		),
		('REQ_CSE_SUZERAIN_1_MILITARISTIC',	'Amount',		1									),
		('REQ_CSE_SUZERAIN_3_MILITARISTIC',	'LeaderType',	'LEADER_MINOR_CIV_MILITARISTIC'		),
		('REQ_CSE_SUZERAIN_3_MILITARISTIC',	'Amount',		3									);

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CSE_SUZERAIN_1_AGRICULTURAL', 'LeaderType', 'LEADER_MINOR_CIV_CSE_AGRICULTURAL'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CSE_SUZERAIN_1_AGRICULTURAL', 'Amount', 1
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CSE_SUZERAIN_3_AGRICULTURAL', 'LeaderType', 'LEADER_MINOR_CIV_CSE_AGRICULTURAL'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CSE_SUZERAIN_3_AGRICULTURAL', 'Amount', 3
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_AGRICULTURAL' AND Value = 1);

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CSE_SUZERAIN_1_MARITIME', 'LeaderType', 'LEADER_MINOR_CIV_CSE_MARITIME'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CSE_SUZERAIN_1_MARITIME', 'Amount', 1
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CSE_SUZERAIN_3_MARITIME', 'LeaderType', 'LEADER_MINOR_CIV_CSE_MARITIME'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CSE_SUZERAIN_3_MARITIME', 'Amount', 3
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CSE_MARITIME' AND Value = 1);