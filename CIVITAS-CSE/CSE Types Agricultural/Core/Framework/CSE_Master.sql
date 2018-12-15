/*
	Master
	Authors: thecrazyscotsman, ChimpanG
*/

-----------------------------------------------
-- ModCheck
-----------------------------------------------

INSERT INTO ModCheck (ModType) VALUES ('CSE_AGRICULTURAL');

-----------------------------------------------
-- C15_MinorCivilization_CityStateClassTypes
-----------------------------------------------

INSERT INTO C15_MinorCivilization_CityStateClassTypes
		(Type,					TypeName,									LeaderType,								SmallBonus,											MedBonus,												LargeBonus,											BonusIcon,								TypeIcon							)
VALUES	('CSE_AGRICULTURAL',	'LOC_CITY_STATES_TYPE_CSE_AGRICULTURAL',	'LEADER_MINOR_CIV_CSE_AGRICULTURAL',	'LOC_CSE_AGRICULTURAL_TRAIT_SMALL_INFLUENCE_BONUS',	'LOC_CSE_AGRICULTURAL_TRAIT_MEDIUM_INFLUENCE_BONUS',	'LOC_CSE_AGRICULTURAL_TRAIT_LARGE_INFLUENCE_BONUS',	'ICON_ENVOY_BONUS_CSE_AGRICULTURAL',	'ICON_CITYSTATE_CSE_AGRICULTURAL'	);

		