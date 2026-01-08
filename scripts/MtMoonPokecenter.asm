MtMoonPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

MtMoonPokecenter_TextPointers:
	def_text_pointers
	dw_const MtMoonPokecenterNurseText,            TEXT_MTMOONPOKECENTER_NURSE
	dw_const MtMoonPokecenterYoungsterText,        TEXT_MTMOONPOKECENTER_YOUNGSTER
	dw_const MtMoonPokecenterGentlemanText,        TEXT_MTMOONPOKECENTER_GENTLEMAN
	dw_const MtMoonPokecenterMagikarpSalesmanText, TEXT_MTMOONPOKECENTER_MAGIKARP_SALESMAN
	dw_const SeymourClefairyResearchText,		 			 TEXT_MTMOONPOKECENTER_CLEFAIRY_REWARD
	dw_const MtMoonPokecenterClipboardText,        TEXT_MTMOONPOKECENTER_CLIPBOARD
	dw_const MtMoonPokecenterLinkReceptionistText, TEXT_MTMOONPOKECENTER_LINK_RECEPTIONIST

MtMoonPokecenterNurseText:
	script_pokecenter_nurse

MtMoonPokecenterYoungsterText:
	text_far _MtMoonPokecenterYoungsterText
	text_end

MtMoonPokecenterGentlemanText:
	text_far _MtMoonPokecenterGentlemanText
	text_end

MtMoonPokecenterMagikarpSalesmanText:
	text_asm
	CheckEvent EVENT_BOUGHT_MAGIKARP, 1
	jp c, .alreadyBoughtMagikarp
	ld hl, .IGotADealText
	call PrintText
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .choseNo
	ldh [hMoney], a
	ldh [hMoney + 2], a
	ld a, $5
	ldh [hMoney + 1], a
	call HasEnoughMoney
	jr nc, .enoughMoney
	ld hl, .NoMoneyText
	jr .printText
.enoughMoney
	lb bc, MAGIKARP, 5
	call GivePokemon
	jr nc, .done
	xor a
	ld [wPriceTemp], a
	ld [wPriceTemp + 2], a
	ld a, $5
	ld [wPriceTemp + 1], a
	ld hl, wPriceTemp + 2
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	SetEvent EVENT_BOUGHT_MAGIKARP
	jr .done
.choseNo
	ld hl, .NoText
	jr .printText
.alreadyBoughtMagikarp
	ld hl, .NoRefundsText
.printText
	call PrintText
.done
	jp TextScriptEnd

.IGotADealText
	text_far _MtMoonPokecenterMagikarpSalesmanIGotADealText
	text_end

.NoText
	text_far _MtMoonPokecenterMagikarpSalesmanNoText
	text_end

.NoMoneyText
	text_far _MtMoonPokecenterMagikarpSalesmanNoMoneyText
	text_end

.NoRefundsText
	text_far _MtMoonPokecenterMagikarpSalesmanNoRefundsText
	text_end

SeymourClefairyResearchText:
	text_asm
	; If reward already claimed, always show the final repeat text
	CheckEvent EVENT_GOT_CLEFAIRY_SEEN_REWARD
	jr nz, .afterRewardForever

	; First interaction intro (only once)
	CheckEvent EVENT_MET_SEYMOUR
	jr nz, .notFirstTime
	SetEvent EVENT_MET_SEYMOUR
	ld hl, .IntroText
	call PrintText
	jp TextScriptEnd

.notFirstTime
	; Seen check: Clefairy
	ld a, CLEFAIRY
	ld [wPokedexNum], a
	predef IndexToPokedex

	ld a, [wPokedexNum]
	dec a
	ld c, a                 ; C = 0-based bit index
	ld b, 2                 ; B = read
	ld hl, wPokedexSeen     ; HL = base of seen flags
	ld de, 0                ; DE unused
	predef FlagActionPredef

	ld a, c
	and a
	jr z, .notSeenYet

	; Seen Clefairy: praise + reward
	ld hl, .SeenClefairyText
	call PrintText

	call WaitForTextScrollButtonPress

	lb bc, RARE_CANDY, 1
	call GiveItem
	jr nc, .bagFull

	SetEvent EVENT_GOT_CLEFAIRY_SEEN_REWARD
	ld hl, .GotRewardText
	call PrintText

	call WaitForTextScrollButtonPress

	ld hl, .AfterRewardImmediateText
	call PrintText
	jp TextScriptEnd

.bagFull
	ld hl, .NoRoomText
	call PrintText
	jp TextScriptEnd

.notSeenYet
	ld hl, .ReminderText
	call PrintText
	jp TextScriptEnd

.afterRewardForever
	ld hl, .AfterRewardForeverText
	call PrintText
	jp TextScriptEnd


.IntroText:
	text_far _SeymourIntroText
	text_end

.ReminderText:
	text_far _SeymourReminderText
	text_end

.SeenClefairyText:
	text_far _SeymourSeenClefairyText
	text_end

.GotRewardText:
	text_far _SeymourGotRewardText
	sound_get_item_1
	text_end

.AfterRewardImmediateText:
	text_far _SeymourAfterRewardImmediateText
	text_end

.AfterRewardForeverText:
	text_far _SeymourAfterRewardForeverText
	text_end

.NoRoomText:
	text_far _SeymourNoRoomText
	text_end


MtMoonPokecenterClipboardText:
	text_far _MtMoonPokecenterClipboardText
	text_end

MtMoonPokecenterLinkReceptionistText:
	script_cable_club_receptionist
