/*
	Localisation
	Authors: thecrazyscotsman, ChimpanG
*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Maritime
-----------------------------------------------

	("en_US",	"LOC_CITY_STATES_TYPE_MARITIME",							"Maritime"											),
	("en_US",	"LOC_MINOR_CIV_MARITIME_TRAIT_NAME",						"Maritime City-State"								),
	
	("en_US",	"LOC_MINOR_CIV_MARITIME_TRAIT_SMALL_INFLUENCE_BONUS",		"+1 [ICON_Food] Food and +1 [ICON_Production] Production in the [ICON_Capital] Capital."	),
	("en_US",	"LOC_MINOR_CIV_MARITIME_TRAIT_MEDIUM_INFLUENCE_BONUS",		"+1 [ICON_Food] Food and +1 [ICON_Production] Production in every Lighthouse."				),
	("en_US",	"LOC_MINOR_CIV_MARITIME_TRAIT_LARGE_INFLUENCE_BONUS",		"+1 [ICON_Food] Food and +1 [ICON_Production] Production in every Shipyard."				),
	("en_US",	"LOC_MINOR_CIV_MARITIME_TRAIT_DESCRIPTION",					"{LOC_MINOR_CIV_SMALL_INFLUENCE_ENVOYS} {LOC_MINOR_CIV_MARITIME_TRAIT_SMALL_INFLUENCE_BONUS}[NEWLINE]{LOC_MINOR_CIV_MEDIUM_INFLUENCE_ENVOYS} {LOC_MINOR_CIV_MARITIME_TRAIT_MEDIUM_INFLUENCE_BONUS}[NEWLINE]{LOC_MINOR_CIV_LARGE_INFLUENCE_ENVOYS} {LOC_MINOR_CIV_MARITIME_TRAIT_LARGE_INFLUENCE_BONUS}"	),

	("en_US",	"LOC_PEDIA_CITYSTATES_PAGEGROUP_MARITIME_NAME",				"{LOC_CITY_STATES_TYPE_MARITIME}"					);
	
