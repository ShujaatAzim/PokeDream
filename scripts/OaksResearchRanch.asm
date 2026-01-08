OaksResearchRanch_Script:
	jp EnableAutoTextBoxDrawing

OaksResearchRanch_TextPointers:
	def_text_pointers
	dw_const RanchScientist1,					 			 TEXT_RANCH_SCIENTIST_1
	dw_const RanchMountainSignText,      		 TEXT_RANCH_MOUNTAIN_SIGN
	dw_const RanchCaveSignText,							 TEXT_RANCH_CAVE_SIGN
	dw_const RanchPlainsSignText,						 TEXT_RANCH_PLAINS_SIGN
	dw_const RanchAquaticSignText,					 TEXT_RANCH_AQUATIC_SIGN

RanchScientist1:
	text_far _RanchScientist1
	text_end

RanchMountainSignText:
	text_far _RanchMountainSignText
	text_end

RanchCaveSignText:
	text_far _RanchCaveSignText
	text_end

RanchPlainsSignText:
	text_far _RanchPlainsSignText
	text_end

RanchAquaticSignText:
	text_far _RanchAquaticSignText
	text_end