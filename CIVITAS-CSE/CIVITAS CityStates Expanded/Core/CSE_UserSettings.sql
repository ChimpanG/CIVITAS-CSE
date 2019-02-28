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

-- Game Default: ANNEX_ENVOY
-- NOTE: You can enable all or none (meaning zero border growth) of these if you like.
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
	
	('ENVOY_COMBAT',	1.0	),

-----------------------------------------------		
-- SECTION O: Additional Units a City-State starts with?

-- Note: These units will be in addition to whatever they usually start with by default.
-----------------------------------------------
	
	-- Melee
	('CS_START_WARRIOR',	0	), -- Number of additional Warrior units
	('CS_START_SWORDSMAN',	0	), -- Number of additional Swordsman units

	-- Anti-Cavalry
	('CS_START_SPEARMAN',	0	), -- Number of additional Spearman units

	-- Ranged
	('CS_START_SLINGER',	0	), -- Number of additional Slinger units
	('CS_START_ARCHER',		0	), -- Number of additional Archer units
	
	-- Civilian
	('CS_START_BUILDER',	0	), -- Number of additional Builder units

-----------------------------------------------		
-- SECTION P: Should City-States build Units in half the time when they're at war?

-- Game Default: 0
-- Requires Rise and Fall
-----------------------------------------------
	
	('WAR_UNIT_PRODUCTION',		0	),

-----------------------------------------------		
-- SECTION Q: Should City-States upgrade their units for free?
-- Context: This will encourage them to stay stronger throughout the game.

-- Game Default: 1
-----------------------------------------------
	
	('FREE_UNIT_UPGRADE',		1	),

-----------------------------------------------		
-- SECTION R: How many Envoys should you receive from liberating a City-State?

-- NOTE: Requires Rise & Fall
-----------------------------------------------

	('ENVOY_LIBERATE_ANCIENT',		3	), -- Game Default: 3
	('ENVOY_LIBERATE_CLASSICAL',	3	), -- Game Default: 3
	('ENVOY_LIBERATE_MEDIEVAL',		3	), -- Game Default: 3
	('ENVOY_LIBERATE_RENAISSANCE',	6	), -- Game Default: 6
	('ENVOY_LIBERATE_INDUSTRIAL',	6	), -- Game Default: 6
	('ENVOY_LIBERATE_MODERN',		9	), -- Game Default: 6
	('ENVOY_LIBERATE_ATOMIC',		9	), -- Game Default: 6
	('ENVOY_LIBERATE_INFORMATION',	9	), -- Game Default: 6

-----------------------------------------------		
-- SECTION S: Default Loyalty per turn for City-States?
-- Context: City-States are near impossible to flip because they get 20 Loyalty per turn.

-- Game Default: 20 (Loyalty per Turn)
-- Requires Rise and Fall
-----------------------------------------------

	('DEFAULT_LOYALTY',		20	),

-----------------------------------------------		
-- SECTION T: Amount of Era Score for City-States?

-- Requires Rise and Fall
-----------------------------------------------

	('MOMENT_FIRST_SUZERAIN',				2	), -- Game Default: 2
	('MOMENT_OUSTED_SUZERAIN_DURING_WAR',	2	), -- Game Default: 2

-----------------------------------------------		
-- SECTION U: Should declaring a Protectorate War be an independent action (not formal war) that does not require denouncement?
-- Context: Waiting 5 turns to pass is enough time for the AI to capture a city-state, making protectorate wars very rare.

-- Game Default: 0
-- Our Default: 1
-----------------------------------------------

	('INDEPENDENT_PROTECTORATE_WAR',	1	),

-----------------------------------------------		
-- SECTION V: Should Protectorate War be available to declare from the start of the game?
-- Context: If the ability to declare war on a City-State is available, why isn't the ability to protect them?

-- Game Default: 0
-- Our Default: 1
-----------------------------------------------

	('DECLARE_PROTECTORATE_WAR',	1	),

-----------------------------------------------		
-- SECTION W: Should declaring war on a City-State receive warmonger penalties?
-- Context: One of the reasons why the AI so frequently attacks City-States is because they receive no warmonger penalties for doing so.

-- Game Default: 0
-- Our Default: 1
-----------------------------------------------

	('CITY_STATE_WARMONGER',	1	);
	
-----------------------------------------------		
-- SECTION Z: Disable City-States
-- Change 0 to 1 to disable a City-State.

-- Disclaimer: Disabling a City-State here may cause conflicts with other mods that might reference it.
-- Note: Enabling a City-State you do not own the DLC/XP for will not enable them in-game.
-----------------------------------------------

INSERT INTO CSE_UserSettings (Setting, Section, Value)
VALUES

	('AKKAD',			'DISABLED',	1	),
	('AMSTERDAM',		'DISABLED', 1	),
	('ANTANANARIVO',	'DISABLED', 1	),
	('ANTIOCH',			'DISABLED', 1	),
	('ARMAGH',			'DISABLED', 1	),
	('AUCKLAND',		'DISABLED', 1	),
	('BABYLON',			'DISABLED', 1	),
	('BOLOGNA',			'DISABLED', 1	),
	('BUENOS_AIRES',	'DISABLED', 0	),
	('BRUSSELS',		'DISABLED', 0	),
	('CAHOKIA',			'DISABLED', 1	),
	('CARDIFF',			'DISABLED', 1	),
	('CARTHAGE',		'DISABLED', 1	),
	('FEZ',				'DISABLED', 1	),
	('GENEVA',			'DISABLED', 0	),
	('GRANADA',			'DISABLED', 1	),
	('HATTUSA',			'DISABLED', 1	),
	('HONG_KONG',		'DISABLED', 1	),
	('JAKARTA',			'DISABLED', 0	),
	('JERUSALEM',		'DISABLED', 1	),
	('KABUL',			'DISABLED', 1	),
	('KANDY',			'DISABLED', 1	),
	('KUMASI',			'DISABLED', 1	),
	('LA_VENTA',		'DISABLED', 1	),
	('LISBON',			'DISABLED', 0	),
	('MEXICO_CITY',		'DISABLED', 0	),
	('MOHENJO_DARO',	'DISABLED', 1	),
	('MUSCAT',			'DISABLED', 1	),
	('NAN_MADOL',		'DISABLED', 1	),
	('NAZCA',			'DISABLED', 1	),
	('NGAZARGAMU',		'DISABLED', 0	),
	('PALENQUE',		'DISABLED', 1	),
	('PRESLAV',			'DISABLED', 1	),
	('RAPA_NUI',		'DISABLED', 1	),
	('SEOUL',			'DISABLED', 1	),
	('STOCKHOLM',		'DISABLED', 1	),
	('TORONTO',			'DISABLED', 1	),
	('VALLETTA',		'DISABLED', 1	),
	('VILNIUS',			'DISABLED', 1	),
	('YEREVAN',			'DISABLED', 1	),
	('ZANZIBAR',		'DISABLED', 1	);