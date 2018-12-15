/*
	Master
	Authors: ChimpanG
*/

-----------------------------------------------
-- ModCheck
-----------------------------------------------

INSERT INTO ModCheck (ModType) VALUES ('CITY_STATES_EXPANDED');

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
		('FEZ',				0,		'SCIENTIFIC',		TBD,				'ETHNICITY_AFRICAN',	'XP2',		NULL	),
		('GENEVA',			0,		'SCIENTIFIC',		'BERN',				'ETHNICITY_EURO',		'BASE',		NULL	),
		('GRANADA',			0,		'MILITARISTIC',		'TBD',				'ETHNICITY_EURO',		'VIKINGS',	NULL	),
		('HATTUSA',			0,		'SCIENTIFIC',		'TBD',				'ETHNICITY_MEDIT',		'BASE',		NULL	),
		('HONG_KONG',		0,		'PRODUCTION',		'TBD',				'ETHNICITY_ASIAN',		'BASE',		NULL	),
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
		