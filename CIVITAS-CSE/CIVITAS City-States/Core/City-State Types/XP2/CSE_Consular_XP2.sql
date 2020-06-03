/*
	Consular XP2
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types 
		(Type, 							Kind			)
VALUES	('MODTYPE_CSE_CONSULAR_FAVOR',	'KIND_MODIFIER'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

DELETE FROM TraitModifiers
WHERE ModifierId
IN	(
	'MODIFIER_CSE_CONSULAR_CAPITAL_PRESSURE',
	'MODIFIER_CSE_CONSULAR_CITY_LOYALTY',
	'MODIFIER_CSE_CONSULAR_CITY_PRESSURE',
	'MODIFIER_CSE_CONSULAR_GOVERNOR_PRESSURE'
	)
AND EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CONSULAR_BONUS_TYPE' AND Value = 0);

INSERT INTO TraitModifiers 
		(TraitType, 						ModifierId									)
SELECT	'MINOR_CIV_CSE_CONSULAR_TRAIT',		'MODIFIER_CSE_CONSULAR_CAPITAL_FAVOR'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CONSULAR_BONUS_TYPE' AND Value = 0);

INSERT INTO TraitModifiers 
		(TraitType, 						ModifierId									)
SELECT	'MINOR_CIV_CSE_CONSULAR_TRAIT',		'MODIFIER_CSE_CONSULAR_GOV_PLAZA_1_FAVOR'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CONSULAR_BONUS_TYPE' AND Value = 0);

INSERT INTO TraitModifiers 
		(TraitType, 						ModifierId									)
SELECT	'MINOR_CIV_CSE_CONSULAR_TRAIT',		'MODIFIER_CSE_CONSULAR_GOV_PLAZA_2_FAVOR'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CONSULAR_BONUS_TYPE' AND Value = 0);

INSERT INTO TraitModifiers 
		(TraitType, 						ModifierId									)
SELECT	'MINOR_CIV_CSE_CONSULAR_TRAIT',		'MODIFIER_CSE_CONSULAR_GOV_PLAZA_3_FAVOR'
WHERE EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CONSULAR_BONUS_TYPE' AND Value = 0);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO DynamicModifiers 
		(ModifierType,					CollectionType,		EffectType									)
VALUES	('MODTYPE_CSE_CONSULAR_FAVOR',	'COLLECTION_OWNER',	'EFFECT_ADJUST_PLAYER_EXTRA_FAVOR_PER_TURN'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers 
		(ModifierId,									ModifierType,							SubjectRequirementSetId				)
VALUES	('MODIFIER_CSE_CONSULAR_CAPITAL_FAVOR',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',	'PLAYER_HAS_SMALL_INFLUENCE'		),
		('MODIFIER_CSE_CONSULAR_CAPITAL_FAVOR_MOD',		'MODTYPE_CSE_CONSULAR_FAVOR',			NULL								),
		('MODIFIER_CSE_CONSULAR_GOV_PLAZA_1_FAVOR',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',	'PLAYER_HAS_MEDIUM_INFLUENCE'		),
		('MODIFIER_CSE_CONSULAR_GOV_PLAZA_1_FAVOR_MOD',	'MODTYPE_CSE_CONSULAR_FAVOR',			'REQSET_CSE_PLAYER_HAS_GOV_TIER_1'	),
		('MODIFIER_CSE_CONSULAR_GOV_PLAZA_2_FAVOR',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',	'PLAYER_HAS_LARGE_INFLUENCE'		),
		('MODIFIER_CSE_CONSULAR_GOV_PLAZA_2_FAVOR_MOD',	'MODTYPE_CSE_CONSULAR_FAVOR',			'REQSET_CSE_PLAYER_HAS_GOV_TIER_2'	),
		('MODIFIER_CSE_CONSULAR_GOV_PLAZA_3_FAVOR',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',	'PLAYER_HAS_LARGEST_INFLUENCE'		),
		('MODIFIER_CSE_CONSULAR_GOV_PLAZA_3_FAVOR_MOD',	'MODTYPE_CSE_CONSULAR_FAVOR',			'REQSET_CSE_PLAYER_HAS_GOV_TIER_3'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,				Value											)
VALUES	('MODIFIER_CSE_CONSULAR_CAPITAL_FAVOR',			'ModifierId',		'MODIFIER_CSE_CONSULAR_CAPITAL_FAVOR_MOD'		),
		('MODIFIER_CSE_CONSULAR_CAPITAL_FAVOR_MOD',		'Amount',			2												),
		('MODIFIER_CSE_CONSULAR_GOV_PLAZA_1_FAVOR',		'ModifierId',		'MODIFIER_CSE_CONSULAR_GOV_PLAZA_1_FAVOR_MOD'	),
		('MODIFIER_CSE_CONSULAR_GOV_PLAZA_1_FAVOR_MOD',	'Amount',			2												),
		('MODIFIER_CSE_CONSULAR_GOV_PLAZA_2_FAVOR',		'ModifierId',		'MODIFIER_CSE_CONSULAR_GOV_PLAZA_2_FAVOR_MOD'	),
		('MODIFIER_CSE_CONSULAR_GOV_PLAZA_2_FAVOR_MOD',	'Amount',			2												),
		('MODIFIER_CSE_CONSULAR_GOV_PLAZA_3_FAVOR',		'ModifierId',		'MODIFIER_CSE_CONSULAR_GOV_PLAZA_3_FAVOR_MOD'	),
		('MODIFIER_CSE_CONSULAR_GOV_PLAZA_3_FAVOR_MOD',	'Amount',			2												);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings 
		(ModifierId, 								Context, 	Text													)
VALUES	('MODIFIER_CSE_CONSULAR_CAPITAL_FAVOR',		'Preview', 	'LOC_CSE_CONSULAR_TRAIT_SMALL_INFLUENCE_BONUS_XP2'		),
		('MODIFIER_CSE_CONSULAR_GOV_PLAZA_1_FAVOR',	'Preview', 	'LOC_CSE_CONSULAR_TRAIT_MEDIUM_INFLUENCE_BONUS_XP2'		),
		('MODIFIER_CSE_CONSULAR_GOV_PLAZA_2_FAVOR',	'Preview', 	'LOC_CSE_CONSULAR_TRAIT_LARGE_INFLUENCE_BONUS_XP2'		),
		('MODIFIER_CSE_CONSULAR_GOV_PLAZA_3_FAVOR',	'Preview', 	'LOC_CSE_CONSULAR_TRAIT_LARGEST_INFLUENCE_BONUS_XP2'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CSE_PLAYER_HAS_GOV_TIER_1',	'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CSE_PLAYER_HAS_GOV_TIER_2',	'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CSE_PLAYER_HAS_GOV_TIER_3',	'REQUIREMENTSET_TEST_ANY'	);

UPDATE	CSE_ClassTypes
SET		TraitDescription = 'LOC_CSE_CONSULAR_TRAIT_DESCRIPTION_XP2'
WHERE	TraitDescription = 'LOC_CSE_CONSULAR_TRAIT_DESCRIPTION'
AND EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CONSULAR_BONUS_TYPE' AND Value = 0);

UPDATE	CSE_ClassTypes
SET		SmallBonus = 'LOC_CSE_CONSULAR_TRAIT_SMALL_INFLUENCE_BONUS_XP2'
WHERE	SmallBonus = 'LOC_CSE_CONSULAR_TRAIT_SMALL_INFLUENCE_BONUS'
AND EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CONSULAR_BONUS_TYPE' AND Value = 0);

UPDATE	CSE_ClassTypes
SET		MediumBonus = 'LOC_CSE_CONSULAR_TRAIT_MEDIUM_INFLUENCE_BONUS_XP2'
WHERE	MediumBonus = 'LOC_CSE_CONSULAR_TRAIT_MEDIUM_INFLUENCE_BONUS'
AND EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CONSULAR_BONUS_TYPE' AND Value = 0);

UPDATE	CSE_ClassTypes
SET		LargeBonus = 'LOC_CSE_CONSULAR_TRAIT_LARGE_INFLUENCE_BONUS_XP2'
WHERE	LargeBonus = 'LOC_CSE_CONSULAR_TRAIT_LARGE_INFLUENCE_BONUS'
AND EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CONSULAR_BONUS_TYPE' AND Value = 0);

UPDATE	CSE_ClassTypes
SET		LargestBonus = 'LOC_CSE_CONSULAR_TRAIT_LARGEST_INFLUENCE_BONUS_XP2'
WHERE	LargestBonus = 'LOC_CSE_CONSULAR_TRAIT_LARGEST_INFLUENCE_BONUS'
AND EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CONSULAR_BONUS_TYPE' AND Value = 0);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CSE_PLAYER_HAS_GOV_TIER_1',
		'REQ_CSE_PLAYER_HAS_'||SUBSTR(BuildingType, 10)
FROM	Buildings
WHERE	GovernmentTierRequirement = 'Tier1'
AND		PrereqDistrict = 'DISTRICT_GOVERNMENT';

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CSE_PLAYER_HAS_GOV_TIER_2',
		'REQ_CSE_PLAYER_HAS_'||SUBSTR(BuildingType, 10)
FROM	Buildings
WHERE	GovernmentTierRequirement = 'Tier2'
AND		PrereqDistrict = 'DISTRICT_GOVERNMENT';

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CSE_PLAYER_HAS_GOV_TIER_3',
		'REQ_CSE_PLAYER_HAS_'||SUBSTR(BuildingType, 10)
FROM	Buildings
WHERE	GovernmentTierRequirement = 'Tier3'
AND		PrereqDistrict = 'DISTRICT_GOVERNMENT';

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT	'REQ_CSE_PLAYER_HAS_'||SUBSTR(BuildingType, 10),
		'REQUIREMENT_PLAYER_HAS_BUILDING'
FROM	Buildings
WHERE	GovernmentTierRequirement IN ('Tier1', 'Tier2', 'Tier3')
AND		PrereqDistrict = 'DISTRICT_GOVERNMENT';

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CSE_PLAYER_HAS_'||SUBSTR(BuildingType, 10),
		'BuildingType',
		BuildingType
FROM	Buildings
WHERE	GovernmentTierRequirement IN ('Tier1', 'Tier2', 'Tier3')
AND		PrereqDistrict = 'DISTRICT_GOVERNMENT';