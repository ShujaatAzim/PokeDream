	object_const_def
	const_export PALLETTOWN_OAK
	const_export PALLETTOWN_GIRL
	const_export PALLETTOWN_FISHER
	const_export PALLETTOWN_GUARD

PalletTown_Object:
	db $b ; border block

	def_warp_events
	warp_event  9,  5, REDS_HOUSE_1F, 1
	warp_event 17,  5, BLUES_HOUSE, 1
	warp_event 16, 11, OAKS_LAB, 2
	warp_event 23,  5, PALLETTOWN_SMALL_HOUSE_1, 1
	warp_event 29,  3, PALLET_RANCH_GATE, 3
	warp_event 27,  9, PALLETTOWN_SCHOOL, 1

	def_bg_events
	bg_event 17, 13, TEXT_PALLETTOWN_OAKSLAB_SIGN
	bg_event 11,  9, TEXT_PALLETTOWN_SIGN
	bg_event  7,  5, TEXT_PALLETTOWN_PLAYERSHOUSE_SIGN
	bg_event 15,  5, TEXT_PALLETTOWN_RIVALSHOUSE_SIGN
	bg_event 27,  3, TEXT_PALLETTOWN_OAKSRANCH_SIGN
	bg_event 25,  9, TEXT_PALLETTOWN_SCHOOLHOUSE_SIGN

	def_object_events
	object_event 12,  5, SPRITE_OAK, STAY, NONE, TEXT_PALLETTOWN_OAK
	object_event  7,  8, SPRITE_GIRL, WALK, ANY_DIR, TEXT_PALLETTOWN_GIRL
	object_event 22, 10, SPRITE_GUARD, STAY, DOWN, TEXT_PALLETTOWN_GUARD
	object_event 15, 14, SPRITE_FISHER, WALK, ANY_DIR, TEXT_PALLETTOWN_FISHER

	def_warps_to PALLET_TOWN
