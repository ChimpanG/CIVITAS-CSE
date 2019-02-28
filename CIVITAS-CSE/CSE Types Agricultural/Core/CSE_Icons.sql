/*
	Icons
	Authors: ChimpanG
*/

-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------
	
INSERT INTO IconTextureAtlases	
		(Name,									IconSize,	IconsPerRow,	IconsPerColumn,	Filename						)
VALUES  ('ICON_ATLAS_CSE_AGRICULTURAL',			22,	 		1,				1,				'CSE_AGRICULTURAL_22.dds'		),
		('ICON_ATLAS_CSE_AGRICULTURAL',			30, 		1,				1,				'CSE_AGRICULTURAL_30.dds'		),
		('ICON_ATLAS_CSE_AGRICULTURAL',			36, 		1,				1,				'CSE_AGRICULTURAL_36.dds'		),
		('ICON_ATLAS_CSE_AGRICULTURAL',			40, 		1,				1,				'CSE_AGRICULTURAL_40.dds'		),
		('ICON_ATLAS_CSE_AGRICULTURAL',			44, 		1,				1,				'CSE_AGRICULTURAL_44.dds'		),
		('ICON_ATLAS_CSE_AGRICULTURAL',			48, 		1,				1,				'CSE_AGRICULTURAL_48.dds'		),
		('ICON_ATLAS_CSE_AGRICULTURAL',			64, 		1,				1,				'CSE_AGRICULTURAL_64.dds'		),
		('ICON_ATLAS_CSE_AGRICULTURAL',			68, 		1,				1,				'CSE_AGRICULTURAL_68.dds'		),
		('ICON_ATLAS_CSE_AGRICULTURAL',			80, 		1,				1,				'CSE_AGRICULTURAL_80.dds'		),
		('ICON_ATLAS_CSE_AGRICULTURAL',			256, 		1,				1,				'CSE_AGRICULTURAL_256.dds'		),

		('ICON_ATLAS_CSE_AGRICULTURAL_ENVOY',	26, 		1,				1,				'CSE_AGRICULTURAL_ENVOY_26.dds'	),
		('ICON_ATLAS_CSE_AGRICULTURAL_ENVOY',	50, 		1,				1,				'CSE_AGRICULTURAL_ENVOY_50.dds'	);

-----------------------------------------------
-- IconDefinitions
-----------------------------------------------

INSERT INTO IconDefinitions	
		(Name,									Atlas, 									'Index'	)
VALUES	('ICON_CITYSTATE_CSE_AGRICULTURAL',		'ICON_ATLAS_CSE_AGRICULTURAL',			0		),
		('ICON_ENVOY_BONUS_CSE_AGRICULTURAL',	'ICON_ATLAS_CSE_AGRICULTURAL_ENVOY',	0		);
