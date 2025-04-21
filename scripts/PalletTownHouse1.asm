PalletTownHouse1_Script:
  jp EnableAutoTextBoxDrawing

PalletTownHouse1_TextPointers:
  def_text_pointers
  dw_const PalletTownOldManText,					 TEXT_PALLETTOWN_OLD_MAN
  dw_const PalletTownOldWomanText,         TEXT_PALLETTOWN_OLD_WOMAN
  dw_const PalletTownPikachuText,          TEXT_PALLETTOWN_PIKACHU

PalletTownOldManText:
	text_far _PalletTownOldManText
	text_end

PalletTownOldWomanText:
	text_far _PalletTownOldWomanText
	text_end

PalletTownPikachuText:
	text_far _PalletTownPikachuText
  text_asm
	ld a, PIKACHU
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd