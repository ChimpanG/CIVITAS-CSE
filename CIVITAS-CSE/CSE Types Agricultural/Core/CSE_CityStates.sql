/*
	City-States
	Authors: ChimpanG
*/

-----------------------------------------------
-- CSE_Master
-----------------------------------------------

UPDATE	CSE_Master
SET		ProposedType = 'CSE_AGRICULTURAL'
WHERE	CityState
IN		(
		'BUENOS_AIRES',
		'CAHOKIA',
		'CARDIFF'
		);