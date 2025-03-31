OaksResearchRanch_Object:
  db $b ; border block

  def_warp_events
	warp_event 13, 21, PALLET_RANCH_GATE, 1
	warp_event 14, 21, PALLET_RANCH_GATE, 2

  def_bg_events
	bg_event  7, 15, TEXT_RANCH_MOUNTAIN_SIGN
	bg_event 17, 17, TEXT_RANCH_CAVE_SIGN
	bg_event 19,  5, TEXT_RANCH_PLAINS_SIGN
	bg_event 13,  5, TEXT_RANCH_AQUATIC_SIGN

  def_object_events
	object_event 22, 18, SPRITE_SCIENTIST, STAY, UP, TEXT_RANCH_SCIENTIST_1

  def_warps_to OAKS_RESEARCH_RANCH