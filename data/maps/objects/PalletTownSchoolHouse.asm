PalletTownSchoolHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 7
	warp_event  3,  7, LAST_MAP, 7

	def_bg_events

	def_object_events
	object_event  4,  4, SPRITE_LITTLE_BOY, STAY, RIGHT, TEXT_PALLETSCHOOL_BOY
	object_event  9,  5, SPRITE_LITTLE_GIRL, STAY, UP, TEXT_PALLETSCHOOL_GIRL
	object_event	0,  2, SPRITE_LITTLE_BOY, STAY, UP, TEXT_PALLETSCHOOL_COMP_BOY
	object_event 13,  2, SPRITE_LITTLE_GIRL, STAY, UP, TEXT_PALLETSCHOOL_BOOK_GIRL
	object_event  5,  1, SPRITE_BRUNETTE_GIRL, STAY, DOWN, TEXT_PALLETSCHOOL_TEACHER

	def_warps_to PALLETTOWN_SCHOOL_HOUSE