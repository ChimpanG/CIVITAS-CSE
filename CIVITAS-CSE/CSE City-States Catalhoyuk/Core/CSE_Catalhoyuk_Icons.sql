/*
	Icons
	Authors: ChimpanG
*/

-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------
	
INSERT INTO IconTextureAtlases	
		(Name,								IconSize,	IconsPerRow,	IconsPerColumn,	Filename						)
VALUES  ('ICON_ATLAS_CSE_CATALHOYUK_ICON',	256,	 	1,				1,				'CSE_CATALHOYUK_ICON_256.dds'	),
		('ICON_ATLAS_CSE_CATALHOYUK_ICON',	80,	 		1,				1,				'CSE_CATALHOYUK_ICON_80.dds'	),
		('ICON_ATLAS_CSE_CATALHOYUK_ICON',	64,	 		1,				1,				'CSE_CATALHOYUK_ICON_64.dds'	),
		('ICON_ATLAS_CSE_CATALHOYUK_ICON',	50,	 		1,				1,				'CSE_CATALHOYUK_ICON_50.dds'	),
		('ICON_ATLAS_CSE_CATALHOYUK_ICON',	48,	 		1,				1,				'CSE_CATALHOYUK_ICON_48.dds'	),
		('ICON_ATLAS_CSE_CATALHOYUK_ICON',	44,	 		1,				1,				'CSE_CATALHOYUK_ICON_44.dds'	),
		('ICON_ATLAS_CSE_CATALHOYUK_ICON',	36,	 		1,				1,				'CSE_CATALHOYUK_ICON_36.dds'	),
		('ICON_ATLAS_CSE_CATALHOYUK_ICON',	30,	 		1,				1,				'CSE_CATALHOYUK_ICON_30.dds'	),
		('ICON_ATLAS_CSE_CATALHOYUK_ICON',	22,	 		1,				1,				'CSE_CATALHOYUK_ICON_22.dds'	),

		('ICON_ATLAS_CSE_RESOURCE_LEATHER',	256,	 	1,				1,				'RESOURCE_CSE_LEATHER_256.dds'	),
		('ICON_ATLAS_CSE_RESOURCE_LEATHER',	64,	 		1,				1,				'RESOURCE_CSE_LEATHER_64.dds'	),
		('ICON_ATLAS_CSE_RESOURCE_LEATHER',	50,	 		1,				1,				'RESOURCE_CSE_LEATHER_50.dds'	),
		('ICON_ATLAS_CSE_RESOURCE_LEATHER',	38,			1,				1,				'RESOURCE_CSE_LEATHER_38.dds'	),

		('ICON_ATLAS_CSE_RESOURCE_WOOL',	256,	 	1,				1,				'RESOURCE_CSE_WOOL_256.dds'		),
		('ICON_ATLAS_CSE_RESOURCE_WOOL',	64,	 		1,				1,				'RESOURCE_CSE_WOOL_64.dds'		),
		('ICON_ATLAS_CSE_RESOURCE_WOOL',	50,	 		1,				1,				'RESOURCE_CSE_WOOL_50.dds'		),
		('ICON_ATLAS_CSE_RESOURCE_WOOL',	38,			1,				1,				'RESOURCE_CSE_WOOL_38.dds'		);

INSERT INTO IconTextureAtlases	
		(Name,								IconSize,	Baseline,	IconsPerRow,	IconsPerColumn,	Filename						)
VALUES  ('FONT_ATLAS_CSE_RESOURCE_LEATHER',	22,	 		6,			1,				1,				'RESOURCE_CSE_LEATHER_22.dds'	),
		('FONT_ATLAS_CSE_RESOURCE_WOOL',	22,	 		6,			1,				1,				'RESOURCE_CSE_WOOL_22.dds'		);

-----------------------------------------------
-- IconDefinitions
-----------------------------------------------

INSERT OR REPLACE INTO IconDefinitions	
		(Name,									Atlas, 								'Index'	)
VALUES	('ICON_CIVILIZATION_CSE_CATALHOYUK',	'ICON_ATLAS_CSE_CATALHOYUK_ICON',	0		),
		('ICON_RESOURCE_CSE_LEATHER',			'ICON_ATLAS_CSE_RESOURCE_LEATHER',	0		),
		('RESOURCE_CSE_LEATHER',				'FONT_ATLAS_CSE_RESOURCE_LEATHER',	0		),
		('ICON_RESOURCE_CSE_WOOL',				'ICON_ATLAS_CSE_RESOURCE_WOOL',		0		),
		('RESOURCE_CSE_WOOL',					'FONT_ATLAS_CSE_RESOURCE_WOOL',		0		);