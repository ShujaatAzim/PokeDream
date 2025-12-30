ViridianPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

ViridianPokecenter_TextPointers:
	def_text_pointers
	dw_const ViridianPokecenterNurseText,            TEXT_VIRIDIANPOKECENTER_NURSE
	dw_const ViridianPokecenterGentlemanText,        TEXT_VIRIDIANPOKECENTER_GENTLEMAN
	dw_const ViridianPokecenterCooltrainerMText,     TEXT_VIRIDIANPOKECENTER_COOLTRAINER_M
	dw_const ViridianPokecenterLinkReceptionistText, TEXT_VIRIDIANPOKECENTER_LINK_RECEPTIONIST
	dw_const ViridianPokecenterOfficerJennyText,		 TEXT_VIRIDIANPOKECENTER_OFFICER_JENNY
	dw_const ViridianPokecenterChanseyText,					 TEXT_VIRIDIANPOKECENTER_CHANSEY
	dw_const ViridianPokecenterNurseJoyText,				 TEXT_VIRIDIANPOKECENTER_NURSE_JOY

ViridianPokecenterNurseText:
	script_pokecenter_nurse

ViridianPokecenterGentlemanText:
	text_far _ViridianPokecenterGentlemanText
	text_end

ViridianPokecenterCooltrainerMText:
	text_far _ViridianPokecenterCooltrainerMText
	text_end

ViridianPokecenterLinkReceptionistText:
	script_cable_club_receptionist

ViridianPokecenterOfficerJennyText:
	text_far _ViridianPokecenterOfficerJennyText
	text_end

ViridianPokecenterNurseJoyText:
	text_far _ViridianPokecenterNurseJoyText
	text_end
	
ViridianPokecenterChanseyText:
	text_far _ViridianPokecenterChanseyText
  text_asm
	ld a, CHANSEY
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd