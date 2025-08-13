object_const_def
const_export ROUTE_1_CAVE_SCIENTIST
const_export ROUTE_1_CAVE_HOUSEKEYS
const_export ROUTE_1_CAVE_HIKER_TRAINER

Route1Cave_Object:
  db $3 ; border block

  def_warp_events
	warp_event 13,  7, ROUTE_1, 1
	warp_event 24, 15, ROUTE_1, 2
	warp_event 25, 15, ROUTE_1, 2

  def_bg_events
	bg_event 13,  3, TEXT_ROUTE1_IN_CAVE_SIGN
  bg_event 27,  7, TEXT_ROUTE1_IN_CAVE_SIGN2

  def_object_events
  ; NPCs
	object_event  5,  9, SPRITE_SCIENTIST, WALK, ANY_DIR, TEXT_ROUTE_1_CAVE_SCIENTIST
	object_event  2, 13, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROUTE_1_CAVE_HOUSEKEYS, HOUSEKEYS

  ; Trainers
	object_event  5,  3, SPRITE_HIKER, STAY, DOWN, TEXT_ROUTE_1_CAVE_HIKER_TRAINER, OPP_HIKER, 15
  object_event 22,  7, SPRITE_COOLTRAINER_F, STAY, RIGHT, TEXT_ROUTE_1_CAVE_LASS_TRAINER, OPP_LASS, 20
  object_event 26,  3, SPRITE_COOLTRAINER_M, STAY, DOWN, TEXT_ROUTE_1_CAVE_JR_TRAINER_M, OPP_JR_TRAINER_M, 10

  def_warps_to ROUTE_1_CAVE