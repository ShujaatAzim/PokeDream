	object_const_def
	const_export PALLETMART_CLERK
	const_export PALLETMART_WOMAN
	const_export PALLETMART_MAN

PalletMart_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, PALLET_TOWN, 8
  warp_event  4,  7, PALLET_TOWN, 8

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, STAY, RIGHT, TEXT_PALLETMART_CLERK
	object_event	4,  2, SPRITE_COOLTRAINER_F, WALK, LEFT_RIGHT, TEXT_PALLETMART_WOMAN
	object_event	4,	5, SPRITE_COOLTRAINER_M, STAY, UP, TEXT_PALLETMART_MAN

	def_warps_to PALLET_MART