	object_const_def
	const_export ROUTE1_YOUNGSTER1
	const_export ROUTE1_YOUNGSTER2
	const_export ROUTE1_YOUNGSTER3

Route1_Object:
	db $b ; border block

	def_warp_events

	def_bg_events
	bg_event 17, 27, TEXT_ROUTE1_SIGN

	def_object_events
	object_event 13, 24, SPRITE_YOUNGSTER, WALK, UP_DOWN, TEXT_ROUTE1_YOUNGSTER1
	object_event 23, 13, SPRITE_YOUNGSTER, WALK, LEFT_RIGHT, TEXT_ROUTE1_YOUNGSTER2
	object_event 20, 28, SPRITE_COOLTRAINER_M, STAY, DOWN, TEXT_ROUTE1_YOUNGSTER3

	def_warps_to ROUTE_1
