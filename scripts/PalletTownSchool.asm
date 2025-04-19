PalletTownSchool_Script:
	jp EnableAutoTextBoxDrawing

PalletTownSchool_TextPointers:
	def_text_pointers
	dw_const PalletSchoolBoyText,					 TEXT_PALLETSCHOOL_BOY
  dw_const PalletSchoolGirlText,         TEXT_PALLETSCHOOL_GIRL
  dw_const PalletSchoolTeacherText,      TEXT_PALLETSCHOOL_TEACHER

PalletSchoolBoyText:
	text_far _PalletSchoolBoyText
	text_end

PalletSchoolGirlText:
	text_far _PalletSchoolGirlText
	text_end

PalletSchoolTeacherText:
	text_far _PalletSchoolTeacherText
	text_end