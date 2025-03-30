	object_const_def
	; const_export PALLETRANCHGATE_SUPER_NERD
	; const_export PALLETRANCHGATE_GRAMPS

PalletRanchGate_Object:
	db $a ; border block

	def_warp_events
	warp_event  4,  0, OAKS_RESEARCH_RANCH, 1
	warp_event  5,  0, OAKS_RESEARCH_RANCH, 2
	warp_event  4,  7, PALLET_TOWN, 5
	warp_event  5,  7, PALLET_TOWN, 5

	def_bg_events

	def_object_events
	; object_event  3,  2, SPRITE_SUPER_NERD, STAY, NONE, TEXT_PALLETRANCHGATE_SUPER_NERD
	; object_event  2,  5, SPRITE_GRAMPS, STAY, NONE, TEXT_PALLETRANCHGATE_GRAMPS

	def_warps_to PALLET_RANCH_GATE