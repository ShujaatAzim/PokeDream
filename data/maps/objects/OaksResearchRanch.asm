OaksResearchRanch_Object:
  db $b ; border block

  def_warp_events
	warp_event 12,  5, PALLET_RANCH_GATE, 1

  def_bg_events
	bg_event  4, 12, TEXT_RANCH_MOUNTAIN_SIGN
	bg_event 19,  9, TEXT_RANCH_CAVE_SIGN
	bg_event 21, 13, TEXT_RANCH_PLAINS_SIGN
	bg_event 13, 15, TEXT_RANCH_AQUATIC_SIGN

  def_object_events
	object_event 24, 10, SPRITE_SCIENTIST, STAY, UP, TEXT_RANCH_SCIENTIST_1

  def_warps_to OAKS_RESEARCH_RANCH