Scriptname DES_StealRacial extends activemagiceffect  

; -----

Race[] Property DES_Race Auto
Spell[] Property DES_RacialSpell Auto
Spell[] Property DES_RacialEnum Auto
Spell Property DES_ExoticAncestry auto
Race Property DES_AkaviriRace auto
Race Property DES_AkaviriRaceVampire auto

Keyword Property ActorTypeDwarf auto
Keyword Property ActorTypeAyleid auto
Keyword Property ActorTypeSeaElf auto
Keyword Property ActorTypeSnowElf auto

; ----- 

Event OnEffectStart(Actor akTarget, Actor akCaster)

	Spell DES_RaceDeepElf = Game.GetFormFromFile(0x85F, "DwarfRace.esp") As Spell
	Spell DES_RaceWildElf = Game.GetFormFromFile(0x824, "AyleidRace.esp") As Spell
	Spell DES_RaceSeaElf = Game.GetFormFromFile(0x851, "SeaElfRace.esp") As Spell
	Spell DES_RaceSnowElf = Game.GetFormFromFile(0x850, "SnowElfRace.esp") As Spell

	akCaster.RemoveSpell(DES_RaceDeepElf)
	akCaster.RemoveSpell(DES_RaceWildElf)
	akCaster.RemoveSpell(DES_RaceSeaElf)
	akCaster.RemoveSpell(DES_RaceSnowElf)
	akCaster.RemoveSpell(DES_ExoticAncestry)
	Int i = DES_Race.Find(akTarget.GetRace())
	If i >= 0
		Int j = 0
		While j < DES_RacialEnum.Length
			akCaster.RemoveSpell(DES_RacialEnum[j])
			j += 1
		EndWhile
		if DES_Race
			akCaster.AddSpell(DES_RacialSpell[i], true)	
		endif
	elseif akTarget.HasKeyword(ActorTypeDwarf) 
		akCaster.AddSpell(DES_RaceDeepElf, true)	
	elseif akTarget.HasKeyword(ActorTypeAyleid)
		akCaster.AddSpell(DES_RaceWildElf, true)	
	elseif akTarget.HasKeyword(ActorTypeSeaElf)
		akCaster.AddSpell(DES_RaceSeaElf, true)	
	elseif akTarget.HasKeyword(ActorTypeSnowElf)
		akCaster.AddSpell(DES_RaceSnowElf, true)	
	elseif akTarget.GetRace() == DES_AkaviriRace || akTarget.GetRace() == DES_AkaviriRaceVampire
		debug.notification("You cannot consume power from your kin.")
	else
		Int j = 0
		While j < DES_RacialEnum.Length
			akCaster.RemoveSpell(DES_RacialEnum[j])
			akCaster.RemoveSpell(DES_RaceDeepElf)
			akCaster.RemoveSpell(DES_RaceWildElf)
			akCaster.RemoveSpell(DES_RaceSeaElf)
			akCaster.RemoveSpell(DES_RaceSnowElf)
			akCaster.RemoveSpell(DES_ExoticAncestry)
			j += 1
		EndWhile
		akCaster.AddSpell(DES_ExoticAncestry, true)
	EndIf

EndEvent

; -----
