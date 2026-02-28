object_const_def
const_export PALLETMART_CLERK

PalletMart_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, PALLET_TOWN, 8
  warp_event  4,  7, PALLET_TOWN, 8

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, STAY, RIGHT, TEXT_PALLETMART_CLERK

	def_warps_to PALLET_MART