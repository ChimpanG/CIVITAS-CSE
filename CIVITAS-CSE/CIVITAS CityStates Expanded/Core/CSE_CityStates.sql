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

INSERT INTO TypeProperties (Type, Name, Value)
SELECT	'CIVILIZATION_'||CityState,
		'CityStateCategory',
		CityStateType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType IN ('SCIENTIFIC', 'CULTURAL', 'RELIGIOUS', 'TRADE', 'INDUSTRIAL', 'MILITARISTIC');

-- AGRICULTURAL
INSERT INTO TypeProperties (Type, Name, Value)
SELECT	'CIVILIZATION_'||CityState,
		'CityStateCategory',
		CityStateType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_AGRICULTURAL'
AND EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_AGRICULTURAL');

INSERT INTO TypeProperties (Type, Name, Value)
SELECT	'CIVILIZATION_'||CityState,
		'CityStateCategory',
		FallbackType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_AGRICULTURAL'
AND NOT EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_AGRICULTURAL');

-- CONSULAR
INSERT INTO TypeProperties (Type, Name, Value)
SELECT	'CIVILIZATION_'||CityState,
		'CityStateCategory',
		CityStateType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_CONSULAR'
AND EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_CONSULAR');

INSERT INTO TypeProperties (Type, Name, Value)
SELECT	'CIVILIZATION_'||CityState,
		'CityStateCategory',
		FallbackType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_CONSULAR'
AND NOT EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_CONSULAR');

-- ENTERTAINMENT
INSERT INTO TypeProperties (Type, Name, Value)
SELECT	'CIVILIZATION_'||CityState,
		'CityStateCategory',
		CityStateType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_ENTERTAINMENT'
AND EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_ENTERTAINMENT');

INSERT INTO TypeProperties (Type, Name, Value)
SELECT	'CIVILIZATION_'||CityState,
		'CityStateCategory',
		FallbackType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_ENTERTAINMENT'
AND NOT EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_ENTERTAINMENT');

-- MARITIME
INSERT INTO TypeProperties (Type, Name, Value)
SELECT	'CIVILIZATION_'||CityState,
		'CityStateCategory',
		CityStateType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_MARITIME'
AND EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_MARITIME');

INSERT INTO TypeProperties (Type, Name, Value)
SELECT	'CIVILIZATION_'||CityState,
		'CityStateCategory',
		FallbackType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_MARITIME'
AND NOT EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_MARITIME');

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

INSERT INTO Leaders (LeaderType, Name, InheritFrom)
SELECT	'LEADER_'||CityState,
		'LOC_CIVILIZATION_'||CityState||'_NAME',
		'LEADER_MINOR_CIV_'||CityStateType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType IN ('SCIENTIFIC', 'CULTURAL', 'RELIGIOUS', 'TRADE', 'INDUSTRIAL', 'MILITARISTIC');

-- AGRICULTURAL
INSERT INTO Leaders (LeaderType, Name, InheritFrom)
SELECT	'LEADER_'||CityState,
		'LOC_CIVILIZATION_'||CityState||'_NAME',
		'LEADER_MINOR_CIV_'||CityStateType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_AGRICULTURAL'
AND EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_AGRICULTURAL');

INSERT INTO Leaders (LeaderType, Name, InheritFrom)
SELECT	'LEADER_'||CityState,
		'LOC_CIVILIZATION_'||CityState||'_NAME',
		'LEADER_MINOR_CIV_'||FallbackType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_AGRICULTURAL'
AND NOT EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_AGRICULTURAL');

-- CONSULAR
INSERT INTO Leaders (LeaderType, Name, InheritFrom)
SELECT	'LEADER_'||CityState,
		'LOC_CIVILIZATION_'||CityState||'_NAME',
		'LEADER_MINOR_CIV_'||CityStateType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_CONSULAR'
AND EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_CONSULAR');

INSERT INTO Leaders (LeaderType, Name, InheritFrom)
SELECT	'LEADER_'||CityState,
		'LOC_CIVILIZATION_'||CityState||'_NAME',
		'LEADER_MINOR_CIV_'||FallbackType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_CONSULAR'
AND NOT EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_CONSULAR');

-- ENTERTAINMENT
INSERT INTO Leaders (LeaderType, Name, InheritFrom)
SELECT	'LEADER_'||CityState,
		'LOC_CIVILIZATION_'||CityState||'_NAME',
		'LEADER_MINOR_CIV_'||CityStateType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_ENTERTAINMENT'
AND EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_ENTERTAINMENT');

INSERT INTO Leaders (LeaderType, Name, InheritFrom)
SELECT	'LEADER_'||CityState,
		'LOC_CIVILIZATION_'||CityState||'_NAME',
		'LEADER_MINOR_CIV_'||FallbackType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_ENTERTAINMENT'
AND NOT EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_ENTERTAINMENT');

-- MARITIME
INSERT INTO Leaders (LeaderType, Name, InheritFrom)
SELECT	'LEADER_'||CityState,
		'LOC_CIVILIZATION_'||CityState||'_NAME',
		'LEADER_MINOR_CIV_'||CityStateType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_MARITIME'
AND EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_MARITIME');

INSERT INTO Leaders (LeaderType, Name, InheritFrom)
SELECT	'LEADER_'||CityState,
		'LOC_CIVILIZATION_'||CityState||'_NAME',
		'LEADER_MINOR_CIV_'||FallbackType
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_MARITIME'
AND NOT EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_MARITIME');

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
WHERE	New = 1
AND		CityStateType IN ('SCIENTIFIC', 'CULTURAL', 'RELIGIOUS', 'TRADE', 'INDUSTRIAL', 'MILITARISTIC');

-- AGRICULTURAL
INSERT INTO PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, TextColor)
SELECT	'CIVILIZATION_'||CityState,
		'Minor',
		'COLOR_PLAYER_CITY_STATE_PRIMARY',
		'COLOR_PLAYER_CITY_STATE_'||CityStateType||'_SECONDARY',
		'COLOR_PLAYER_CITY_STATE_'||CityStateType||'_SECONDARY'
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_AGRICULTURAL'
AND EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_AGRICULTURAL');

INSERT INTO PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, TextColor)
SELECT	'CIVILIZATION_'||CityState,
		'Minor',
		'COLOR_PLAYER_CITY_STATE_PRIMARY',
		'COLOR_PLAYER_CITY_STATE_'||FallbackType||'_SECONDARY',
		'COLOR_PLAYER_CITY_STATE_'||FallbackType||'_SECONDARY'
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_AGRICULTURAL'
AND NOT EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_AGRICULTURAL');

-- CONSULAR
INSERT INTO PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, TextColor)
SELECT	'CIVILIZATION_'||CityState,
		'Minor',
		'COLOR_PLAYER_CITY_STATE_PRIMARY',
		'COLOR_PLAYER_CITY_STATE_'||CityStateType||'_SECONDARY',
		'COLOR_PLAYER_CITY_STATE_'||CityStateType||'_SECONDARY'
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_CONSULAR'
AND EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_CONSULAR');

INSERT INTO PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, TextColor)
SELECT	'CIVILIZATION_'||CityState,
		'Minor',
		'COLOR_PLAYER_CITY_STATE_PRIMARY',
		'COLOR_PLAYER_CITY_STATE_'||FallbackType||'_SECONDARY',
		'COLOR_PLAYER_CITY_STATE_'||FallbackType||'_SECONDARY'
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_CONSULAR'
AND NOT EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_CONSULAR');

-- ENTERTAINMENT
INSERT INTO PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, TextColor)
SELECT	'CIVILIZATION_'||CityState,
		'Minor',
		'COLOR_PLAYER_CITY_STATE_PRIMARY',
		'COLOR_PLAYER_CITY_STATE_'||CityStateType||'_SECONDARY',
		'COLOR_PLAYER_CITY_STATE_'||CityStateType||'_SECONDARY'
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_ENTERTAINMENT'
AND EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_ENTERTAINMENT');

INSERT INTO PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, TextColor)
SELECT	'CIVILIZATION_'||CityState,
		'Minor',
		'COLOR_PLAYER_CITY_STATE_PRIMARY',
		'COLOR_PLAYER_CITY_STATE_'||FallbackType||'_SECONDARY',
		'COLOR_PLAYER_CITY_STATE_'||FallbackType||'_SECONDARY'
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_ENTERTAINMENT'
AND NOT EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_ENTERTAINMENT');

-- MARITIME
INSERT INTO PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, TextColor)
SELECT	'CIVILIZATION_'||CityState,
		'Minor',
		'COLOR_PLAYER_CITY_STATE_PRIMARY',
		'COLOR_PLAYER_CITY_STATE_'||CityStateType||'_SECONDARY',
		'COLOR_PLAYER_CITY_STATE_'||CityStateType||'_SECONDARY'
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_MARITIME'
AND EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_MARITIME');

INSERT INTO PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, TextColor)
SELECT	'CIVILIZATION_'||CityState,
		'Minor',
		'COLOR_PLAYER_CITY_STATE_PRIMARY',
		'COLOR_PLAYER_CITY_STATE_'||FallbackType||'_SECONDARY',
		'COLOR_PLAYER_CITY_STATE_'||FallbackType||'_SECONDARY'
FROM	CSE_Master
WHERE	New = 1
AND		CityStateType = 'CSE_MARITIME'
AND NOT EXISTS (SELECT * FROM ModCheck WHERE ModType = 'CSE_MARITIME');

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