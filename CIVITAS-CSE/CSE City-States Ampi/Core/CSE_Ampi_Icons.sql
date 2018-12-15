/*
	Icons
	Authors: ChimpanG
*/

-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------
	
INSERT INTO IconTextureAtlases	
		(Name,								IconSize,	IconsPerRow,	IconsPerColumn,	Filename						)
VALUES  ('ICON_ATLAS_CSE_AMPI_ICON',		256,	 	1,				1,				'CSE_AMPI_ICON_256.dds'			),
		('ICON_ATLAS_CSE_AMPI_ICON',		80,	 		1,				1,				'CSE_AMPI_ICON_80.dds'			),
		('ICON_ATLAS_CSE_AMPI_ICON',		64,	 		1,				1,				'CSE_AMPI_ICON_64.dds'			),
		('ICON_ATLAS_CSE_AMPI_ICON',		50,	 		1,				1,				'CSE_AMPI_ICON_50.dds'			),
		('ICON_ATLAS_CSE_AMPI_ICON',		48,	 		1,				1,				'CSE_AMPI_ICON_48.dds'			),
		('ICON_ATLAS_CSE_AMPI_ICON',		44,	 		1,				1,				'CSE_AMPI_ICON_44.dds'			),
		('ICON_ATLAS_CSE_AMPI_ICON',		36,	 		1,				1,				'CSE_AMPI_ICON_36.dds'			),
		('ICON_ATLAS_CSE_AMPI_ICON',		30,	 		1,				1,				'CSE_AMPI_ICON_30.dds'			),
		('ICON_ATLAS_CSE_AMPI_ICON',		22,	 		1,				1,				'CSE_AMPI_ICON_22.dds'			),

		('ICON_ATLAS_RESOURCE_CSE_GLASS',	256,	 	1,				1,				'RESOURCE_CSE_GLASS_256.dds'	),
		('ICON_ATLAS_RESOURCE_CSE_GLASS',	64,	 		1,				1,				'RESOURCE_CSE_GLASS_64.dds'		),
		('ICON_ATLAS_RESOURCE_CSE_GLASS',	50,	 		1,				1,				'RESOURCE_CSE_GLASS_50.dds'		),
		('ICON_ATLAS_RESOURCE_CSE_GLASS',	38,			1,				1,				'RESOURCE_CSE_GLASS_38.dds'		);

INSERT INTO IconTextureAtlases	
		(Name,								IconSize,	Baseline,	IconsPerRow,	IconsPerColumn,	Filename						)
VALUES  ('FONT_ATLAS_RESOURCE_CSE_GLASS',	22,	 		6,			1,				1,				'RESOURCE_CSE_GLASS_22.dds'	);

-----------------------------------------------
-- IconDefinitions
-----------------------------------------------

INSERT OR REPLACE INTO IconDefinitions	
		(Name,							Atlas, 								'Index'	)
VALUES	('ICON_CIVILIZATION_CSE_AMPI',	'ICON_ATLAS_CSE_AMPI_ICON',			0		),
		('ICON_RESOURCE_CSE_GLASS',		'ICON_ATLAS_RESOURCE_CSE_GLASS',	0		),
		('RESOURCE_CSE_GLASS',			'FONT_ATLAS_RESOURCE_CSE_GLASS',	0		);