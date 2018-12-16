/*
	Schema
	Authors: thecrazyscotsman, Chrisy15, ChimpanG
*/

-----------------------------------------------
-- New Tables
-----------------------------------------------

CREATE TABLE IF NOT EXISTS C15_MinorCivilization_CityStateClassTypes 
	(
	Type		TEXT	NOT NULL, 
	LeaderType	TEXT	NOT NULL, 
	TypeName	TEXT	NOT NULL, 
	SmallBonus	TEXT	NOT NULL, 
	MedBonus	TEXT	NOT NULL, 
	LargeBonus	TEXT	NOT NULL, 
	BonusIcon	TEXT	NOT NULL, 
	TypeIcon	TEXT	NOT NULL, 

	PRIMARY KEY (Type)
	);

CREATE TABLE IF NOT EXISTS CSE_Master
	(
	CityState			TEXT		NOT NULL,
	CivilizationType	TEXT		DEFAULT NULL,
	LeaderType			TEXT		DEFAULT NULL,
	New					BOOLEAN		DEFAULT 1,
	CityStateType		TEXT		DEFAULT NULL, 
	CityStateLeaderType	TEXT		DEFAULT NULL,
	ProposedType		TEXT		NOT NULL,
	FallbackType		TEXT		DEFAULT NULL, 
	FallbackCity		TEXT		DEFAULT NULL, 
	Ethnicity			TEXT		DEFAULT NULL,
	Requires			TEXT		DEFAULT NULL,
	Removed				TEXT		DEFAULT NULL,

	PRIMARY KEY (CityState)
	);

CREATE TABLE IF NOT EXISTS CSE_StartBias
	(
	CityState			TEXT		NOT NULL,
	CivilizationType	TEXT		DEFAULT NULL,
	New					BOOLEAN		DEFAULT 1,
	Type				TEXT		NOT NULL, 
	Object				TEXT		DEFAULT NULL, 
	Tier				TEXT		NOT NULL
	);

CREATE TABLE IF NOT EXISTS CSE_Validation
	(
	Version			TEXT	DEFAULT NULL
	);

CREATE TABLE IF NOT EXISTS CSE_UserSettings
	(
	Setting			TEXT	NOT NULL, 
	Value			TEXT	DEFAULT NULL
	);

CREATE TABLE IF NOT EXISTS ModCheck
	(
	ModType					TEXT		NOT NULL,
	Active					BOOLEAN		DEFAULT 1,

	PRIMARY KEY	(ModType)			
	);