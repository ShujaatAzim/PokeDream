PalletRanchGate_Object:
	db $a ; border block

	def_warp_events
	warp_event  4,  7, OAKS_RESEARCH_RANCH, 1
	warp_event  5,  7, OAKS_RESEARCH_RANCH, 1
	warp_event  4,  0, PALLET_TOWN, 5
	warp_event  5,  0, PALLET_TOWN, 6

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_SUPER_NERD, WALK, ANY_DIR, TEXT_PALLETRANCHGATE_SUPER_NERD
	object_event  0,  5, SPRITE_GRAMPS, STAY, RIGHT, TEXT_PALLETRANCHGATE_GRAMPS
	object_event  7,  4, SPRITE_SILPH_WORKER_F, STAY, LEFT, TEXT_PALLETRANCHGATE_RECEPTIONIST

	def_warps_to PALLET_RANCH_GATE