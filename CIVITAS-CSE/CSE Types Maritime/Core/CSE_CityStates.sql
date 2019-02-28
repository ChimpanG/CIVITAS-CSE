/*
	City-States
	Authors: ChimpanG
*/

-----------------------------------------------
-- Leaders
-----------------------------------------------

UPDATE	CSE_Master
SET		ProposedType = 'CSE_MARITIME'
WHERE	CityState
IN		(
		'JAKARTA',
		'LISBON'
		);