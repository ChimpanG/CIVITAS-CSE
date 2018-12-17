/*
	Validation
	Authors: ChimpanG
*/

-----------------------------------------------
-- CSE_ClassTypes
-----------------------------------------------

UPDATE	CSE_ClassTypes
SET		TypeName = 'LOC_CITY_STATES_TYPE_'||Type,
		LeaderType = 'LEADER_MINOR_CIV_'||Type,
		SmallBonus = 'LOC_CSE_'||Type||'_TRAIT_SMALL_INFLUENCE_BONUS',
		MediumBonus = 'LOC_CSE_'||Type||'_TRAIT_MEDIUM_INFLUENCE_BONUS',
		LargeBonus = 'LOC_CSE_'||Type||'_TRAIT_LARGE_INFLUENCE_BONUS',
		ColorRef = 'COLOR_PLAYER_CITY_STATE_'||Type||'_SECONDARY';

-----------------------------------------------
-- CSE_Validation

-- This will determine what is active for the player
-----------------------------------------------

INSERT INTO CSE_Validation (Version)
VALUES	('BASE');

INSERT INTO CSE_Validation (Version)
SELECT	'VIKINGS'
WHERE EXISTS (SELECT Type FROM Types WHERE Type IN
(
'CIVILIZATION_AUCKLAND',
'CIVILIZATION_ANTANANARIVO',
'CIVILIZATION_ARMAGH',
'CIVILIZATION_GRANADA',
'CIVILIZATION_MUSCAT',
'CIVILIZATION_PALENQUE',
'IMPROVEMENT_ALCAZAR',
'IMPROVEMENT_MONASTERY',
'FEATURE_EYJAFJALLAJOKULL',
'FEATURE_LYSEFJORDEN',
'FEATURE_GIANTS_CAUSEWAY'
));

INSERT INTO CSE_Validation (Version)
SELECT	'XP1'
WHERE EXISTS (SELECT Type FROM Types WHERE Type IN
(
'CIVILIZATION_CREE'
));

INSERT INTO CSE_Validation (Version)
SELECT	'XP2'
WHERE EXISTS (SELECT Type FROM Types WHERE Type IN
(
'CIVILIZATION_HUNGARY'
));

-----------------------------------------------
-- CSE_Master
-----------------------------------------------

-- Remove City-States from Master depending on active DLC, XP etc
DELETE FROM CSE_Master
WHERE	Requires NOT IN (SELECT * FROM CSE_Validation)
OR		Removed IN (SELECT * FROM CSE_Validation);

-- Update City-State type based on whether their type exists in classes
UPDATE	CSE_Master
SET		CityStateType =
		CASE
			WHEN ProposedType IN (SELECT Type FROM CSE_ClassTypes)
			THEN ProposedType
			ELSE FallbackType
		END;

-- Update hidden columns for less concatenation going forward
UPDATE	CSE_Master
SET		CivilizationType = 'CIVILIZATION_'||CityState,
		LeaderType = 'LEADER_MINOR_CIV_'||CityState,
		CityStateLeaderType = 'LEADER_MINOR_CIV_'||CityStateType,
		ColorRef = (SELECT ColorRef FROM CSE_ClassTypes WHERE Type = CSE_Master.CityStateType);

-----------------------------------------------
-- CSE_StartBias
-----------------------------------------------

-- Delete StartBias for deleted City-States in Master
DELETE FROM CSE_StartBias
WHERE	CityState NOT IN (SELECT CityState FROM CSE_Master);

-- Update hidden columns for less concatenation going forward
UPDATE	CSE_StartBias
SET		CivilizationType = 'CIVILIZATION_'||CityState;