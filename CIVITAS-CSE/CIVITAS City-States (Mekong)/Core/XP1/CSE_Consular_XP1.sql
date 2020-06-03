/*
	Consular XP1
	Authors: ChimpanG
*/

-----------------------------------------------
-- CSE_ClassTypes
-----------------------------------------------

UPDATE	CSE_ClassTypes
SET		MediumBonus = 'LOC_CSE_CONSULAR_TRAIT_MEDIUM_INFLUENCE_MEKONG_BONUS',
		LargestBonus = 'LOC_CSE_CONSULAR_TRAIT_LARGEST_INFLUENCE_MEKONG_BONUS',
		TraitDescription = 'LOC_CSE_CONSULAR_TRAIT_MEKONG_DESCRIPTION'
WHERE	Type IN ('CSE_CONSULAR')
AND EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CONSULAR_BONUS_TYPE' AND Value = 1);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

UPDATE	ModifierArguments
SET		Value = 1
WHERE	Name = 'Amount'
AND		ModifierId = 'MODIFIER_CSE_CONSULAR_CITY_LOYALTY_MOD'
AND EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CONSULAR_BONUS_TYPE' AND Value = 1);

UPDATE	ModifierArguments
SET		Value = 3
WHERE	Name = 'Amount'
AND		ModifierId = 'MODIFIER_CSE_CONSULAR_GOVERNOR_PRESSURE_MOD'
AND EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CONSULAR_BONUS_TYPE' AND Value = 1);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

UPDATE	ModifierStrings
SET		Text = 'LOC_CSE_CONSULAR_TRAIT_MEDIUM_INFLUENCE_MEKONG_BONUS'
WHERE	ModifierId IN ('MODIFIER_CSE_CONSULAR_GOV_PLAZA_1_FAVOR')
AND EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CONSULAR_BONUS_TYPE' AND Value = 1);

UPDATE	ModifierStrings
SET		Text = 'LOC_CSE_CONSULAR_TRAIT_LARGEST_INFLUENCE_MEKONG_BONUS'
WHERE	ModifierId IN ('MODIFIER_CSE_CONSULAR_GOV_PLAZA_3_FAVOR')
AND EXISTS (SELECT * FROM CSE_UserSettings WHERE Setting = 'CONSULAR_BONUS_TYPE' AND Value = 1);