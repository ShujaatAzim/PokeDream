PalletTownHouses_Object:
  db $a ; border block

  def_warp_events
  ; Pallet Small House 1
  warp_event  22,  7, PALLET_TOWN, 4
	warp_event  23,  7, PALLET_TOWN, 4
  ; Pallet School House
  warp_event  2,  7, PALLET_TOWN, 5
  warp_event  3,  7, PALLET_TOWN, 5

  def_bg_events

  def_object_events
  ; Pallet Small House 1
  object_event  22,  3, SPRITE_GRAMPS, STAY, RIGHT, TEXT_PALLETTOWN_OLD_MAN
	object_event  25,  3, SPRITE_GRANNY, STAY, LEFT, TEXT_PALLETTOWN_OLD_WOMAN
  object_event  27,  5, SPRITE_FAIRY, WALK, ANY_DIR, TEXT_PALLETTOWN_PIKACHU
  ; Pallet School House
  object_event  4,  4, SPRITE_LITTLE_BOY, STAY, RIGHT, TEXT_PALLETSCHOOL_BOY
	object_event  9,  5, SPRITE_LITTLE_GIRL, STAY, UP, TEXT_PALLETSCHOOL_GIRL
	object_event  0,  2, SPRITE_LITTLE_BOY, STAY, UP, TEXT_PALLETSCHOOL_COMP_BOY
	object_event 13,  2, SPRITE_LITTLE_GIRL, STAY, UP, TEXT_PALLETSCHOOL_BOOK_GIRL
	object_event  5,  1, SPRITE_BRUNETTE_GIRL, STAY, DOWN, TEXT_PALLETSCHOOL_TEACHER


  def_warps_to PALLET_TOWN_HOUSES