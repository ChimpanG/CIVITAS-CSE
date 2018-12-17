/*
	Master
	Authors: ChimpanG
*/

-----------------------------------------------
-- ModCheck
-----------------------------------------------

INSERT INTO ModCheck (ModType) VALUES ('CITY_STATES_EXPANDED');

-----------------------------------------------
-- CSE_ClassTypes
-----------------------------------------------

INSERT INTO CSE_ClassTypes
		(Type,				New,	Color,				BonusIcon,						TypeIcon						)
VALUES	('SCIENTIFIC',		0,		'50,202,237,255',	'ICON_ENVOY_BONUS_SCIENCE',		'ICON_CITYSTATE_SCIENCE'		),
		('RELIGIOUS',		0,		'255,246,235,255',	'ICON_ENVOY_BONUS_FAITH',		'ICON_CITYSTATE_FAITH'			),
		('TRADE',			0,		'255,206,108,255',	'ICON_ENVOY_BONUS_GOLD',		'ICON_CITYSTATE_TRADE'			),
		('CULTURAL',		0,		'214,102,255,255',	'ICON_ENVOY_BONUS_CULTURE',		'ICON_CITYSTATE_CULTURE'		),
		('MILITARISTIC',	0,		'255,92,92,255',	'ICON_ENVOY_BONUS_MILITARY',	'ICON_CITYSTATE_MILITARISTIC'	),
		('INDUSTRIAL',		0,		'255,149,77,255',	'ICON_ENVOY_BONUS_PRODUCTION',	'ICON_CITYSTATE_INDUSTRIAL'		);

-----------------------------------------------
-- CSE_Master
-----------------------------------------------

INSERT INTO CSE_Master
		(CityState,			New,	ProposedType,		FallbackCity,		Ethnicity,				Requires,	Removed	)
VALUES	('AKKAD',			0,		'MILITARISTIC',		NULL,				'ETHNICITY_MEDIT',		'XP2',		NULL	),
		('AMSTERDAM',		0,		'TRADE',			'GRONIGEN',			'ETHNICITY_EURO',		'BASE',		'XP1'	),
		('ANTANANARIVO',	0,		'CULTURAL',			'TBD',				'ETHNICITY_MUGHAL',		'VIKINGS',	NULL	),
		('ANTIOCH',			0,		'TRADE',			'SELEUCIA_PIERIA',	'ETHNICITY_MEDIT',		'XP1',		NULL	),
		('ARMAGH',			0,		'RELIGIOUS',		'TBD',				'ETHNICITY_EURO',		'VIKINGS',	NULL	),
		('AUCKLAND',		0,		'TRADE',			'GRONIGEN',			'ETHNICITY_EURO',		'VIKINGS',	NULL	),
		('BABYLON',			0,		'SCIENTIFIC',		'TBD',				'ETHNICITY_EURO',		'XP1',		NULL	),
		('BOLOGNA',			0,		'SCIENTIFIC',		'TBD',				'ETHNICITY_EURO',		'XP2',		NULL	),
		('BUENOS_AIRES',	0,		'INDUSTRIAL',		'SANTIAGO',			'ETHNICITY_SOUTHAM',	'BASE',		NULL	),
		('BRUSSELS',		0,		'INDUSTRIAL',		'ANTWERP',			'ETHNICITY_EURO',		'BASE',		NULL	),
		('CAHOKIA',			0,		'COMMERCIAL',		'TBD',				'ETHNICITY_SOUTHAM',	'XP2',		NULL	),
		('CARDIFF',			0,		'INDUSTRIAL',		'CAERPHILLY',		'ETHNICITY_EURO',		'XP2',		NULL	),
		('CARTHAGE',		0,		'MILITARISTIC',		'TUNIS',			'ETHNICITY_AFRICAN',	'BASE',		'XP2'	),
		('FEZ',				0,		'SCIENTIFIC',		'TBD',				'ETHNICITY_AFRICAN',	'XP2',		NULL	),
		('GENEVA',			0,		'SCIENTIFIC',		'BERN',				'ETHNICITY_EURO',		'BASE',		NULL	),
		('GRANADA',			0,		'MILITARISTIC',		'TBD',				'ETHNICITY_EURO',		'VIKINGS',	NULL	),
		('HATTUSA',			0,		'SCIENTIFIC',		'TBD',				'ETHNICITY_MEDIT',		'BASE',		NULL	),
		('HONG_KONG',		0,		'INDUSTRIAL',		NULL,				'ETHNICITY_ASIAN',		'BASE',		NULL	),
		('JAKARTA',			0,		'TRADE',			'BANDAR_BRUNEI',	'ETHNICITY_ASIAN',		'BASE',		NULL	),
		('JERUSALEM',		0,		'RELIGIOUS',		'TBD',				'ETHNICITY_MEDIT',		'BASE',		NULL	),
		('KABUL',			0,		'MILITARISTIC',		'TBD',				'ETHNICITY_MEDIT',		'BASE',		NULL	),
		('KANDY',			0,		'RELIGIOUS',		'TBD',				'ETHNICITY_AFRICAN',	'BASE',		NULL	),
		('KUMASI',			0,		'CULTURAL',			'TBD',				'ETHNICITY_AFRICAN',	'BASE',		NULL	),
		('LA_VENTA',		0,		'RELIGIOUS',		'TBD',				'ETHNICITY_SOUTHAM',	'BASE',		NULL	),
		('LISBON',			0,		'TRADE',			'TBD',				'ETHNICITY_EURO',		'BASE',		NULL	),
		('MEXICO_CITY',		0,		'INDUSTRIAL',		'TBD',				'ETHNICITY_SOUTHAM',	'XP2',		NULL	),
		('MOHENJO_DARO',	0,		'CULTURAL',			'TBD',				'ETHNICITY_AFRICAN',	'BASE',		NULL	),
		('MUSCAT',			0,		'TRADE',			'MARRAKECH',		'ETHNICITY_AFRICAN',	'VIKINGS',	NULL	),
		('NAN_MADOL',		0,		'CULTURAL',			'TBD',				'ETHNICITY_ASIAN',		'BASE',		NULL	),
		('NAZCA',			0,		'RELIGIOUS',		'TBD',				'ETHNICITY_SOUTHAM',	'XP2',		NULL	),
		('NGAZARGAMU',		0,		'MILITARISTIC',		'TBD',				'ETHNICITY_AFRICAN',	'XP2',		NULL	),
		('PALENQUE',		0,		'MILITARISTIC',		'TBD',				'ETHNICITY_SOUTHAM',	'VIKINGS',	NULL	),
		('PRESLAV',			0,		'MILITARISTIC',		'TBD',				'ETHNICITY_EURO',		'BASE',		NULL	),
		('RAPA_NUI',		0,		'CULTURAL',			'TBD',				'ETHNICITY_SOUTHAM',	'XP2',		NULL	),
		('SEOUL',			0,		'SCIENTIFIC',		'TBD',				'ETHNICITY_EURO',		'BASE',		'XP1'	),
		('STOCKHOLM',		0,		'SCIENTIFIC',		'TBD',				'ETHNICITY_EURO',		'BASE',		'XP2'	),
		('TORONTO',			0,		'INDUSTRIAL',		'MONTREAL',			'ETHNICITY_EURO',		'BASE',		'XP2'	),
		('VALLETTA',		0,		'MILITARISTIC',		'TBD',				'ETHNICITY_MEDIT',		'BASE',		NULL	),
		('VILNIUS',			0,		'CULTURAL',			'TBD',				'ETHNICITY_EURO',		'BASE',		NULL	),
		('YEREVAN',			0,		'MILITARISTIC',		'TBD',				'ETHNICITY_MEDIT',		'BASE',		NULL	),
		('ZANZIBAR',		0,		'TRADE',			'TBD',				'ETHNICITY_AFRICAN',	'BASE',		NULL	);

-----------------------------------------------
-- CSE_StartBias
-----------------------------------------------

INSERT INTO CSE_StartBias
		(CityState,			New,	Type,		Object,				Tier	)
VALUES	('AKKAD',			0,		'FEATURE',	'FLOODPLAINS',		2		),
		('AKKAD',			0,		'TERRAIN',	'DESERT',			5		),
		('AKKAD',			0,		'TERRAIN',	'DESERT_HILLS',		5		),
		('AMSTERDAM',		0,		'FEATURE',	'MARSH',			5		),
		('AMSTERDAM',		0,		'TERRAIN',	'COAST',			3		),
		('ANTANANARIVO',	0,		'TERRAIN',	'COAST',			5		),
		('ANTIOCH',			0,		'TERRAIN',	'COAST',			5		),
		('ANTIOCH',			0,		'FEATURE',	'FLOODPLAINS',		3		),
		('ARMAGH',			0,		'TERRAIN',	'GRASS',			5		),
		('ARMAGH',			0,		'TERRAIN',	'GRASS_HILLS',		5		),
		('AUCKLAND',		0,		'TERRAIN',	'COAST',			2		),
		('AUCKLAND',		0,		'TERRAIN',	'GRASS_HILLS',		5		),
		('BABYLON',			0,		'FEATURE',	'FLOODPLAINS',		2		),
		('BABYLON',			0,		'TERRAIN',	'DESERT',			5		),
		('BABYLON',			0,		'TERRAIN',	'DESERT_HILLS',		5		),
		('BOLOGNA',			0,		'TERRAIN',	'GRASS',			5		),
		('BOLOGNA',			0,		'TERRAIN',	'GRASS_HILLS',		5		),
		('BOLOGNA',			0,		'TERRAIN',	'PLAINS',			5		),
		('BOLOGNA',			0,		'TERRAIN',	'PLAINS_HILLS',		5		),
		('BUENOS_AIRES',	0,		'TERRAIN',	'GRASS',			5		),
		('BUENOS_AIRES',	0,		'TERRAIN',	'GRASS_HILLS',		5		),
		('BRUSSELS',		0,		'FEATURE',	'MARSH',			5		),
		('BRUSSELS',		0,		'TERRAIN',	'GRASS',			5		),
		('BRUSSELS',		0,		'TERRAIN',	'GRASS_HILLS',		5		),
		('CAHOKIA',			0,		'TERRAIN',	'PLAINS',			5		),
		('CAHOKIA',			0,		'TERRAIN',	'PLAINS_HILLS',		5		),
		('CARDIFF',			0,		'TERRAIN',	'COAST',			5		),
		('CARDIFF',			0,		'TERRAIN',	'GRASS_HILLS',		5		),
		('CARTHAGE',		0,		'TERRAIN',	'COAST',			5		),
		('CARTHAGE',		0,		'TERRAIN',	'DESERT',			5		),
		('CARTHAGE',		0,		'TERRAIN',	'DESERT_HILLS',		5		),
		('FEZ',				0,		'FEATURE',	'OASIS',			3		),
		('FEZ',				0,		'TERRAIN',	'DESERT',			5		),
		('FEZ',				0,		'TERRAIN',	'DESERT_HILLS',		5		),
		('GENEVA',			0,		'TERRAIN',	'GRASS_MOUNTAIN',	5		),
		('GRANADA',			0,		'TERRAIN',	'PLAINS',			5		),
		('GRANADA',			0,		'TERRAIN',	'PLAINS_HILLS',		5		),
		('HATTUSA',			0,		'TERRAIN',	'PLAINS_HILLS',		5		),
		('HATTUSA',			0,		'TERRAIN',	'DESERT_HILLS',		5		),
		('HONG_KONG',		0,		'TERRAIN',	'COAST',			5		),
		('HONG_KONG',		0,		'TERRAIN',	'GRASS',			5		),
		('HONG_KONG',		0,		'TERRAIN',	'GRASS_HILLS',		5		),
		('JAKARTA',			0,		'TERRAIN',	'COAST',			2		),
		('JAKARTA',			0,		'FEATURE',	'JUNGLE',			2		),
		('JERUSALEM',		0,		'FEATURE',	'FLOODPLAINS',		2		),
		('JERUSALEM',		0,		'TERRAIN',	'DESERT',			5		),
		('JERUSALEM',		0,		'TERRAIN',	'DESERT_HILLS',		5		),
		('KABUL',			0,		'FEATURE',	'FLOODPLAINS',		2		),
		('KABUL',			0,		'TERRAIN',	'DESERT',			5		),
		('KABUL',			0,		'TERRAIN',	'DESERT_HILLS',		5		),
		('KANDY',			0,		'TERRAIN',	'COAST',			5		),
		('KANDY',			0,		'FEATURE',	'JUNGLE',			5		),
		('KUMASI',			0,		'RIVER',	NULL,				5		),
		('LA_VENTA',		0,		'FEATURE',	'JUNGLE',			2		),
		('LISBON',			0,		'TERRAIN',	'COAST',			2		),
		('LISBON',			0,		'TERRAIN',	'PLAINS',			5		),
		('LISBON',			0,		'TERRAIN',	'PLAINS_HILLS',		5		),
		('MEXICO_CITY',		0,		'TERRAIN',	'PLAINS',			5		),
		('MEXICO_CITY',		0,		'TERRAIN',	'PLAINS_HILLS',		5		),
		('MOHENJO_DARO',	0,		'RIVER',	NULL,				5		),
		('MOHENJO_DARO',	0,		'TERRAIN',	'COAST',			3		),
		('MOHENJO_DARO',	0,		'FEATURE',	'JUNGLE',			5		),
		('MUSCAT',			0,		'FEATURE',	'OASIS',			3		),
		('MUSCAT',			0,		'TERRAIN',	'DESERT',			5		),
		('MUSCAT',			0,		'TERRAIN',	'DESERT_HILLS',		5		),
		('NAN_MADOL',		0,		'TERRAIN',	'COAST',			2		),
		('NAN_MADOL',		0,		'FEATURE',	'JUNGLE',			2		),
		('NAZCA',			0,		'TERRAIN',	'DESERT',			3		),
		('NAZCA',			0,		'TERRAIN',	'DESERT_HILLS',		3		),
		('NGAZARGAMU',		0,		'FEATURE',	'JUNGLE',			3		),
		('PALENQUE',		0,		'FEATURE',	'JUNGLE',			3		),
		('PRESLAV',			0,		'TERRAIN',	'GRASS_HILLS',		5		),
		('RAPA_NUI',		0,		'TERRAIN',	'COAST',			2		),
		('RAPA_NUI',		0,		'FEATURE',	'JUNGLE',			3		),
		('RAPA_NUI',		0,		'FEATURE',	'VOLCANO',			3		),
		('SEOUL',			0,		'FEATURE',	'FOREST',			5		),
		('STOCKHOLM',		0,		'TERRAIN',	'TUNDRA',			5		),
		('STOCKHOLM',		0,		'TERRAIN',	'TUNDRA_HILLS',		5		),
		('VILNIUS',			0,		'TERRAIN',	'GRASS',			5		),
		('VILNIUS',			0,		'TERRAIN',	'GRASS_HILLS',		5		),
		('YEREVAN',			0,		'TERRAIN',	'GRASS_MOUNTAIN',	5		),
		('YEREVAN',			0,		'TERRAIN',	'PLAINS_MOUNTAIN',	5		),
		('ZANZIBAR',		0,		'FEATURE',	'JUNGLE',			3		);