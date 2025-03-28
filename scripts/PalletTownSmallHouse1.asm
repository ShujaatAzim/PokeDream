PalletTownSmallHouse1_Script:
  jp EnableAutoTextBoxDrawing

PalletTownSmallHouse1_TextPointers:
  def_text_pointers
  dw_const PalletTownOldManText,					 TEXT_PALLETTOWN_OLD_MAN
  dw_const PalletTownOldWomanText,         TEXT_PALLETTOWN_OLD_WOMAN

PalletTownOldManText:
	text_far _PalletTownOldManText
	text_end

PalletTownOldWomanText:
	text_far _PalletTownOldWomanText
	text_end