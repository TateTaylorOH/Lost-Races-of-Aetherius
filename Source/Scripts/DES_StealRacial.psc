Scriptname DES_StealRacial extends activemagiceffect  

; -----

Race[] Property DES_Race Auto
Spell[] Property DES_RacialSpell Auto
Spell[] Property DES_RacialEnum Auto
Spell Property DES_ExoticAncestry auto
Race Property DES_AkaviriRace auto
Race Property DES_AkaviriRaceVampire auto

; ----- 

Event OnEffectStart(Actor akTarget, Actor akCaster)

	Int i = DES_Race.Find(akTarget.GetRace())
	If i >= 0
		Int j = 0
		While j < DES_RacialEnum.Length
			akCaster.RemoveSpell(DES_RacialEnum[j])
			akCaster.RemoveSpell(DES_ExoticAncestry)
			j += 1
		EndWhile
		if DES_Race
			akCaster.AddSpell(DES_RacialSpell[i], true)	
		endif
	elseif akTarget.GetRace() == DES_AkaviriRace || akTarget.GetRace() == DES_AkaviriRaceVampire
		debug.notification("You cannot consume power from your kin.")
	else
		Int j = 0
		While j < DES_RacialEnum.Length
			akCaster.RemoveSpell(DES_RacialEnum[j])
			akCaster.RemoveSpell(DES_ExoticAncestry)
			j += 1
		EndWhile
		akCaster.AddSpell(DES_ExoticAncestry, true)
	EndIf

EndEvent

; -----
