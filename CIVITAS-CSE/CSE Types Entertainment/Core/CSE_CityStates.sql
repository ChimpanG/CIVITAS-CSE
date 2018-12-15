/*
	City-States
	Authors: ChimpanG
*/

-----------------------------------------------
-- Leaders
-----------------------------------------------

UPDATE	CSE_Master
SET		CityStateType = 'CSE_ENTERTAINMENT'
WHERE	CityState
IN		(
		'MEXICO_CITY'
		);