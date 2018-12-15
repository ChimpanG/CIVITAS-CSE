/*
	CSE User Settings
	Authors: ChimpanG
*/

INSERT INTO CSE_UserSettings (Setting, Value)
VALUES

-- These are our default settings, but you have the option to change this.
-- Changes you make here will be reflected in-game.

-- 1 = Yes
-- 0 = No

-- IMPORTANT: If you are playing a multiplayer game with this mod active,
-- all players MUST have the same settings in this file otherwise it will desync.

-----------------------------------------------
-- SECTION A: Should City-States receive no war weariness?
-- Context: City-State's growth can suffer when dragged into a war by their Suzerain.

-- Game Default: 0
-----------------------------------------------
	
	('NO_WAR_WEARINESS',	1	),

-----------------------------------------------
-- SECTION B: How much additional Combat Strength for City-State garrison?
-- Context: City-States are weak.

-- Game Default: 0
-----------------------------------------------
	
	('GARRISON_STRENGTH',	6	), -- Combat Strength

-----------------------------------------------
-- SECTION C: How much additional Strength for city walls?
-- Context: City-States are conquered too easily.

-- Game Default: 0
-----------------------------------------------
	
	('WALL_STRENGTH',	6	), -- Wall Strength

-----------------------------------------------
-- SECTION D: How much additional Strength for city ranged attacks?
-- Context: Get off my lawn!

-- Game Default: 0
-----------------------------------------------
	
	('CITY_RANGED_STRENGTH',	6	), -- Ranged Combat

-----------------------------------------------
-- SECTION E: Should City-States build all walls in half the time?
-- Context: City-States can be conquered too easily.

-- Game Default: 0
-----------------------------------------------
	
	('WALLS_PRODUCTION',	1	),

-----------------------------------------------
-- SECTION F: Should City-States start with Walls outright?
-- Context: Barbossa is a dick.

-- Game Default: 0
-----------------------------------------------
	
	('WALLS_START',		0	),

-----------------------------------------------
-- SECTION G: Should City-States receive their own Suzerain bonuses?
-- Context: La Venta plz, build your own Colossal Heads.

-- Game Default: 0
-----------------------------------------------

	('RECEIVE_OWN_BONUS',	0	),

-----------------------------------------------
-- SECTION H: Should City-States build Recon units?

-- Game Default: 1
-----------------------------------------------
	
	('NO_RECON',	0	),

-----------------------------------------------
-- SECTION I: Should City-States be allowed to build any district?
-- Context: Typically City-States will only build the district suited to their type (eg: Scientific CS builds Campus only).

-- Game Default: 0
-----------------------------------------------

	('ANY_DISTRICT',	0	),

-----------------------------------------------
-- SECTION J: How should City-States expand their borders?
-- Context: City-State borders will only expand when they receive envoys.
-- Allowing them to expand through Culture or Gold like major civs will help them grow faster.

-- Game Default: ANNEX_ENVOY only
-----------------------------------------------

	('ANNEX_ENVOY',		1	),
	('ANNEX_GOLD',		0	),
	('ANNEX_CULTURE',	0	),

-----------------------------------------------		
-- SECTION K: How many tiles should a City-State start with?
-- Context: City-State borders grow with envoys, which happens on first meet.

-- Game Default: 5
-----------------------------------------------
	
	('STARTING_TILES',	5	),

-----------------------------------------------		
-- SECTION L: Should City-States provide a free envoy upon first meet?
-- Context: Major civilizations can get an unfair advantage for stumbling ass-backward into a city-state before anybody else.

-- NOTE: Disabling this will grant you one free envoy at the start of the game to send to a CS of your choice.
-- Game Default: 1
-----------------------------------------------
	
	('FIRST_MEET_ENVOY',	1	),

-----------------------------------------------		
-- SECTION M: Minimum Envoys for suzerainity?
-- Context: Sometimes it can be too easy to amass suzerain bonuses.

-- Game Default: 3
-----------------------------------------------
	
	('MINIMUM_ENVOYS_SUZERAIN',		3	), -- Number of Envoys

-----------------------------------------------		
-- SECTION N: Combat multiplier for City-State units (not levied) based on the number of Envoys it has?

-- Game Default: 1.0
-----------------------------------------------
	
	('ENVOY_COMBAT',	1.0	);