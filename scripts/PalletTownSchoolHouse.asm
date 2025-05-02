PalletTownSchoolHouse_Script:
	jp EnableAutoTextBoxDrawing

PalletTownSchoolHouse_TextPointers:
	def_text_pointers
	dw_const PalletSchoolBoyText,					 TEXT_PALLETSCHOOL_BOY
  dw_const PalletSchoolGirlText,         TEXT_PALLETSCHOOL_GIRL
	dw_const PalletSchoolCompBoyText,			 TEXT_PALLETSCHOOL_COMP_BOY
	dw_const PalletSchoolBookGirlText,		 TEXT_PALLETSCHOOL_BOOK_GIRL
  dw_const PalletSchoolTeacherText,      TEXT_PALLETSCHOOL_TEACHER

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