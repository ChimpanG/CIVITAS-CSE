/*
	Icons
	Authors: ChimpanG
*/

-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------
	
INSERT INTO IconTextureAtlases	
		(Name,							IconSize,	IconsPerRow,	IconsPerColumn,	Filename					)
VALUES  ('ICON_ATLAS_CSE_ARVAD_ICON',	256,	 	1,				1,				'CSE_ARVAD_ICON_256.dds'	),
		('ICON_ATLAS_CSE_ARVAD_ICON',	80,	 		1,				1,				'CSE_ARVAD_ICON_80.dds'		),
		('ICON_ATLAS_CSE_ARVAD_ICON',	64,	 		1,				1,				'CSE_ARVAD_ICON_64.dds'		),
		('ICON_ATLAS_CSE_ARVAD_ICON',	50,	 		1,				1,				'CSE_ARVAD_ICON_50.dds'		),
		('ICON_ATLAS_CSE_ARVAD_ICON',	48,	 		1,				1,				'CSE_ARVAD_ICON_48.dds'		),
		('ICON_ATLAS_CSE_ARVAD_ICON',	44,	 		1,				1,				'CSE_ARVAD_ICON_44.dds'		),
		('ICON_ATLAS_CSE_ARVAD_ICON',	36,	 		1,				1,				'CSE_ARVAD_ICON_36.dds'		),
		('ICON_ATLAS_CSE_ARVAD_ICON',	30,	 		1,				1,				'CSE_ARVAD_ICON_30.dds'		),
		('ICON_ATLAS_CSE_ARVAD_ICON',	22,	 		1,				1,				'CSE_ARVAD_ICON_22.dds'		);

-----------------------------------------------
-- IconDefinitions
-----------------------------------------------

INSERT OR REPLACE INTO IconDefinitions	
		(Name,							Atlas, 							'Index'	)
VALUES	('ICON_CIVILIZATION_CSE_ARVAD',	'ICON_ATLAS_CSE_ARVAD_ICON',	0		);