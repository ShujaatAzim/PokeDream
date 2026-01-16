; NPCs
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

_Route1PokeballGiftNoDexText::
	text "Hey there!"
	line "Are you a new"
	cont "trainer?"

	para "I'm a veteran,"
	line "but I remember"
	cont "what it was like"
	cont "to be new!"

	para "Come back and"
	line "speak to me in"
	cont "a little while."

	para "I'll give you"
	line "something useful!"
	done

_Route1PokeballGiftGotDexText::
	text "Hello again!"
	line ""

	para "You're already"
	line "looking stronger!"

	para "You're ready to"
	line "start catching"
	cont "#MON!"

	para "But you'll need"
	line "some # BALLs"
	cont "to do that."

	para "I have plenty, so"
	line "here you go!"
	prompt

_Route1PokeballGiftGivenText::
	text "<PLAYER> got 5"
	line "@"
	text_ram wStringBuffer
	text "s!@"
	text_end

_Route1PokeballGiftAfterText::
	text "A piece of advice"
	line "from a veteran:"

	para "You can never"
	line "have too many"
	cont "# BALLs!"
	done

_Route1PokeballGiftNoRoomText::
	text "You don't have"
	line "room for these!"
	done

_Route1FisherText::
	text "I love fishing!"
	line ""

	para "It's a great way"
	line "to find water-"
	cont "type #MON!"
	done

_Route1Girl1Text::
	text "I just caught a"
	line "PIDGEY! It's a"
	cont "great beginner"
	cont "#MON for new"
	cont "trainers!"
	done

_Route1Girl2Text::
	text "People drop items"
	line "on the ground all"
	cont "the time."
	
	para "Sometimes you can"
	line "see them, but"
	cont "other times they"
	cont "are hidden."

	para "Be sure to look"
	line "everywhere!"
	done

; Trainers
_Route1YoungsterBattleText::
	text "I'm just starting"
	line "too! You'll be my" 
	cont "first battle!"
	done

_Route1YoungsterEndBattleText::
	text "Aw, my"
	line "first battle and"
	cont "my first loss..."
	prompt

_Route1YoungsterAfterBattleText::
	text "I'll train hard!"
	line "I won't lose next"
	cont "time we meet!"
	done

_Route1BugCatcherBattleText::
	text "I love bug"
	line "#MON!"

	para "But I can't find"
	line "any around here."
	done

_Route1BugCatcherEndBattleText::
	text "Oh"
	line "no! My poor bugs!"
	prompt

_Route1BugCatcherAfterBattleText::
	text "I hear VIRIDIAN"
	line "FOREST is full of"
	cont "bug #MON!"

	para "I can't wait to"
	line "get there!"
	done

_Route1LassBattleText::
	text "I have the cutest"
	line "#MON in the"
	cont "world!"

	para "But cute doesn't"
	line "mean weak!"
	cont "Wanna see?"
	done

_Route1LassEndBattleText::
	text "My cuties!"
	line "You're mean!"
	prompt

_Route1LassAfterBattleText::
	text "Trainers should"
	line "raise a balanced"
	cont "and varied team."

	para "Type and cuteness"
	line "only go so far!"
	done

; Background/Misc
_Route1SignText::
	text "ROUTE 1"
	line "PALLET TOWN -"
	cont "VIRIDIAN CITY"
	done

_Route1TrainerTips::
	text "TRAINER TIPS"

	para "Use POTIONs in"
	line "battle to restore"
	cont "your #MON's HP."

	para "Especially useful"
	line "in trainer"
	cont "battles!"
	done

_Route1CaveSignText::
	text "Beware! Wild"
	line "#MON live in"
	cont "caves, and can"
	cont "attack anytime!"
	done