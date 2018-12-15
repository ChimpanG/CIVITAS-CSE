/*
	City-States
	Authors: ChimpanG
*/

-----------------------------------------------
-- Leaders
-----------------------------------------------

UPDATE	CSE_Master
SET		CityStateType = 'CSE_MARITIME'
WHERE	CityState
IN		(
		'JAKARTA',
		'LISBON'
		);