/*
	Icons
	Authors: ChimpanG
*/

-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------
	
INSERT INTO IconTextureAtlases	
		(Name,								IconSize,	IconsPerRow,	IconsPerColumn,	Filename					)
VALUES  ('ICON_ATLAS_CSE_CONSULAR',			22,	 		1,				1,				'CSE_CONSULAR_22.dds'		),
		('ICON_ATLAS_CSE_CONSULAR',			30, 		1,				1,				'CSE_CONSULAR_30.dds'		),
		('ICON_ATLAS_CSE_CONSULAR',			36, 		1,				1,				'CSE_CONSULAR_36.dds'		),
		('ICON_ATLAS_CSE_CONSULAR',			40, 		1,				1,				'CSE_CONSULAR_40.dds'		),
		('ICON_ATLAS_CSE_CONSULAR',			44, 		1,				1,				'CSE_CONSULAR_44.dds'		),
		('ICON_ATLAS_CSE_CONSULAR',			48, 		1,				1,				'CSE_CONSULAR_48.dds'		),
		('ICON_ATLAS_CSE_CONSULAR',			64, 		1,				1,				'CSE_CONSULAR_64.dds'		),
		('ICON_ATLAS_CSE_CONSULAR',			68, 		1,				1,				'CSE_CONSULAR_68.dds'		),
		('ICON_ATLAS_CSE_CONSULAR',			80, 		1,				1,				'CSE_CONSULAR_80.dds'		),
		('ICON_ATLAS_CSE_CONSULAR',			256, 		1,				1,				'CSE_CONSULAR_256.dds'		),

		('ICON_ATLAS_CSE_CONSULAR_ENVOY',	26, 		1,				1,				'CSE_CONSULAR_ENVOY_26.dds'	),
		('ICON_ATLAS_CSE_CONSULAR_ENVOY',	50, 		1,				1,				'CSE_CONSULAR_ENVOY_50.dds'	);

-----------------------------------------------
-- IconDefinitions
-----------------------------------------------

INSERT OR REPLACE INTO IconDefinitions	
		(Name,								Atlas, 								'Index'	)
VALUES	('ICON_CITYSTATE_CSE_CONSULAR',		'ICON_ATLAS_CSE_CONSULAR',			0		),
		('ICON_ENVOY_BONUS_CSE_CONSULAR',	'ICON_ATLAS_CSE_CONSULAR_ENVOY',	0		);
