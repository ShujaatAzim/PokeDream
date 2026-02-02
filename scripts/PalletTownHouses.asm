PalletTownHouses_Script:
  jp EnableAutoTextBoxDrawing

PalletTownHouses_TextPointers:
  
  def_text_pointers
  ; Pallet Small House 1
  dw_const PalletTownOldManText,					 TEXT_PALLETTOWN_OLD_MAN
  dw_const PalletTownOldWomanText,         TEXT_PALLETTOWN_OLD_WOMAN
  dw_const PalletTownPikachuText,          TEXT_PALLETTOWN_PIKACHU
  ; Pallet School House
  dw_const PalletSchoolBoyText,					 TEXT_PALLETSCHOOL_BOY
  dw_const PalletSchoolGirlText,         TEXT_PALLETSCHOOL_GIRL
	dw_const PalletSchoolCompBoyText,			 TEXT_PALLETSCHOOL_COMP_BOY
	dw_const PalletSchoolBookGirlText,		 TEXT_PALLETSCHOOL_BOOK_GIRL
  dw_const PalletSchoolTeacherText,      TEXT_PALLETSCHOOL_TEACHER

; Pallet Small House 1
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

; Palle School House
PalletSchoolBoyText:
	text_far _PalletSchoolBoyText
	text_end

PalletSchoolGirlText:
	text_far _PalletSchoolGirlText
	text_end

PalletSchoolCompBoyText:
	text_far _PalletSchoolCompBoyText
	text_end

PalletSchoolBookGirlText:
	text_far _PalletSchoolBookGirlText
	text_end

PalletSchoolTeacherText:
	text_far _PalletSchoolTeacherText
	text_end