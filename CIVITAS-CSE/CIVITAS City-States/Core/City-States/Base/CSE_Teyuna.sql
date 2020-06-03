/*
	Teyuna
	~ Your cities yield +1 Production for each mountain in their territory

	Authors: ChimpanG
*/

-----------------------------------------------
-- Temporary Table
-----------------------------------------------

CREATE TABLE IF NOT EXISTS t_Teyuna (Amount);

INSERT INTO t_Teyuna (Amount)
WITH RECURSIVE count(x) AS (SELECT 1 UNION ALL SELECT x+1 FROM count LIMIT 36)
SELECT x FROM count;

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers (TraitType, ModifierId)
SELECT	'MINOR_CIV_CSE_TEYUNA_TRAIT',
		'CSE_TEYUNA_SUZERAIN_MOUNTAIN_PRODUCTION_'||Amount
FROM	t_Teyuna;

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT	'CSE_TEYUNA_SUZERAIN_MOUNTAIN_PRODUCTION_'||Amount,
		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',
		'PLAYER_IS_SUZERAIN'
FROM	t_Teyuna;

INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT	'CSE_TEYUNA_MOUNTAIN_PRODUCTION_ATTACH_'||Amount,
		'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',
		'REQSET_CSE_TEYUNA_HAS_'||Amount||'_MOUNTAIN'
FROM	t_Teyuna;

INSERT INTO Modifiers (ModifierId, ModifierType)
SELECT	'CSE_TEYUNA_MOUNTAIN_PRODUCTION_'||Amount,
		'MODIFIER_SINGLE_CITY_ADJUST_YIELD_CHANGE'
FROM	t_Teyuna;

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'CSE_TEYUNA_SUZERAIN_MOUNTAIN_PRODUCTION_'||Amount,
		'ModifierId',
		'CSE_TEYUNA_MOUNTAIN_PRODUCTION_ATTACH_'||Amount
FROM	t_Teyuna;

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'CSE_TEYUNA_MOUNTAIN_PRODUCTION_ATTACH_'||Amount,
		'ModifierId',
		'CSE_TEYUNA_MOUNTAIN_PRODUCTION_'||Amount
FROM	t_Teyuna;

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'CSE_TEYUNA_MOUNTAIN_PRODUCTION_'||Amount,
		'YieldType',
		'YIELD_PRODUCTION'
FROM	t_Teyuna;

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'CSE_TEYUNA_MOUNTAIN_PRODUCTION_'||Amount,
		'Amount',
		Amount
FROM	t_Teyuna;

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_CSE_TEYUNA_HAS_'||Amount||'_MOUNTAIN',
		'REQUIREMENTSET_TEST_ALL'
FROM	t_Teyuna;

INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CSE_TEYUNA_IS_MOUNTAIN',	'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CSE_TEYUNA_HAS_'||Amount||'_MOUNTAIN',
		'REQ_CSE_TEYUNA_HAS_'||Amount||'_MOUNTAIN'
FROM	t_Teyuna;

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId						)
VALUES	('REQSET_CSE_TEYUNA_IS_MOUNTAIN',	'REQ_CSE_TEYUNA_IS_MOUNTAIN_GRASS'	),
		('REQSET_CSE_TEYUNA_IS_MOUNTAIN',	'REQ_CSE_TEYUNA_IS_MOUNTAIN_PLAINS'	),
		('REQSET_CSE_TEYUNA_IS_MOUNTAIN',	'REQ_CSE_TEYUNA_IS_MOUNTAIN_DESERT'	),
		('REQSET_CSE_TEYUNA_IS_MOUNTAIN',	'REQ_CSE_TEYUNA_IS_MOUNTAIN_TUNDRA'	),
		('REQSET_CSE_TEYUNA_IS_MOUNTAIN',	'REQ_CSE_TEYUNA_IS_MOUNTAIN_SNOW'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT	'REQ_CSE_TEYUNA_HAS_'||Amount||'_MOUNTAIN',
		'REQUIREMENT_COLLECTION_COUNT_EQUALS'
FROM	t_Teyuna;

INSERT INTO Requirements
		(RequirementId,							RequirementType							)
VALUES	('REQ_CSE_TEYUNA_IS_MOUNTAIN_GRASS',	'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'	),
		('REQ_CSE_TEYUNA_IS_MOUNTAIN_PLAINS',	'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'	),
		('REQ_CSE_TEYUNA_IS_MOUNTAIN_DESERT',	'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'	),
		('REQ_CSE_TEYUNA_IS_MOUNTAIN_TUNDRA',	'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'	),
		('REQ_CSE_TEYUNA_IS_MOUNTAIN_SNOW',		'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CSE_TEYUNA_HAS_'||Amount||'_MOUNTAIN',
		'CollectionType',
		'COLLECTION_CITY_PLOT_YIELDS'
FROM	t_Teyuna;

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CSE_TEYUNA_HAS_'||Amount||'_MOUNTAIN',
		'Count',
		Amount
FROM	t_Teyuna;

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CSE_TEYUNA_HAS_'||Amount||'_MOUNTAIN',
		'RequirementSetId',
		'REQSET_CSE_TEYUNA_IS_MOUNTAIN'
FROM	t_Teyuna;

INSERT INTO RequirementArguments
		(RequirementId,							Name,				Value						)
VALUES	('REQ_CSE_TEYUNA_IS_MOUNTAIN_GRASS',	'TerrainType',		'TERRAIN_GRASS_MOUNTAIN'	),
		('REQ_CSE_TEYUNA_IS_MOUNTAIN_PLAINS',	'TerrainType',		'TERRAIN_PLAINS_MOUNTAIN'	),
		('REQ_CSE_TEYUNA_IS_MOUNTAIN_DESERT',	'TerrainType',		'TERRAIN_DESERT_MOUNTAIN'	),
		('REQ_CSE_TEYUNA_IS_MOUNTAIN_TUNDRA',	'TerrainType',		'TERRAIN_TUNDRA_MOUNTAIN'	),
		('REQ_CSE_TEYUNA_IS_MOUNTAIN_SNOW',		'TerrainType',		'TERRAIN_SNOW_MOUNTAIN'		);

-----------------------------------------------
-- Drop Tables
-----------------------------------------------

DROP TABLE t_Teyuna;