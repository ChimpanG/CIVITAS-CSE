/*
	City-States
	Authors: ChimpanG
*/

-----------------------------------------------
-- Leaders
-----------------------------------------------

UPDATE	CSE_Master
SET		CityStateType = 'CSE_CONSULAR'
WHERE	CityState
IN		(
		'BRUSSELS',
		'GENEVA'
		);