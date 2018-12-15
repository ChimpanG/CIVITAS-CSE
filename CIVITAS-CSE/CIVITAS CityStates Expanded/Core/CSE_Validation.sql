/*
	Validation
	Authors: ChimpanG
*/

-----------------------------------------------
-- CSE_Validation
-----------------------------------------------

INSERT INTO CSE_Validation (Version)
VALUES	('BASE');

INSERT INTO CSE_Validation (Version)
SELECT	'VIKINGS'
WHERE EXISTS (SELECT * FROM Types WHERE Type IN
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
);

INSERT INTO CSE_Validation (Version)
SELECT	'XP1'
WHERE EXISTS (SELECT * FROM Types WHERE Type IN
(
'CIVILIZATION_CREE'
);

INSERT INTO CSE_Validation (Version)
SELECT	'XP2'
WHERE EXISTS (SELECT * FROM Types WHERE Type IN
(
'CIVILIZATION_HUNGARY'
);

-----------------------------------------------
-- CSE_Master
-----------------------------------------------

DELETE FROM CSE_Master
WHERE	Requires NOT IN (SELECT * FROM CSE_Validation)
OR		Removed IN (SELECT * FROM CSE_Validation);

UPDATE	CSE_Master
SET		CityStateType =
		CASE
			WHEN ProposedType IN (SELECT * FROM ModCheck)
			THEN ProposedType
			ELSE FallbackType
		END;

-----------------------------------------------
-- CSE_StartBias
-----------------------------------------------

DELETE FROM CSE_StartBias
WHERE	CityState NOT IN (SELECT * FROM CSE_Master);