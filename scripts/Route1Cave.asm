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
  ; Trainers
  dw_const Route1CaveHikerTrainerText,         TEXT_ROUTE_1_CAVE_HIKER_TRAINER
  ; Background / Misc
  dw_const Route1InCaveSignText,               TEXT_ROUTE1_IN_CAVE_SIGN


Route1CaveTrainerHeaders:
	def_trainers 2
Route1CaveTrainerHeader0:
	trainer EVENT_BEAT_ROUTE_1_CAVE_TRAINER_0, 3, Route1CaveHikerBattleText, Route1CaveHikerEndBattleText, Route1CaveHikerAfterBattleText
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

; Background / Misc
Route1InCaveSignText:
  text_far _Route1InCaveSignText
  text_end