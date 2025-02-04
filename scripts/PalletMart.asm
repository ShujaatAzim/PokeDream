PalletMart_Script:
	jp EnableAutoTextBoxDrawing

PalletMart_TextPointers:
	def_text_pointers
	dw_const PalletMartClerkText,						TEXT_PALLETMART_CLERK
	dw_const PalletMartWomanText,						TEXT_PALLETMART_WOMAN
	dw_const PalletMartManText,							TEXT_PALLETMART_MAN

PalletMartWomanText:
	text_far _PalletMartWomanText
	text_end

PalletMartManText:
	text_far _PalletMartManText
	text_end

PalletMartClerkText::
	script_mart POKE_BALL, POTION, REPEL, ESCAPE_ROPE, ANTIDOTE