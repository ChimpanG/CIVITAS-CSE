/*
	Civilizations
	Authors: thecrazyscotsman, ChimpanG
*/

-----------------------------------------------
-- GlobalParameters
-----------------------------------------------

-- Increase Combat Strength of CS Units based on number of Envoys it has.
UPDATE	GlobalParameters
SET		Value = 2.0
WHERE	Name = 'COMBAT_STRENGTH_FROM_ENVOYS';

