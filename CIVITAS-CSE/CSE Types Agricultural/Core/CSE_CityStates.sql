/*
	City-States
	Authors: ChimpanG
*/

-----------------------------------------------
-- Leaders
-----------------------------------------------

UPDATE	CSE_Master
SET		CityStateType = 'CSE_AGRICULTURAL'
WHERE	CityState
IN		(
		'BUENOS_AIRES',
		'CAHOKIA',
		'CARDIFF'
		);