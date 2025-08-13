Route1Cave_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route1CaveTrainerHeaders
	ld de, Route1Cave_ScriptPointers
	ld a, [wRoute1CaveCurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute1CaveCurScript], a
	ret

Route1Cave_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE_1_CAVE_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE_1_CAVE_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE_1_CAVE_END_BATTLE


Route1Cave_TextPointers:
  def_text_pointers
  ; NPCs
  dw_const Route1CaveScientistText,            TEXT_ROUTE_1_CAVE_SCIENTIST
  ; Items
  dw_const PickUpItemText,                     TEXT_ROUTE_1_CAVE_HOUSEKEYS
  ; Trainers
  dw_const Route1CaveHikerTrainerText,         TEXT_ROUTE_1_CAVE_HIKER_TRAINER
  dw_const Route1CaveLassTrainerText,          TEXT_ROUTE_1_CAVE_LASS_TRAINER
  dw_const Route1CaveJrTrainerMText,           TEXT_ROUTE_1_CAVE_JR_TRAINER_M
  ; Background / Misc
  dw_const Route1InCaveSignText,               TEXT_ROUTE1_IN_CAVE_SIGN
  dw_const Route1InCaveSign2Text,              TEXT_ROUTE1_IN_CAVE_SIGN2


Route1CaveTrainerHeaders:
	def_trainers 3
Route1CaveTrainerHeader0:
	trainer EVENT_BEAT_ROUTE_1_CAVE_TRAINER_0, 3, Route1CaveHikerBattleText, Route1CaveHikerEndBattleText, Route1CaveHikerAfterBattleText
Route1CaveTrainerHeader1:
  trainer EVENT_BEAT_ROUTE_1_CAVE_TRAINER_1, 2, Route1CaveLassBattleText, Route1CaveLassEndBattleText, Route1CaveLassAfterBattleText
Route1CaveTrainerHeader2:
  trainer EVENT_BEAT_ROUTE_1_CAVE_TRAINER_2, 3, Route1CaveJrTrainerMBattleText, Route1CaveJrTrainerMEndBattleText, Route1CaveJrTrainerMAfterBattleText
  db -1 ; end

; NPCs
Route1CaveScientistText:
  text_far _Route1CaveScientistText
  text_end

; Trainers
Route1CaveHikerTrainerText:
	text_asm
	ld hl, Route1CaveTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route1CaveHikerBattleText:
  text_far _Route1CaveHikerBattleText
  text_end

Route1CaveHikerEndBattleText:
  text_far _Route1CaveHikerEndBattleText
  text_end

Route1CaveHikerAfterBattleText:
  text_far _Route1CaveHikerAfterBattleText
  text_end

Route1CaveLassTrainerText:
  text_asm
  ld hl, Route1CaveTrainerHeader1
  call TalkToTrainer
  jp TextScriptEnd

Route1CaveLassBattleText:
  text_far _Route1CaveLassBattleText
  text_end

Route1CaveLassEndBattleText:
  text_far _Route1CaveLassEndBattleText
  text_end

Route1CaveLassAfterBattleText:
  text_far _Route1CaveLassAfterBattleText
  text_end

Route1CaveJrTrainerMText:
  text_asm
  ld hl, Route1CaveTrainerHeader2
  call TalkToTrainer
  jp TextScriptEnd

Route1CaveJrTrainerMBattleText:
  text_far _Route1CaveJrTrainerMBattleText
  text_end

Route1CaveJrTrainerMEndBattleText:
  text_far _Route1CaveJrTrainerMEndBattleText
  text_end

Route1CaveJrTrainerMAfterBattleText:
  text_far _Route1CaveJrTrainerMAfterBattleText
  text_end

; Background / Misc
Route1InCaveSignText:
  text_far _Route1InCaveSignText
  text_end

Route1InCaveSign2Text:
  text_far _Route1InCaveSign2Text
  text_end