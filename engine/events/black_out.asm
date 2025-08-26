ResetStatusAndHalveMoneyOnBlackout::
; Reset player status on blackout.
	xor a
	ld [wBattleResult], a
	ld [wWalkBikeSurfState], a
	ld [wIsInBattle], a
	ld [wMapPalOffset], a
	ld [wNPCMovementScriptFunctionNum], a
	ldh [hJoyHeld], a
	ld [wNPCMovementScriptPointerTableNum], a
	ld [wMiscFlags], a

	ldh [hMoney], a
	ldh [hMoney + 1], a
	ldh [hMoney + 2], a
	call HasEnoughMoney
	jr c, .lostmoney ; never happens

; Lose 10% of the player's money (money -= money/10).

	; fee = money / 10
	ld a, [wPlayerMoney]
	ldh [hMoney], a
	ld a, [wPlayerMoney + 1]
	ldh [hMoney + 1], a
	ld a, [wPlayerMoney + 2]
	ldh [hMoney + 2], a

	; divisor = 10 in BCD (0x10)
	xor a
	ldh [hDivideBCDDivisor], a
	ldh [hDivideBCDDivisor + 1], a
	ld a, $10
	ldh [hDivideBCDDivisor + 2], a
	predef DivideBCDPredef3
	; fee is now in hDivideBCDQuotient (same location as hDivideBCDDivisor)

	; reload original money (DivideBCD clobbers hMoney)
	ld a, [wPlayerMoney]
	ldh [hMoney], a
	ld a, [wPlayerMoney + 1]
	ldh [hMoney + 1], a
	ld a, [wPlayerMoney + 2]
	ldh [hMoney + 2], a

	; money = money - fee (inline BCD subtract, 3 bytes)
	ld de, hMoney + 2
	ld hl, hDivideBCDQuotient + 2
	ld c, 3
	and a                 ; clear carry for SBC chain
.sub10pct_loop
	ld a, [de]
	sbc [hl]
	daa
	ld [de], a
	dec de
	dec hl
	dec c
	jr nz, .sub10pct_loop


	; store result back
	ldh a, [hMoney]
	ld [wPlayerMoney], a
	ldh a, [hMoney + 1]
	ld [wPlayerMoney + 1], a
	ldh a, [hMoney + 2]
	ld [wPlayerMoney + 2], a

.lostmoney
	ld hl, wStatusFlags6
	set BIT_FLY_OR_DUNGEON_WARP, [hl]
	res BIT_FLY_WARP, [hl]
	set BIT_ESCAPE_WARP, [hl]
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	predef_jump HealParty
