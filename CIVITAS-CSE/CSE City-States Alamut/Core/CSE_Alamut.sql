/*
	Catalhoyuk
	~ Receive the Leather and Wool Luxury resources (not tradeable), which provide 6 Amenities each.

	Authors: thecrazyscotsman, ChimpanG
*/

-----------------------------------------------
-- ModCheck
-----------------------------------------------

INSERT INTO ModCheck (ModType) VALUES ('CSE_ALAMUT');

-----------------------------------------------
-- CSE_Master

-- NOTES:
-- FallbackType is used when the CityStateType is unavailable
-- FallbackCity is used in cases where a modded civilization or leader uses the same city as their Capital.
-----------------------------------------------

INSERT INTO CSE_Master
		(CityState,		ProposedType,		FallbackType,	FallbackCity,	Ethnicity			)
VALUES	('CSE_ALAMUT',	'MILITARISTIC',		NULL,			'LAMBESAR',		'ETHNICITY_MEDIT'	);

-----------------------------------------------
-- CSE_StartBias

-- NOTES:
-- ObjectType can be TERRAIN, FEATURE, RESOURCE or RIVER
-- Object is the latter part of the object, except RIVER which should be NULL
-----------------------------------------------

INSERT INTO CSE_StartBias
		(CityState,		Type,			Object,				Tier	)
VALUES	('CSE_ALAMUT',	'TERRAIN',		'DESERT_HILLS',		3		),
		('CSE_ALAMUT',	'TERRAIN',		'DESERT_MOUNTAIN',	5		);


-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,				ModifierId						)
VALUES	('CSE_ALAMUT_TRAIT',	'CSE_ALAMUT_SUZERAIN_HASHASHIN'	);	

INSERT INTO TraitModifiers (TraitType, ModifierId)
SELECT 'CSE_ALAMUT_TRAIT', 'CSE_ALAMUT_HASHASHIN'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'RECEIVE_OWN_BONUS' AND Value = 1);

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,							Kind					)
VALUES	('UNIT_CSE_HASHASHIN',			'KIND_UNIT'				),
		('ABILITY_CSE_ALAMUT',			'KIND_ABILITY'			),
		('PROMOTION_CLASS_CSE_ALAMUT',	'KIND_PROMOTION_CLASS'	),
		('PROMOTION_CSE_FLEET_FOOTED',	'KIND_PROMOTION'		),
		('PROMOTION_CSE_TENACIOUS',		'KIND_PROMOTION'		),
		('PROMOTION_CSE_ENDURANCE',		'KIND_PROMOTION'		),
		('PROMOTION_CSE_SNARE',			'KIND_PROMOTION'		),
		('PROMOTION_CSE_PREPARATION',	'KIND_PROMOTION'		),
		('PROMOTION_CSE_COUP_DE_GRACE',	'KIND_PROMOTION'		),
		('PROMOTION_CSE_INSURRECTION',	'KIND_PROMOTION'		),
		('PROMOTION_CSE_INFILTRATION',	'KIND_PROMOTION'		),
		('PROMOTION_CSE_EXECUTIONER',	'KIND_PROMOTION'		);

-----------------------------------------------
-- Tags
-----------------------------------------------

INSERT INTO Tags
		(Tag,					Vocabulary		)
VALUES	('CLASS_CSE_ALAMUT',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------

INSERT INTO TypeTags
		(Type,								Tag					)
VALUES	('UNIT_CSE_HASHASHIN',				'CLASS_CSE_ALAMUT'	),
		('ABILITY_CSE_ALAMUT',				'CLASS_CSE_ALAMUT'	),
		('ABILITY_IGNORE_ZOC',				'CLASS_CSE_ALAMUT'	),
		('ABILITY_STEALTH',					'CLASS_CSE_ALAMUT'	),
		('ABILITY_SEE_HIDDEN',				'CLASS_CSE_ALAMUT'	),
		('ABILITY_FASCISM_ATTACK_BUFF',		'CLASS_CSE_ALAMUT'	),
		('ABILITY_COMMUNISM_DEFENSE_BUFF',	'CLASS_CSE_ALAMUT'	);

-----------------------------------------------
-- Units
-----------------------------------------------	
	
INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		CostProgressionModel,
		CostProgressionParam1,
		AdvisorType,
		Combat,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MustPurchase,
		PurchaseYield,
		StrategicResource
		)
SELECT	'UNIT_CSE_HASHASHIN',	-- UnitType
		'LOC_UNIT_CSE_HASHASHIN_NAME',	-- Name
		'LOC_UNIT_CSE_HASHASHIN_DESCRIPTION', -- Description
		NULL, -- TraitType
		BaseMoves,
		Cost,
		'COST_PROGRESSION_GAME_PROGRESS', -- CostProgressionModel
		400, -- CostProgressionParam1
		AdvisorType,
		Combat,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		'PROMOTION_CLASS_CSE_ALAMUT', -- PromotionClass
		1, -- Maintenance
		0, -- MustPurchase
		'YIELD_GOLD', -- PurchaseYield
		NULL -- StrategicResource
FROM	Units
WHERE	UnitType = 'UNIT_WARRIOR';

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,			Name,							Description								)
VALUES	('ABILITY_CSE_ALAMUT',		'LOC_ABILITY_CSE_ALAMUT_NAME',	'LOC_ABILITY_CSE_ALAMUT_DESCRIPTION'	);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------

INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,			ModifierId	)
SELECT	'ABILITY_CSE_ALAMUT',		'MODIFIER_CSE_ALAMUT_STRENGTH_'||EraType
FROM	Eras WHERE EraType NOT IN ('ERA_ANCIENT');

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,						ModifierType,					SubjectRequirementSetId				)
VALUES	('CSE_ALAMUT_SUZERAIN_HASHASHIN',	'MODTYPE_CSE_ATTACH_PLAYERS',	'REQSET_CSE_PLAYER_IS_NOT_SUZERAIN'	), -- Inverting this because we can only disable unit builds, not enable.
		('CSE_ALAMUT_HASHASHIN',			'MODTYPE_CSE_DISABLE_UNIT',		NULL								);

INSERT INTO Modifiers
		(ModifierId,								ModifierType,					SubjectRequirementSetId	)
SELECT	'MODIFIER_CSE_ALAMUT_STRENGTH_'||EraType,	'MODTYPE_CSE_ADJUST_STRENGTH',	'REQSET_CSE_IS_'||EraType
FROM	Eras WHERE EraType NOT IN ('ERA_ANCIENT');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,						Name,			Value					)
VALUES	('CSE_ALAMUT_SUZERAIN_HASHASHIN',	'ModifierId',	'CSE_ALAMUT_HASHASHIN'	),
		('CSE_ALAMUT_HASHASHIN',			'UnitType',		'UNIT_CSE_HASHASHIN'	);

INSERT INTO ModifierArguments
		(ModifierId,								Name,		Value	)
SELECT	'MODIFIER_CSE_ALAMUT_STRENGTH_'||EraType,	'Amount',	10
FROM	Eras WHERE EraType NOT IN ('ERA_ANCIENT');