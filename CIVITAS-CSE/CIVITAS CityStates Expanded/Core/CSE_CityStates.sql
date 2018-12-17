/*
	City-States
	Authors: thecrazyscotsman, ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types (Type, Kind)
SELECT	CivilizationType,
		'KIND_CIVILIZATION'
FROM	CSE_Master
WHERE	New = 1;

INSERT INTO Types (Type, Kind)
SELECT	LeaderType,
		'KIND_LEADER'
FROM	CSE_Master
WHERE	New = 1;

INSERT INTO Types (Type, Kind)
SELECT	'TRAIT_'||CityState,
		'KIND_TRAIT'
FROM	CSE_Master
WHERE	New = 1;

-----------------------------------------------
-- TypeProperties
-----------------------------------------------

UPDATE	TypeProperties
SET Value =
	(SELECT	CityStateType
	FROM	CSE_Master
	WHERE	CivilizationType = TypeProperties.Type)
WHERE EXISTS
	(SELECT	CityStateType
	FROM	CSE_Master
	WHERE	CivilizationType = TypeProperties.Type);

INSERT INTO TypeProperties (Type, Name, Value)
SELECT	CivilizationType,
		'CityStateCategory',
		CityStateType
FROM	CSE_Master
WHERE	New = 1;

-----------------------------------------------
-- Civilizations

-- NOTE: RandomCityNameDepth = 2 for fallback city.
-----------------------------------------------

UPDATE	Civilizations
SET		RandomCityNameDepth = 2
WHERE	StartingCivilizationLevelType = 'CIVILIZATION_LEVEL_CITY_STATE';

INSERT INTO Civilizations (CivilizationType, Name, Description, Adjective, StartingCivilizationLevelType, RandomCityNameDepth, Ethnicity)
SELECT	CivilizationType,
		'LOC_'||CivilizationType||'_NAME',
		'LOC_'||CivilizationType||'_DESCRIPTION',
		'LOC_'||CivilizationType||'_ADJECTIVE',
		'CIVILIZATION_LEVEL_CITY_STATE',
		2,
		Ethnicity
FROM	CSE_Master
WHERE	New = 1;

-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO CivilizationLeaders (CivilizationType, LeaderType, CapitalName)
SELECT	CivilizationType,
		LeaderType,
		'LOC_CITY_NAME_'||CityState
FROM	CSE_Master
WHERE	New = 1;
	
-----------------------------------------------
-- Leaders
-----------------------------------------------

UPDATE	Leaders
SET InheritFrom	= 
	(SELECT	CityStateLeaderType
	FROM	CSE_Master
	WHERE	LeaderType = Leaders.LeaderType)
WHERE EXISTS
	(SELECT	CityStateLeaderType
	FROM	CSE_Master
	WHERE	LeaderType = Leaders.LeaderType);

INSERT INTO Leaders (LeaderType, Name, InheritFrom)
SELECT	LeaderType,
		'LOC_'||CivilizationType||'_NAME',
		CityStateLeaderType
FROM	CSE_Master
WHERE	New = 1;

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO LeaderTraits (LeaderType, TraitType)
SELECT	LeaderType,
		'TRAIT_'||CityState
FROM	CSE_Master
WHERE	New = 1;

-----------------------------------------------
-- Traits
-----------------------------------------------	

INSERT INTO Traits (TraitType, Name, Description)
SELECT	'TRAIT_'||CityState,
		'LOC_'||CityState||'_TRAIT_NAME',
		'LOC_'||CityState||'_TRAIT_DESCRIPTION'
FROM	CSE_Master
WHERE	New = 1;

-----------------------------------------------
-- PlayerColors
-----------------------------------------------

DELETE FROM PlayerColors
WHERE Type IN (SELECT CivilizationType FROM CSE_Master);

INSERT INTO PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, TextColor)
SELECT	CivilizationType,
		'Minor',
		'COLOR_PLAYER_CITY_STATE_PRIMARY',
		ColorRef,
		ColorRef
FROM	CSE_Master;

-----------------------------------------------
-- StartBias
-----------------------------------------------

DELETE FROM StartBiasTerrains WHERE CivilizationType IN (SELECT CivilizationType FROM CSE_Master);
DELETE FROM StartBiasFeatures WHERE CivilizationType IN (SELECT CivilizationType FROM CSE_Master);
DELETE FROM StartBiasResources WHERE CivilizationType IN (SELECT CivilizationType FROM CSE_Master);
DELETE FROM StartBiasRivers WHERE CivilizationType IN (SELECT CivilizationType FROM CSE_Master);

INSERT INTO StartBiasTerrains (CivilizationType, TerrainType, Tier)
SELECT	CivilizationType,
		'TERRAIN_'||Object,
		Tier
FROM	CSE_StartBias
WHERE	Type = 'TERRAIN';

INSERT INTO StartBiasFeatures (CivilizationType, FeatureType, Tier)
SELECT	CivilizationType,
		'FEATURE_'||Object,
		Tier
FROM	CSE_StartBias
WHERE	Type = 'FEATURE';

INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier)
SELECT	CivilizationType,
		'RESOURCE_'||Object,
		Tier
FROM	CSE_StartBias
WHERE	Type = 'RESOURCE';

INSERT INTO StartBiasRivers (CivilizationType, Tier)
SELECT	CivilizationType,
		Tier
FROM	CSE_StartBias
WHERE	Type = 'RIVER';

-----------------------------------------------
-- CityNames
-----------------------------------------------

INSERT INTO CityNames (CivilizationType, CityName)
SELECT	CivilizationType,
		'LOC_CITY_NAME_'||CityState
FROM	CSE_Master
WHERE	New = 1;

INSERT INTO CityNames (CivilizationType, CityName)
SELECT	CivilizationType,
		'LOC_CITY_NAME_'||FallbackCity
FROM	CSE_Master
WHERE	FallbackCity IS NOT NULL;