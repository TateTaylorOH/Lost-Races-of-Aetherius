Scriptname DES_StealRacial extends activemagiceffect  

; -----

Race[] Property DES_Race Auto
Spell[] Property DES_RacialSpell Auto
Spell[] Property DES_RacialEnum Auto
Spell Property DES_ExoticAncestry auto

; ----- 

Event OnEffectStart(Actor akTarget, Actor akCaster)

	Int i = DES_Race.Find(akTarget.GetRace())
	If i >= 0

		Int j = 0
		While j < DES_RacialEnum.Length
			akCaster.RemoveSpell(DES_RacialEnum[j])
			j += 1
		EndWhile
		if DES_Race
			akCaster.AddSpell(DES_RacialSpell[i], true)	
		else
			akCaster.AddSpell(DES_ExoticAncestry, true)
		endif
	EndIf

EndEvent

; -----
