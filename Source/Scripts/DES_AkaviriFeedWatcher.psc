Scriptname DES_AkaviriFeedWatcher Extends ReferenceAlias

Spell Property DES_AkaviriStealRacialSpell auto
Actor Property PlayerRef auto
Race Property DES_AkaviriRaceVampire auto
Spell Property DES_RaceVampireAkaviriArgonian auto
Spell Property DES_RaceVampireAkaviriBreton auto
Spell Property DES_RaceVampireAkaviriDarkElf auto
Spell Property DES_RaceVampireAkaviriHighElf auto
Spell Property DES_RaceVampireAkaviriImperial auto
Spell Property DES_RaceVampireAkaviriKhajiit auto
Spell Property DES_RaceVampireAkaviriNord auto
Spell Property DES_RaceVampireAkaviriOrc auto
Spell Property DES_RaceVampireAkaviriRedguard auto
Spell Property DES_RaceVampireAkaviriWoodElf auto
Spell Property DES_ExoticAncestry Auto

Event OnVampireFeed(Actor akTarget)
	IF PlayerRef.GetRace() == DES_AkaviriRaceVampire
		DES_AkaviriStealRacialSpell.Cast(PlayerRef, akTarget)
	ENDIF
EndEvent

Event OnVampirismStateChanged(bool abIsVampire)

	Spell DES_RaceDeepElf = Game.GetFormFromFile(0x85F, "DwarfRace.esp") As Spell
	Spell DES_RaceWildElf = Game.GetFormFromFile(0x824, "AyleidRace.esp") As Spell
	Spell DES_RaceSeaElf = Game.GetFormFromFile(0x851, "SeaElfRace.esp") As Spell
	Spell DES_RaceSnowElf = Game.GetFormFromFile(0x850, "SnowElfRace.esp") As Spell

	if !(abIsVampire)
		PlayerRef.RemoveSpell(DES_RaceVampireAkaviriArgonian)
		PlayerRef.RemoveSpell(DES_RaceVampireAkaviriBreton)
		PlayerRef.RemoveSpell(DES_RaceVampireAkaviriDarkElf)
		PlayerRef.RemoveSpell(DES_RaceVampireAkaviriHighElf)
		PlayerRef.RemoveSpell(DES_RaceVampireAkaviriImperial)
		PlayerRef.RemoveSpell(DES_RaceVampireAkaviriKhajiit)
		PlayerRef.RemoveSpell(DES_RaceVampireAkaviriNord)
		PlayerRef.RemoveSpell(DES_RaceVampireAkaviriOrc)
		PlayerRef.RemoveSpell(DES_RaceVampireAkaviriRedguard)
		PlayerRef.RemoveSpell(DES_RaceVampireAkaviriWoodElf)
		PlayerRef.RemoveSpell(DES_RaceDeepElf)
		PlayerRef.RemoveSpell(DES_RaceWildElf)
		PlayerRef.RemoveSpell(DES_RaceSeaElf)
		PlayerRef.RemoveSpell(DES_RaceSnowElf)
		PlayerRef.RemoveSpell(DES_ExoticAncestry)
	endIf
endEvent