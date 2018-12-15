/*
	Icons
	Authors: ChimpanG
*/

-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------
	
INSERT INTO IconTextureAtlases	
		(Name,								IconSize,	IconsPerRow,	IconsPerColumn,	Filename					)
VALUES  ('ICON_ATLAS_CSE_MARITIME',			22,	 		1,				1,				'CSE_MARITIME_22.dds'		),
		('ICON_ATLAS_CSE_MARITIME',			30, 		1,				1,				'CSE_MARITIME_30.dds'		),
		('ICON_ATLAS_CSE_MARITIME',			36, 		1,				1,				'CSE_MARITIME_36.dds'		),
		('ICON_ATLAS_CSE_MARITIME',			40, 		1,				1,				'CSE_MARITIME_40.dds'		),
		('ICON_ATLAS_CSE_MARITIME',			44, 		1,				1,				'CSE_MARITIME_44.dds'		),
		('ICON_ATLAS_CSE_MARITIME',			48, 		1,				1,				'CSE_MARITIME_48.dds'		),
		('ICON_ATLAS_CSE_MARITIME',			64, 		1,				1,				'CSE_MARITIME_64.dds'		),
		('ICON_ATLAS_CSE_MARITIME',			68, 		1,				1,				'CSE_MARITIME_68.dds'		),
		('ICON_ATLAS_CSE_MARITIME',			80, 		1,				1,				'CSE_MARITIME_80.dds'		),
		('ICON_ATLAS_CSE_MARITIME',			256, 		1,				1,				'CSE_MARITIME_256.dds'		),

		('ICON_ATLAS_CSE_MARITIME_ENVOY',	26, 		1,				1,				'CSE_MARITIME_ENVOY_26.dds'	),
		('ICON_ATLAS_CSE_MARITIME_ENVOY',	50, 		1,				1,				'CSE_MARITIME_ENVOY_50.dds'	);

-----------------------------------------------
-- IconDefinitions
-----------------------------------------------

INSERT OR REPLACE INTO IconDefinitions	
		(Name,							Atlas, 								'Index'	)
VALUES	('ICON_CITYSTATE_MARITIME',		'ICON_ATLAS_CSE_MARITIME',			0		),
		('ICON_ENVOY_BONUS_MARITIME',	'ICON_ATLAS_CSE_MARITIME_ENVOY',	0		);