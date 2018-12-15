/*
	Icons
	Authors: ChimpanG
*/

-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------
	
INSERT INTO IconTextureAtlases	
		(Name,									IconSize,	IconsPerRow,	IconsPerColumn,	Filename						)
VALUES  ('ICON_ATLAS_CSE_MILITARISTIC',			22,	 		1,				1,				'CSE_MILITARISTIC_22.dds'		),
		('ICON_ATLAS_CSE_MILITARISTIC',			30, 		1,				1,				'CSE_MILITARISTIC_30.dds'		),
		('ICON_ATLAS_CSE_MILITARISTIC',			36, 		1,				1,				'CSE_MILITARISTIC_36.dds'		),
		('ICON_ATLAS_CSE_MILITARISTIC',			40, 		1,				1,				'CSE_MILITARISTIC_40.dds'		),
		('ICON_ATLAS_CSE_MILITARISTIC',			44, 		1,				1,				'CSE_MILITARISTIC_44.dds'		),
		('ICON_ATLAS_CSE_MILITARISTIC',			48, 		1,				1,				'CSE_MILITARISTIC_48.dds'		),
		('ICON_ATLAS_CSE_MILITARISTIC',			64, 		1,				1,				'CSE_MILITARISTIC_64.dds'		),
		('ICON_ATLAS_CSE_MILITARISTIC',			68, 		1,				1,				'CSE_MILITARISTIC_68.dds'		),
		('ICON_ATLAS_CSE_MILITARISTIC',			80, 		1,				1,				'CSE_MILITARISTIC_80.dds'		),
		('ICON_ATLAS_CSE_MILITARISTIC',			256, 		1,				1,				'CSE_MILITARISTIC_256.dds'		),

		('ICON_ATLAS_CSE_MILITARISTIC_ENVOY',	26, 		1,				1,				'CSE_MILITARISTIC_ENVOY_26.dds'	),
		('ICON_ATLAS_CSE_MILITARISTIC_ENVOY',	50, 		1,				1,				'CSE_MILITARISTIC_ENVOY_50.dds'	);

-----------------------------------------------
-- IconDefinitions
-----------------------------------------------

INSERT OR REPLACE INTO IconDefinitions	
		(Name,								Atlas, 									'Index'	)
VALUES	('ICON_CITYSTATE_MILITARISTIC',		'ICON_ATLAS_CSE_MILITARISTIC',			0		),
		('ICON_ENVOY_BONUS_MILITARISTIC',	'ICON_ATLAS_CSE_MILITARISTIC_ENVOY',	0		);