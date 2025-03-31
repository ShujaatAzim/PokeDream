OaksResearchRanch_Object:
  db $b ; border block

  def_warp_events
	warp_event 13, 21, PALLET_RANCH_GATE, 1
  warp_event 14, 21, PALLET_RANCH_GATE, 2

  def_bg_events

  def_object_events
  object_event 20, 18, SPRITE_SCIENTIST, STAY, UP, TEXT_RANCH_SCIENTIST_1

  def_warps_to OAKS_RESEARCH_RANCH