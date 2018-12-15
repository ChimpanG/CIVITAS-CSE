/*
	Icons
	Authors: ChimpanG
*/

-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------
	
INSERT INTO IconTextureAtlases	
		(Name,											IconSize,	IconsPerRow,	IconsPerColumn,	Filename											)
VALUES  ('ICON_ATLAS_CSE_ANURADHAPURA_ICON',			256,	 	1,				1,				'CSE_ANURADHAPURA_ICON_256.dds'						),
		('ICON_ATLAS_CSE_ANURADHAPURA_ICON',			80,	 		1,				1,				'CSE_ANURADHAPURA_ICON_80.dds'						),
		('ICON_ATLAS_CSE_ANURADHAPURA_ICON',			64,	 		1,				1,				'CSE_ANURADHAPURA_ICON_64.dds'						),
		('ICON_ATLAS_CSE_ANURADHAPURA_ICON',			50,	 		1,				1,				'CSE_ANURADHAPURA_ICON_50.dds'						),
		('ICON_ATLAS_CSE_ANURADHAPURA_ICON',			48,	 		1,				1,				'CSE_ANURADHAPURA_ICON_48.dds'						),
		('ICON_ATLAS_CSE_ANURADHAPURA_ICON',			44,	 		1,				1,				'CSE_ANURADHAPURA_ICON_44.dds'						),
		('ICON_ATLAS_CSE_ANURADHAPURA_ICON',			36,	 		1,				1,				'CSE_ANURADHAPURA_ICON_36.dds'						),
		('ICON_ATLAS_CSE_ANURADHAPURA_ICON',			30,	 		1,				1,				'CSE_ANURADHAPURA_ICON_30.dds'						),
		('ICON_ATLAS_CSE_ANURADHAPURA_ICON',			22,	 		1,				1,				'CSE_ANURADHAPURA_ICON_22.dds'						),

		('ICON_ATLAS_IMPROVEMENT_CSE_CETIYA_ICON',		256,		1,				1,				'CIVILIZATION_IMPROVEMENT_CSE_CETIYA_ICON_256.dds'	),
		('ICON_ATLAS_IMPROVEMENT_CSE_CETIYA_ICON',		200,		1,				1,				'CIVILIZATION_IMPROVEMENT_CSE_CETIYA_ICON_200.dds'	),
		('ICON_ATLAS_IMPROVEMENT_CSE_CETIYA_ICON',		80,			1,				1,				'CIVILIZATION_IMPROVEMENT_CSE_CETIYA_ICON_80.dds'	),
		('ICON_ATLAS_IMPROVEMENT_CSE_CETIYA_ICON',		50,			1,				1,				'CIVILIZATION_IMPROVEMENT_CSE_CETIYA_ICON_50.dds'	),
		('ICON_ATLAS_IMPROVEMENT_CSE_CETIYA_ICON',		40,			1,				1,				'CIVILIZATION_IMPROVEMENT_CSE_CETIYA_ICON_40.dds'	),
		('ICON_ATLAS_IMPROVEMENT_CSE_CETIYA_ICON',		38,			1,				1,				'CIVILIZATION_IMPROVEMENT_CSE_CETIYA_ICON_38.dds'	);

-----------------------------------------------
-- IconDefinitions
-----------------------------------------------

INSERT OR REPLACE INTO IconDefinitions	
		(Name,									Atlas, 										'Index'	)
VALUES	('ICON_CIVILIZATION_CSE_ANURADHAPURA',	'ICON_ATLAS_CSE_ANURADHAPURA_ICON',			0		),
		('ICON_IMPROVEMENT_CSE_CETIYA',			'ICON_ATLAS_IMPROVEMENT_CSE_CETIYA_ICON',	0		);