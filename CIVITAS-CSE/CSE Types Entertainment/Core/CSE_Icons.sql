/*
	Icons
	Authors: ChimpanG
*/

-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------
	
INSERT INTO IconTextureAtlases	
		(Name,									IconSize,	IconsPerRow,	IconsPerColumn,	Filename							)
VALUES  ('ICON_ATLAS_CSE_ENTERTAINMENT',		22,	 		1,				1,				'CSE_ENTERTAINMENT_22.dds'			),
		('ICON_ATLAS_CSE_ENTERTAINMENT',		30, 		1,				1,				'CSE_ENTERTAINMENT_30.dds'			),
		('ICON_ATLAS_CSE_ENTERTAINMENT',		36, 		1,				1,				'CSE_ENTERTAINMENT_36.dds'			),
		('ICON_ATLAS_CSE_ENTERTAINMENT',		40, 		1,				1,				'CSE_ENTERTAINMENT_40.dds'			),
		('ICON_ATLAS_CSE_ENTERTAINMENT',		44, 		1,				1,				'CSE_ENTERTAINMENT_44.dds'			),
		('ICON_ATLAS_CSE_ENTERTAINMENT',		48, 		1,				1,				'CSE_ENTERTAINMENT_48.dds'			),
		('ICON_ATLAS_CSE_ENTERTAINMENT',		64, 		1,				1,				'CSE_ENTERTAINMENT_64.dds'			),
		('ICON_ATLAS_CSE_ENTERTAINMENT',		68, 		1,				1,				'CSE_ENTERTAINMENT_68.dds'			),
		('ICON_ATLAS_CSE_ENTERTAINMENT',		80, 		1,				1,				'CSE_ENTERTAINMENT_80.dds'			),
		('ICON_ATLAS_CSE_ENTERTAINMENT',		256, 		1,				1,				'CSE_ENTERTAINMENT_256.dds'			),

		('ICON_ATLAS_CSE_ENTERTAINMENT_ENVOY',	26, 		1,				1,				'CSE_ENTERTAINMENT_ENVOY_26.dds'	),
		('ICON_ATLAS_CSE_ENTERTAINMENT_ENVOY',	50, 		1,				1,				'CSE_ENTERTAINMENT_ENVOY_50.dds'	);

-----------------------------------------------
-- IconDefinitions
-----------------------------------------------

INSERT OR REPLACE INTO IconDefinitions	
		(Name,								Atlas, 									'Index'	)
VALUES	('ICON_CITYSTATE_ENTERTAINMENT',	'ICON_ATLAS_CSE_ENTERTAINMENT',			0		),
		('ICON_ENVOY_BONUS_ENTERTAINMENT',	'ICON_ATLAS_CSE_ENTERTAINMENT_ENVOY',	0		);
