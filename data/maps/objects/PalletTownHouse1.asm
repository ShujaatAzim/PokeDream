PalletTownHouse1_Object:
  db $a ; border block

  def_warp_events
	warp_event  2,  7, LAST_MAP, 4
	warp_event  3,  7, LAST_MAP, 4

  def_bg_events

  def_object_events
	object_event  2,  3, SPRITE_GRAMPS, STAY, RIGHT, TEXT_PALLETTOWN_OLD_MAN
	object_event  5,  3, SPRITE_GRANNY, STAY, LEFT, TEXT_PALLETTOWN_OLD_WOMAN
  object_event  7,  5, SPRITE_FAIRY, WALK, ANY_DIR, TEXT_PALLETTOWN_PIKACHU

  def_warps_to PALLETTOWN_HOUSE_1