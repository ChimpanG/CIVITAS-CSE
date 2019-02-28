/*
	Schema
	Authors: thecrazyscotsman, Chrisy15, ChimpanG
*/

-----------------------------------------------
-- New Tables
-----------------------------------------------

CREATE TABLE IF NOT EXISTS CSE_ClassTypes
	(
	Type			TEXT	NOT NULL, 
	LeaderType		TEXT	DEFAULT NULL, 
	TypeName		TEXT	DEFAULT NULL, 
	SmallBonus		TEXT	DEFAULT NULL, 
	MediumBonus		TEXT	DEFAULT NULL, 
	LargeBonus		TEXT	DEFAULT NULL, 
	LargestBonus	TEXT	DEFAULT NULL, 
	BonusIcon		TEXT	DEFAULT NULL, 
	TypeIcon		TEXT	DEFAULT NULL, 
	Color			TEXT	DEFAULT NULL,
	ColorRef		TEXT	DEFAULT NULL,
	New				INTEGER	DEFAULT 1,

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
	Discard				BOOLEAN		DEFAULT 0,
	ColorRef			TEXT		DEFAULT NULL,

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

CREATE TABLE IF NOT EXISTS ModValidation
	(
	Version			TEXT	DEFAULT NULL
	);

CREATE TABLE IF NOT EXISTS CSE_UserSettings
	(
	Setting			TEXT	NOT NULL,
	Section			TEXT	DEFAULT NULL,
	Value			TEXT	DEFAULT NULL
	);