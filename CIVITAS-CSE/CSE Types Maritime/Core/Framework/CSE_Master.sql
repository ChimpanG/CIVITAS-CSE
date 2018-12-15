/*
	Master
	Authors: thecrazyscotsman, ChimpanG
*/

-----------------------------------------------
-- ModCheck
-----------------------------------------------

INSERT INTO ModCheck (ModType) VALUES ('CSE_MARITIME');

-----------------------------------------------
-- C15_MinorCivilization_CityStateClassTypes
-----------------------------------------------

INSERT INTO C15_MinorCivilization_CityStateClassTypes
		(Type,				TypeName,								LeaderType,							SmallBonus,										MedBonus,											LargeBonus,										BonusIcon,							TypeIcon						)
VALUES	('CSE_MARITIME',	'LOC_CITY_STATES_TYPE_CSE_MARITIME',	'LEADER_MINOR_CIV_CSE_MARITIME',	'LOC_CSE_MARITIME_TRAIT_SMALL_INFLUENCE_BONUS',	'LOC_CSE_MARITIME_TRAIT_MEDIUM_INFLUENCE_BONUS',	'LOC_CSE_MARITIME_TRAIT_LARGE_INFLUENCE_BONUS',	'ICON_ENVOY_BONUS_CSE_MARITIME',	'ICON_CITYSTATE_CSE_MARITIME'	);

		