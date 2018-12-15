/*
	Civilizations
	Authors: thecrazyscotsman, ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types (Type, Kind)
SELECT	'CIVILIZATION_'||CityState,
		'KIND_CIVILIZATION'
FROM	CSE_Master
WHERE	New = 1;

INSERT INTO Types (Type, Kind)
SELECT	'LEADER_'||CityState,
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

UPDATE	TypeProperties AS a, CSE_Master AS b
SET		a.Value = b.CityStateType
WHERE	b.CityStateType = a.Value
AND		b.New = 0;

INSERT INTO TypeProperties (Type, Name, Value)
SELECT	'CIVILIZATION_'||CityState,
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
SELECT	'CIVILIZATION_'||CityState,
		'LOC_CIVILIZATION_'||CityState||'_NAME',
		'LOC_CIVILIZATION_'||CityState||'_DESCRIPTION',
		'LOC_CIVILIZATION_'||CityState||'_ADJECTIVE',
		'CIVILIZATION_LEVEL_CITY_STATE',
		2,
		Ethnicity
FROM	CSE_Master
WHERE	New = 1;

-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO CivilizationLeaders (CivilizationType, LeaderType, CapitalName)
SELECT	'CIVILIZATION_'||CityState,
		'LEADER_'||CityState,
		'LOC_CITY_NAME_'||CityState
FROM	CSE_Master
WHERE	New = 1;
	
-----------------------------------------------
-- Leaders
-----------------------------------------------

UPDATE	Leaders AS a, CSE_Master AS b
SET		a.InheritFrom = 'LEADER_MINOR_CIV_'||b.CityState
WHERE	'LEADER_'||b.CityState = a.LeaderType
AND		b.New = 0;

INSERT INTO Leaders (LeaderType, Name, InheritFrom)
SELECT	'LEADER_'||CityState,
		'LOC_CIVILIZATION_'||CityState||'_NAME',
		'LEADER_MINOR_CIV_'||CityStateType
FROM	CSE_Master
WHERE	New = 1;

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO LeaderTraits (LeaderType, TraitType)
SELECT	'LEADER_'||CityState,
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

INSERT INTO PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, TextColor)
SELECT	'CIVILIZATION_'||CityState,
		'Minor',
		'COLOR_PLAYER_CITY_STATE_PRIMARY',
		'COLOR_PLAYER_CITY_STATE_'||CityStateType||'_SECONDARY',
		'COLOR_PLAYER_CITY_STATE_'||CityStateType||'_SECONDARY'
FROM	CSE_Master
WHERE	New = 1;

-----------------------------------------------
-- StartBias
-----------------------------------------------

INSERT INTO StartBiasTerrains (CivilizationType, TerrainType, Tier)
SELECT	'CIVILIZATION_'||CityState,
		'TERRAIN_'||Object,
		Tier
FROM	CSE_StartBias
WHERE	New = 1
AND		ObjectType = 'TERRAIN';

INSERT INTO StartBiasFeatures (CivilizationType, FeatureType, Tier)
SELECT	'CIVILIZATION_'||CityState,
		'FEATURE_'||Object,
		Tier
FROM	CSE_StartBias
WHERE	New = 1
AND		ObjectType = 'FEATURE';

INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier)
SELECT	'CIVILIZATION_'||CityState,
		'RESOURCE_'||Object,
		Tier
FROM	CSE_StartBias
WHERE	New = 1
AND		ObjectType = 'RESOURCE';

INSERT INTO StartBiasRivers (CivilizationType, Tier)
SELECT	'CIVILIZATION_'||CityState,
		Tier
FROM	CSE_StartBias
WHERE	New = 1
AND		ObjectType = 'RIVER';

-----------------------------------------------
-- CityNames
-----------------------------------------------

INSERT INTO CityNames (CivilizationType, CityName)
SELECT	'CIVILIZATION_'||CityState,
		'LOC_CITY_NAME_'||CityState
FROM	CSE_Master
WHERE	New = 1;

INSERT INTO CityNames (CivilizationType, CityName)
SELECT	'CIVILIZATION_'||CityState,
		'LOC_CITY_NAME_'||FallbackCity
FROM	CSE_Master
WHERE	New = 1
AND		FallbackCity IS NOT NULL;