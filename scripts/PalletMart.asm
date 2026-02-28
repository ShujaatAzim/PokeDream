PalletMart_Script:
	jp EnableAutoTextBoxDrawing

PalletMart_TextPointers:
	def_text_pointers
	dw_const PalletMartClerkText,				TEXT_PALLETMART_CLERK

PalletMartClerkText::
	script_mart GREAT_BALL, HYPER_POTION, MAX_REPEL, ESCAPE_ROPE, FULL_HEAL, REVIVE