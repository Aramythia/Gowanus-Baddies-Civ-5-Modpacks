INSERT INTO IconTextureAtlases 
			(Atlas, 					  IconSize, 	                  Filename, 	IconsPerRow, 	IconsPerColumn)
VALUES		
			('MC_MACEDON_GG_GA_ATLAS', 			64, 	    'MacedonGAAtlas64.dds',				  1, 				 1),
			('MC_MACEDON_GG_GA_ATLAS', 			45, 	    'MacedonGAAtlas45.dds',				  1, 				 1);

INSERT OR REPLACE INTO Language_en_US (Tag, Text)
VALUES
	(
		'TXT_KEY_MC_MACEDON_GG_GA_TAG',
		'[COLOR_POSITIVE_TEXT]Start a Golden Age[ENDCOLOR][NEWLINE][NEWLINE]This order will consume the Great General and imitate a [ICON_GOLDEN_AGE] Golden Age (extra [ICON_PRODUCTION] Production, [ICON_GOLD] Gold, and [ICON_CULTURE] Culture for {1_GABonus} turns.[NEWLINE][NEWLINE][COLOR_NEGATIVE_TEXT]Note: This action can only be performed within your own territory and is disabled if the Unit is out of moves or has previously completed an active action.[ENDCOLOR]'
	);