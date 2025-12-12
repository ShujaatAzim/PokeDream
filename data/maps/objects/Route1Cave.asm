object_const_def
const_export ROUTE_1_CAVE_SCIENTIST
const_export ROUTE_1_CAVE_HIKER_TRAINER

Route1Cave_Object:
  db $3 ; border block

  def_warp_events
	warp_event 13, 7, ROUTE_1, 1

  def_bg_events
  bg_event 13,  3, TEXT_ROUTE1_IN_CAVE_SIGN

  def_object_events
  ; NPCs
  object_event 7, 10, SPRITE_SCIENTIST, WALK, ANY_DIR, TEXT_ROUTE_1_CAVE_SCIENTIST

  ; Trainers
  object_event 5,  3, SPRITE_HIKER, STAY, DOWN, TEXT_ROUTE_1_CAVE_HIKER_TRAINER, OPP_HIKER, 15

  def_warps_to ROUTE_1_CAVE