/*
	Wonders XP2
	Authors: ChimpanG
*/

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,					ModifierId								)
VALUES	('MINOR_CIV_DEFAULT_TRAIT', 'MODIFIER_CSE_ORSZAGHAZ_FAVOR_ATTACH'	);

-----------------------------------------------
-- BuildingModifiers
-----------------------------------------------

DELETE FROM BuildingModifiers
WHERE	BuildingType = 'BUILDING_ORSZAGHAZ'
AND		ModifierId = 'ORSZAGHAZ_DOUBLE_FAVOR_SUZERAIN';

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,							ModifierType,							SubjectRequirementSetId				)
VALUES	('MODIFIER_CSE_ORSZAGHAZ_FAVOR_ATTACH',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',	'REQSET_CSE_SUZERAIN_HAS_ORSZAGHAZ'	),
		('MODIFIER_CSE_ORSZAGHAZ_FAVOR',		'MODTYPE_CSE_CONSULAR_FAVOR',			NULL								);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,							Name,			Value							)
VALUES	('MODIFIER_CSE_ORSZAGHAZ_FAVOR_ATTACH',	'ModifierId',	'MODIFIER_CSE_ORSZAGHAZ_FAVOR'	),
		('MODIFIER_CSE_ORSZAGHAZ_FAVOR',		'Amount',		1								);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CSE_SUZERAIN_HAS_ORSZAGHAZ',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId					)
VALUES	('REQSET_CSE_SUZERAIN_HAS_ORSZAGHAZ',	'REQ_CSE_PLAYER_HAS_ORSZAGHAZ'	),
		('REQSET_CSE_SUZERAIN_HAS_ORSZAGHAZ',	'REQUIRES_PLAYER_IS_SUZERAIN'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType						)
VALUES	('REQ_CSE_PLAYER_HAS_ORSZAGHAZ',	'REQUIREMENT_PLAYER_HAS_BUILDING'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value					)
VALUES	('REQ_CSE_PLAYER_HAS_ORSZAGHAZ',	'BuildingType',	'BUILDING_ORSZAGHAZ'	);