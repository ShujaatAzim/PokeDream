PalletRanchGate_Script:
	jp EnableAutoTextBoxDrawing


PalletRanchGate_TextPointers:
	def_text_pointers
  dw_const PalletRanchGateSuperNerdText,			 TEXT_PALLETRANCHGATE_SUPER_NERD
	dw_const PalletRanchGateGrampsText,					 TEXT_PALLETRANCHGATE_GRAMPS
	dw_const PalletRanchGateReceptionistText,    TEXT_PALLETRANCHGATE_RECEPTIONIST

PalletRanchGateSuperNerdText:
	text_far _PalletRanchGateSuperNerdText
	text_end

PalletRanchGateGrampsText:
	text_far _PalletRanchGateGrampsText
	text_end

PalletRanchGateReceptionistText:
	text_far _PalletRanchGateReceptionistText
	text_end