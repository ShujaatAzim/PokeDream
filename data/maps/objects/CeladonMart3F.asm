	object_const_def
	const CELADONMART3F_CLERK
	const CELADONMART3F_GAMEBOY_KID1
	const CELADONMART3F_GAMEBOY_KID2
	const CELADONMART3F_GAMEBOY_KID3
	const CELADONMART3F_LITTLE_BOY

CeladonMart3F_Object:
	db $f ; border block

	def_warp_events
	warp_event 12,  1, CELADON_MART_4F, 1
	warp_event 16,  1, CELADON_MART_2F, 2
	warp_event  1,  1, CELADON_MART_ELEVATOR, 1

	def_bg_events
	bg_event  2,  4, TEXT_CELADONMART3F_SNES1
	bg_event  3,  4, TEXT_CELADONMART3F_RPG
	bg_event  5,  4, TEXT_CELADONMART3F_SNES2
	bg_event  6,  4, TEXT_CELADONMART3F_SPORTS_GAME
	bg_event  2,  6, TEXT_CELADONMART3F_SNES3
	bg_event  3,  6, TEXT_CELADONMART3F_PUZZLE_GAME
	bg_event  5,  6, TEXT_CELADONMART3F_SNES4
	bg_event  6,  6, TEXT_CELADONMART3F_FIGHTING_GAME
	bg_event 14,  1, TEXT_CELADONMART3F_CURRENT_FLOOR_SIGN
	bg_event  4,  1, TEXT_CELADONMART3F_POKEMON_POSTER1
	bg_event  6,  1, TEXT_CELADONMART3F_POKEMON_POSTER2
	bg_event 10,  1, TEXT_CELADONMART3F_POKEMON_POSTER3

	def_object_events
	object_event 16,  5, SPRITE_CLERK, STAY, NONE, TEXT_CELADONMART3F_CLERK
	object_event 11,  6, SPRITE_GAMEBOY_KID, STAY, RIGHT, TEXT_CELADONMART3F_GAMEBOY_KID1
	object_event  7,  2, SPRITE_GAMEBOY_KID, STAY, DOWN, TEXT_CELADONMART3F_GAMEBOY_KID2
	object_event  8,  2, SPRITE_GAMEBOY_KID, STAY, DOWN, TEXT_CELADONMART3F_GAMEBOY_KID3
	object_event  2,  5, SPRITE_LITTLE_BOY, STAY, UP, TEXT_CELADONMART3F_LITTLE_BOY

	def_warps_to CELADON_MART_3F
