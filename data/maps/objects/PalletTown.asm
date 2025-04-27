	object_const_def
	const_export PALLETTOWN_OAK
	const_export PALLETTOWN_GIRL
	const_export PALLETTOWN_FISHER
	const_export PALLETTOWN_GUARD

PalletTown_Object:
	db $b ; border block

	def_warp_events
	warp_event  9,  7, REDS_HOUSE_1F, 1
	warp_event 17,  7, BLUES_HOUSE, 1
	warp_event 16, 13, OAKS_LAB, 2
	warp_event 23,  7, PALLETTOWN_HOUSE_1, 1
	warp_event 16, 19, PALLET_RANCH_GATE, 3
	warp_event 17, 19, PALLET_RANCH_GATE, 4
	warp_event 27, 11, PALLETTOWN_SCHOOL_HOUSE, 1
	warp_event 29, 17, PALLET_MART, 1
	; warp_event 23, 15, PALLETTOWN_HOUSE_2, 1

	def_bg_events
	bg_event 17, 15, TEXT_PALLETTOWN_OAKSLAB_SIGN
	bg_event 11, 11, TEXT_PALLETTOWN_SIGN
	bg_event  7,  7, TEXT_PALLETTOWN_PLAYERSHOUSE_SIGN
	bg_event 15,  7, TEXT_PALLETTOWN_RIVALSHOUSE_SIGN
	bg_event 15, 19, TEXT_PALLETTOWN_OAKSRANCH_SIGN
	bg_event 25, 11, TEXT_PALLETTOWN_SCHOOLHOUSE_SIGN

	def_object_events
	object_event 12,  7, SPRITE_OAK, STAY, NONE, TEXT_PALLETTOWN_OAK
	object_event  7, 10, SPRITE_GIRL, WALK, ANY_DIR, TEXT_PALLETTOWN_GIRL
	object_event 22, 12, SPRITE_GUARD, STAY, DOWN, TEXT_PALLETTOWN_GUARD
	object_event 15, 16, SPRITE_FISHER, WALK, ANY_DIR, TEXT_PALLETTOWN_FISHER
	object_event 31,  4, SPRITE_COOLTRAINER_M, WALK, LEFT_RIGHT, TEXT_PALLETTOWN_TRAINER

	def_warps_to PALLET_TOWN
