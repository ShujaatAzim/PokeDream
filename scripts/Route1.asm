Route1_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route1TrainerHeaders
	ld de, Route1_ScriptPointers
	ld a, [wRoute1CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute1CurScript], a
	ret

Route1_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE1_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE1_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE1_END_BATTLE

Route1_TextPointers:
	def_text_pointers
	; NPCs
	dw_const Route1Youngster1Text, 			 	TEXT_ROUTE1_YOUNGSTER1
	dw_const Route1Youngster2Text, 			 	TEXT_ROUTE1_YOUNGSTER2
	dw_const Route1VeteranText, 			 	 	TEXT_ROUTE1_VETERAN
	dw_const Route1FisherText,		 			 	TEXT_ROUTE1_FISHER
	dw_const Route1Girl1Text,						 	TEXT_ROUTE1_GIRL1
	dw_const Route1Girl2Text,							TEXT_ROUTE1_GIRL2
	; Items
	dw_const PickUpItemText,							TEXT_ROUTE1_POTION
	; Trainers
	dw_const Route1YoungsterTrainerText,  TEXT_ROUTE1_YOUNGSTER_TRAINER
	dw_const Route1BugCatcherTrainerText, TEXT_ROUTE1_BUG_CATCHER_TRAINER
	dw_const Route1LassTrainerText,				TEXT_ROUTE1_LASS_TRAINER
	; Background/Misc
	dw_const Route1SignText,       			 	TEXT_ROUTE1_SIGN
	dw_const Route1CaveSignText,					TEXT_ROUTE1_CAVE_SIGN
	dw_const Route1TrainerTips,						TEXT_ROUTE1_TRAINER_TIPS

Route1TrainerHeaders:
	def_trainers 8
Route1TrainerHeader0:
	trainer EVENT_BEAT_ROUTE_1_TRAINER_0, 4, Route1YoungsterBattleText, Route1YoungsterEndBattleText, Route1YoungsterAfterBattleText
Route1TrainerHeader1:
	trainer EVENT_BEAT_ROUTE_1_TRAINER_1, 3, Route1BugCatcherBattleText, Route1BugCatcherEndBattleText, Route1BugCatcherAfterBattleText
Route1TrainerHeader2:
	trainer EVENT_BEAT_ROUTE_1_TRAINER_2, 3, Route1LassBattleText, Route1LassEndBattleText, Route1LassAfterBattleText
	db -1 ; end

; NPCs
Route1Youngster1Text:
	text_asm
	CheckAndSetEvent EVENT_GOT_POTION_SAMPLE
	jr nz, .got_item
	ld hl, .MartSampleText
	call PrintText
	lb bc, POTION, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .GotPotionText
	jr .done
.bag_full
	ld hl, .NoRoomText
	jr .done
.got_item
	ld hl, .AlsoGotPokeballsText
.done
	call PrintText
	jp TextScriptEnd

.MartSampleText:
	text_far _Route1Youngster1MartSampleText
	text_end

.GotPotionText:
	text_far _Route1Youngster1GotPotionText
	sound_get_item_1
	text_end

.AlsoGotPokeballsText:
	text_far _Route1Youngster1AlsoGotPokeballsText
	text_end

.NoRoomText:
	text_far _Route1Youngster1NoRoomText
	text_end

Route1Youngster2Text:
	text_far _Route1Youngster2Text
	text_end

Route1VeteranText:
	text_asm
	CheckEvent EVENT_GOT_POKEDEX
	jr z, .no_dex_yet

	CheckEvent EVENT_GOT_POKEBALL_GIFT
	jr nz, .got_item

	ld hl, .GiftGotDexText
	call PrintText

	lb bc, POKE_BALL, 5
	call GiveItem
	jr nc, .bag_full
	SetEvent EVENT_GOT_POKEBALL_GIFT

	ld hl, .GotPokeballsText
	jr .done

.bag_full
	ld hl, .NoRoomText
	jr .done

.got_item
	ld hl, .AfterText
	jr .done

.no_dex_yet
	ld hl, .NoDexText
	jr .done

.done
	call PrintText
	jp TextScriptEnd

.NoDexText:
	text_far _Route1PokeballGiftNoDexText
	text_end

.GiftGotDexText:
	text_far _Route1PokeballGiftGotDexText
	text_end

.GotPokeballsText:
	text_far _Route1PokeballGiftGivenText
	sound_get_item_1
	text_end

.AfterText:
	text_far _Route1PokeballGiftAfterText
	text_end

.NoRoomText:
	text_far _Route1PokeballGiftNoRoomText
	text_end

Route1FisherText:
	text_far _Route1FisherText
	text_end

Route1Girl1Text:
	text_far _Route1Girl1Text
	text_end

Route1Girl2Text:
	text_far _Route1Girl2Text
	text_end

; Trainers
Route1YoungsterTrainerText:
	text_asm
	ld hl, Route1TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route1YoungsterBattleText:
	text_far _Route1YoungsterBattleText
	text_end

Route1YoungsterEndBattleText:
	text_far _Route1YoungsterEndBattleText
	text_end

Route1YoungsterAfterBattleText:
	text_far _Route1YoungsterAfterBattleText
	text_end

Route1BugCatcherTrainerText:
	text_asm
	ld hl, Route1TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route1BugCatcherBattleText:
	text_far _Route1BugCatcherBattleText
	text_end

Route1BugCatcherEndBattleText:
	text_far _Route1BugCatcherEndBattleText
	text_end

Route1BugCatcherAfterBattleText:
	text_far _Route1BugCatcherAfterBattleText
	text_end

Route1LassTrainerText:
	text_asm
	ld hl, Route1TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

Route1LassBattleText:
	text_far _Route1LassBattleText
	text_end

Route1LassEndBattleText:
	text_far _Route1LassEndBattleText
	text_end

Route1LassAfterBattleText:
	text_far _Route1LassAfterBattleText
	text_end

; Background/Misc.
Route1SignText:
	text_far _Route1SignText
	text_end

Route1TrainerTips:
	text_far _Route1TrainerTips
	text_end

Route1CaveSignText:
	text_far _Route1CaveSignText
	text_end