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
	dw_const Route1Youngster1Text, 			 TEXT_ROUTE1_YOUNGSTER1
	dw_const Route1Youngster2Text, 			 TEXT_ROUTE1_YOUNGSTER2
	dw_const Route1VeteranText, 			 	 TEXT_ROUTE1_VETERAN
	dw_const Route1FisherText,		 			 TEXT_ROUTE1_FISHER
	dw_const Route1YoungsterTrainerText, TEXT_ROUTE1_YOUNGSTER_TRAINER
	dw_const Route1SignText,       			 TEXT_ROUTE1_SIGN

Route1TrainerHeaders:
	def_trainers 5
Route1TrainerHeader0:
	trainer EVENT_BEAT_ROUTE_1_TRAINER_0, 4, Route1YoungsterBattleText, Route1YoungsterEndBattleText, Route1YoungsterAfterBattleText
	db -1 ; end

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

Route1SignText:
	text_far _Route1SignText
	text_end
