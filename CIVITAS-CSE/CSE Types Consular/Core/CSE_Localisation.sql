/*
	Localisation
	Authors: thecrazyscotsman, ChimpanG
*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Consular
-----------------------------------------------

	("en_US",	"LOC_CITY_STATES_TYPE_CSE_CONSULAR",					"Consular"	),
	
	("en_US",	"LOC_CSE_CONSULAR_TRAIT_SMALL_INFLUENCE_BONUS",			"Loyalty Pressure from the [ICON_CAPITAL] Capital extends +1 Tile further."	),
	("en_US",	"LOC_CSE_CONSULAR_TRAIT_MEDIUM_INFLUENCE_BONUS",		"+2 Loyalty in every City."		),
	("en_US",	"LOC_CSE_CONSULAR_TRAIT_LARGE_INFLUENCE_BONUS",			"+2 Loyalty Pressure in every City with an established [ICON_GOVERNOR] Governor."	),

	("en_US",	"LOC_CSE_CONSULAR_TRAIT_NAME",							"{LOC_CITY_STATES_TYPE_CSE_CONSULAR} City-State"	),
	("en_US",	"LOC_CSE_CONSULAR_TRAIT_DESCRIPTION",					"{LOC_MINOR_CIV_SMALL_INFLUENCE_ENVOYS} {LOC_CSE_CONSULAR_TRAIT_SMALL_INFLUENCE_BONUS}[NEWLINE]{LOC_MINOR_CIV_MEDIUM_INFLUENCE_ENVOYS} {LOC_CSE_CONSULAR_TRAIT_MEDIUM_INFLUENCE_BONUS}[NEWLINE]{LOC_MINOR_CIV_LARGE_INFLUENCE_ENVOYS} {LOC_CSE_CONSULAR_TRAIT_LARGE_INFLUENCE_BONUS}"	),

	("en_US",	"LOC_PEDIA_CITYSTATES_PAGEGROUP_CSE_CONSULAR_NAME",		"{LOC_CITY_STATES_TYPE_CSE_CONSULAR}"	);