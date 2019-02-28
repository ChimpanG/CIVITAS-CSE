/*
	City-States
	Authors: ChimpanG
*/

-----------------------------------------------
-- Leaders
-----------------------------------------------

UPDATE	CSE_Master
SET		ProposedType = 'CSE_CONSULAR'
WHERE	CityState
IN		(
		'BRUSSELS',
		'GENEVA'
		);