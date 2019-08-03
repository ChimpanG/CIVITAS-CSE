/*
	Havana
	~ Great Works of Writing, Art, and Music yield +1 Gold for each Harbor building in the city.

	Authors: ChimpanG
*/

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,						ModifierId									)
VALUES	('MINOR_CIV_CSE_HAVANA_TRAIT',	'CSE_HAVANA_SUZERAIN_LIGHTHOUSE_WRITING'	),
		('MINOR_CIV_CSE_HAVANA_TRAIT',	'CSE_HAVANA_SUZERAIN_LIGHTHOUSE_SCULPTURE'	),
		('MINOR_CIV_CSE_HAVANA_TRAIT',	'CSE_HAVANA_SUZERAIN_LIGHTHOUSE_LANDSCAPE'	),
		('MINOR_CIV_CSE_HAVANA_TRAIT',	'CSE_HAVANA_SUZERAIN_LIGHTHOUSE_RELIGIOUS'	),
		('MINOR_CIV_CSE_HAVANA_TRAIT',	'CSE_HAVANA_SUZERAIN_LIGHTHOUSE_MUSIC'		),
		('MINOR_CIV_CSE_HAVANA_TRAIT',	'CSE_HAVANA_SUZERAIN_SHIPYARD_WRITING'		),
		('MINOR_CIV_CSE_HAVANA_TRAIT',	'CSE_HAVANA_SUZERAIN_SHIPYARD_SCULPTURE'	),
		('MINOR_CIV_CSE_HAVANA_TRAIT',	'CSE_HAVANA_SUZERAIN_SHIPYARD_LANDSCAPE'	),
		('MINOR_CIV_CSE_HAVANA_TRAIT',	'CSE_HAVANA_SUZERAIN_SHIPYARD_RELIGIOUS'	),
		('MINOR_CIV_CSE_HAVANA_TRAIT',	'CSE_HAVANA_SUZERAIN_SHIPYARD_MUSIC'		),
		('MINOR_CIV_CSE_HAVANA_TRAIT',	'CSE_HAVANA_SUZERAIN_SEAPORT_WRITING'		),
		('MINOR_CIV_CSE_HAVANA_TRAIT',	'CSE_HAVANA_SUZERAIN_SEAPORT_SCULPTURE'		),
		('MINOR_CIV_CSE_HAVANA_TRAIT',	'CSE_HAVANA_SUZERAIN_SEAPORT_LANDSCAPE'		),
		('MINOR_CIV_CSE_HAVANA_TRAIT',	'CSE_HAVANA_SUZERAIN_SEAPORT_RELIGIOUS'		),
		('MINOR_CIV_CSE_HAVANA_TRAIT',	'CSE_HAVANA_SUZERAIN_SEAPORT_MUSIC'			);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,									ModifierType,										SubjectRequirementSetId					)
VALUES	('CSE_HAVANA_SUZERAIN_LIGHTHOUSE_WRITING',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'					),
		('CSE_HAVANA_SUZERAIN_LIGHTHOUSE_SCULPTURE',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'					),
		('CSE_HAVANA_SUZERAIN_LIGHTHOUSE_LANDSCAPE',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'					),
		('CSE_HAVANA_SUZERAIN_LIGHTHOUSE_RELIGIOUS',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'					),
		('CSE_HAVANA_SUZERAIN_LIGHTHOUSE_MUSIC',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'					),
		('CSE_HAVANA_SUZERAIN_SHIPYARD_WRITING',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'					),
		('CSE_HAVANA_SUZERAIN_SHIPYARD_SCULPTURE',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'					),
		('CSE_HAVANA_SUZERAIN_SHIPYARD_LANDSCAPE',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'					),
		('CSE_HAVANA_SUZERAIN_SHIPYARD_RELIGIOUS',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'					),
		('CSE_HAVANA_SUZERAIN_SHIPYARD_MUSIC',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'					),
		('CSE_HAVANA_SUZERAIN_SEAPORT_WRITING',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'					),
		('CSE_HAVANA_SUZERAIN_SEAPORT_SCULPTURE',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'					),
		('CSE_HAVANA_SUZERAIN_SEAPORT_LANDSCAPE',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'					),
		('CSE_HAVANA_SUZERAIN_SEAPORT_RELIGIOUS',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'					),
		('CSE_HAVANA_SUZERAIN_SEAPORT_MUSIC',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'					),
		('CSE_HAVANA_LIGHTHOUSE_WRITING',				'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',	'CITY_HAS_LIGHTHOUSE_REQUIREMENTS'		),
		('CSE_HAVANA_LIGHTHOUSE_SCULPTURE',				'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',	'CITY_HAS_LIGHTHOUSE_REQUIREMENTS'		),
		('CSE_HAVANA_LIGHTHOUSE_LANDSCAPE',				'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',	'CITY_HAS_LIGHTHOUSE_REQUIREMENTS'		),
		('CSE_HAVANA_LIGHTHOUSE_RELIGIOUS',				'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',	'CITY_HAS_LIGHTHOUSE_REQUIREMENTS'		),
		('CSE_HAVANA_LIGHTHOUSE_MUSIC',					'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',	'CITY_HAS_LIGHTHOUSE_REQUIREMENTS'		),
		('CSE_HAVANA_SHIPYARD_WRITING',					'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',	'REQSET_CSE_HAVANA_CITY_HAS_SHIPYARD'	),
		('CSE_HAVANA_SHIPYARD_SCULPTURE',				'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',	'REQSET_CSE_HAVANA_CITY_HAS_SHIPYARD'	),
		('CSE_HAVANA_SHIPYARD_LANDSCAPE',				'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',	'REQSET_CSE_HAVANA_CITY_HAS_SHIPYARD'	),
		('CSE_HAVANA_SHIPYARD_RELIGIOUS',				'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',	'REQSET_CSE_HAVANA_CITY_HAS_SHIPYARD'	),
		('CSE_HAVANA_SHIPYARD_MUSIC',					'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',	'REQSET_CSE_HAVANA_CITY_HAS_SHIPYARD'	),
		('CSE_HAVANA_SEAPORT_WRITING',					'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',	'CITY_HAS_SEAPORT_REQUIREMENTS'			),
		('CSE_HAVANA_SEAPORT_SCULPTURE',				'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',	'CITY_HAS_SEAPORT_REQUIREMENTS'			),
		('CSE_HAVANA_SEAPORT_LANDSCAPE',				'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',	'CITY_HAS_SEAPORT_REQUIREMENTS'			),
		('CSE_HAVANA_SEAPORT_RELIGIOUS',				'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',	'CITY_HAS_SEAPORT_REQUIREMENTS'			),
		('CSE_HAVANA_SEAPORT_MUSIC',					'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',	'CITY_HAS_SEAPORT_REQUIREMENTS'			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,					Value								)
VALUES	('CSE_HAVANA_SUZERAIN_LIGHTHOUSE_WRITING',		'ModifierId',			'CSE_HAVANA_LIGHTHOUSE_WRITING'		),
		('CSE_HAVANA_SUZERAIN_LIGHTHOUSE_SCULPTURE',	'ModifierId',			'CSE_HAVANA_LIGHTHOUSE_SCULPTURE'	),
		('CSE_HAVANA_SUZERAIN_LIGHTHOUSE_LANDSCAPE',	'ModifierId',			'CSE_HAVANA_LIGHTHOUSE_LANDSCAPE'	),
		('CSE_HAVANA_SUZERAIN_LIGHTHOUSE_RELIGIOUS',	'ModifierId',			'CSE_HAVANA_LIGHTHOUSE_RELIGIOUS'	),
		('CSE_HAVANA_SUZERAIN_LIGHTHOUSE_MUSIC',		'ModifierId',			'CSE_HAVANA_LIGHTHOUSE_MUSIC'		),
		('CSE_HAVANA_SUZERAIN_SHIPYARD_WRITING',		'ModifierId',			'CSE_HAVANA_SHIPYARD_WRITING'		),
		('CSE_HAVANA_SUZERAIN_SHIPYARD_SCULPTURE',		'ModifierId',			'CSE_HAVANA_SHIPYARD_SCULPTURE'		),
		('CSE_HAVANA_SUZERAIN_SHIPYARD_LANDSCAPE',		'ModifierId',			'CSE_HAVANA_SHIPYARD_LANDSCAPE'		),
		('CSE_HAVANA_SUZERAIN_SHIPYARD_RELIGIOUS',		'ModifierId',			'CSE_HAVANA_SHIPYARD_RELIGIOUS'		),
		('CSE_HAVANA_SUZERAIN_SHIPYARD_MUSIC',			'ModifierId',			'CSE_HAVANA_SHIPYARD_MUSIC'			),
		('CSE_HAVANA_SUZERAIN_SEAPORT_WRITING',			'ModifierId',			'CSE_HAVANA_SEAPORT_WRITING'		),
		('CSE_HAVANA_SUZERAIN_SEAPORT_SCULPTURE',		'ModifierId',			'CSE_HAVANA_SEAPORT_SCULPTURE'		),
		('CSE_HAVANA_SUZERAIN_SEAPORT_LANDSCAPE',		'ModifierId',			'CSE_HAVANA_SEAPORT_LANDSCAPE'		),
		('CSE_HAVANA_SUZERAIN_SEAPORT_RELIGIOUS',		'ModifierId',			'CSE_HAVANA_SEAPORT_RELIGIOUS'		),
		('CSE_HAVANA_SUZERAIN_SEAPORT_MUSIC',			'ModifierId',			'CSE_HAVANA_SEAPORT_MUSIC'			),
		('CSE_HAVANA_LIGHTHOUSE_WRITING',				'GreatWorkObjectType',	'GREATWORKOBJECT_WRITING'			),
		('CSE_HAVANA_LIGHTHOUSE_WRITING',				'YieldType',			'YIELD_GOLD'						),
		('CSE_HAVANA_LIGHTHOUSE_WRITING',				'Amount',				2									),
		('CSE_HAVANA_LIGHTHOUSE_SCULPTURE',				'GreatWorkObjectType',	'GREATWORKOBJECT_SCULPTURE'			),
		('CSE_HAVANA_LIGHTHOUSE_SCULPTURE',				'YieldType',			'YIELD_GOLD'						),
		('CSE_HAVANA_LIGHTHOUSE_SCULPTURE',				'Amount',				2									),
		('CSE_HAVANA_LIGHTHOUSE_LANDSCAPE',				'GreatWorkObjectType',	'GREATWORKOBJECT_LANDSCAPE'			),
		('CSE_HAVANA_LIGHTHOUSE_LANDSCAPE',				'YieldType',			'YIELD_GOLD'						),
		('CSE_HAVANA_LIGHTHOUSE_LANDSCAPE',				'Amount',				2									),
		('CSE_HAVANA_LIGHTHOUSE_RELIGIOUS',				'GreatWorkObjectType',	'GREATWORKOBJECT_RELIGIOUS'			),
		('CSE_HAVANA_LIGHTHOUSE_RELIGIOUS',				'YieldType',			'YIELD_GOLD'						),
		('CSE_HAVANA_LIGHTHOUSE_RELIGIOUS',				'Amount',				2									),
		('CSE_HAVANA_LIGHTHOUSE_MUSIC',					'GreatWorkObjectType',	'GREATWORKOBJECT_MUSIC'				),
		('CSE_HAVANA_LIGHTHOUSE_MUSIC',					'YieldType',			'YIELD_GOLD'						),
		('CSE_HAVANA_LIGHTHOUSE_MUSIC',					'Amount',				2									),
		('CSE_HAVANA_SHIPYARD_WRITING',					'GreatWorkObjectType',	'GREATWORKOBJECT_WRITING'			),
		('CSE_HAVANA_SHIPYARD_WRITING',					'YieldType',			'YIELD_GOLD'						),
		('CSE_HAVANA_SHIPYARD_WRITING',					'Amount',				2									),
		('CSE_HAVANA_SHIPYARD_SCULPTURE',				'GreatWorkObjectType',	'GREATWORKOBJECT_SCULPTURE'			),
		('CSE_HAVANA_SHIPYARD_SCULPTURE',				'YieldType',			'YIELD_GOLD'						),
		('CSE_HAVANA_SHIPYARD_SCULPTURE',				'Amount',				2									),
		('CSE_HAVANA_SHIPYARD_LANDSCAPE',				'GreatWorkObjectType',	'GREATWORKOBJECT_LANDSCAPE'			),
		('CSE_HAVANA_SHIPYARD_LANDSCAPE',				'YieldType',			'YIELD_GOLD'						),
		('CSE_HAVANA_SHIPYARD_LANDSCAPE',				'Amount',				2									),
		('CSE_HAVANA_SHIPYARD_RELIGIOUS',				'GreatWorkObjectType',	'GREATWORKOBJECT_RELIGIOUS'			),
		('CSE_HAVANA_SHIPYARD_RELIGIOUS',				'YieldType',			'YIELD_GOLD'						),
		('CSE_HAVANA_SHIPYARD_RELIGIOUS',				'Amount',				2									),
		('CSE_HAVANA_SHIPYARD_MUSIC',					'GreatWorkObjectType',	'GREATWORKOBJECT_MUSIC'				),
		('CSE_HAVANA_SHIPYARD_MUSIC',					'YieldType',			'YIELD_GOLD'						),
		('CSE_HAVANA_SHIPYARD_MUSIC',					'Amount',				2									),
		('CSE_HAVANA_SEAPORT_WRITING',					'GreatWorkObjectType',	'GREATWORKOBJECT_WRITING'			),
		('CSE_HAVANA_SEAPORT_WRITING',					'YieldType',			'YIELD_GOLD'						),
		('CSE_HAVANA_SEAPORT_WRITING',					'Amount',				2									),
		('CSE_HAVANA_SEAPORT_SCULPTURE',				'GreatWorkObjectType',	'GREATWORKOBJECT_SCULPTURE'			),
		('CSE_HAVANA_SEAPORT_SCULPTURE',				'YieldType',			'YIELD_GOLD'						),
		('CSE_HAVANA_SEAPORT_SCULPTURE',				'Amount',				2									),
		('CSE_HAVANA_SEAPORT_LANDSCAPE',				'GreatWorkObjectType',	'GREATWORKOBJECT_LANDSCAPE'			),
		('CSE_HAVANA_SEAPORT_LANDSCAPE',				'YieldType',			'YIELD_GOLD'						),
		('CSE_HAVANA_SEAPORT_LANDSCAPE',				'Amount',				2									),
		('CSE_HAVANA_SEAPORT_RELIGIOUS',				'GreatWorkObjectType',	'GREATWORKOBJECT_RELIGIOUS'			),
		('CSE_HAVANA_SEAPORT_RELIGIOUS',				'YieldType',			'YIELD_GOLD'						),
		('CSE_HAVANA_SEAPORT_RELIGIOUS',				'Amount',				2									),
		('CSE_HAVANA_SEAPORT_MUSIC',					'GreatWorkObjectType',	'GREATWORKOBJECT_MUSIC'				),
		('CSE_HAVANA_SEAPORT_MUSIC',					'YieldType',			'YIELD_GOLD'						),
		('CSE_HAVANA_SEAPORT_MUSIC',					'Amount',				2									);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CSE_HAVANA_CITY_HAS_SHIPYARD',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId						)
VALUES	('REQSET_CSE_HAVANA_CITY_HAS_SHIPYARD',	'REQ_CSE_HAVANA_CITY_HAS_SHIPYARD'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType,					Inverse	)
VALUES	('REQ_CSE_HAVANA_CITY_HAS_SHIPYARD',	'REQUIREMENT_CITY_HAS_BUILDING',	0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,							Name,				Value					)
VALUES	('REQ_CSE_HAVANA_CITY_HAS_SHIPYARD',	'BuildingType',		'BUILDING_SHIPYARD'		);