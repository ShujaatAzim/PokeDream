_Route1Youngster1MartSampleText::
	text "Hi! I work at a"
	line "#MON MART."

	para "It's a convenient"
	line "shop, so please"
	cont "visit us in"
	cont "VIRIDIAN CITY."

	para "I know, I'll give"
	line "you a sample!"
	cont "Here you go!"
	prompt

_Route1Youngster1GotPotionText::
	text "<PLAYER> got"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_Route1Youngster1AlsoGotPokeballsText::
	text "We also carry"
	line "# BALLs for"
	cont "catching #MON!"
	done

_Route1Youngster1NoRoomText::
	text "You have too much"
	line "stuff with you!"
	done

_Route1Youngster2Text::
	text "See those ledges"
	line "along the road?"

	para "It's a bit scary,"
	line "but you can jump"
	cont "from them."

	para "You can get back"
	line "to PALLET TOWN"
	cont "quicker that way."
	done

_Route1PokeballGiftIntroText::
	text "Hey there!"
	line "Are you a new"
	cont "trainer?"

	para "I'm a veteran,"
	line "but I remember"
	cont "what it was like"
	cont "to be new!"

	para "You'll need some"
	line "# BALLs in"
	cont "order to catch"
	cont "#MON."

	para "I have extras,"
	line "so here you go!"
	prompt

_Route1PokeballGiftGotText::
	text "<PLAYER> got 5"
	line "@"
	text_ram wStringBuffer
	text "s!@"
	text_end

_Route1PokeballGiftAfterText::
	text "A piece of"
	line "advice from"
	cont "veteran:"

	para "you can never"
	line "have too many"
	cont "# BALLs!"
	done

_Route1PokeballGiftNoRoomText::
	text "You don't have"
	line "room for these!"
	done

_Route1SignText::
	text "ROUTE 1"
	line "PALLET TOWN -"
	cont "VIRIDIAN CITY"
	done
