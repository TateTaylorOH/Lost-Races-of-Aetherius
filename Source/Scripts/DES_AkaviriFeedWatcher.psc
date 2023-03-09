Scriptname DES_AkaviriFeedWatcher Extends ReferenceAlias

Spell Property DES_AkaviriStealRacialSpell auto
Actor Property PlayerRef auto
Race Property DES_AkaviriRaceVampire auto
Spell Property RaceArgonian auto
Spell Property RaceBreton auto
Spell Property RaceDarkElf auto
Spell Property RaceHighElf auto
Spell Property RaceImperial auto
Spell Property RaceKhajiit auto
Spell Property RaceNord auto
Spell Property RaceOrc auto
Spell Property RaceRedguard auto
Spell Property RaceWoodElf auto
Spell Property DES_RaceDeepElf Auto
Spell Property DES_RaceWildElf Auto
Spell Property DES_RaceSeaElf Auto
Spell Property DES_RaceSnowElf Auto
Spell Property DES_ExoticAncestry Auto


Event OnVampireFeed(Actor akTarget)
	IF PlayerRef.GetRace() == DES_AkaviriRaceVampire
		DES_AkaviriStealRacialSpell.Cast(PlayerRef, akTarget)
	ENDIF
EndEvent

Event OnVampirismStateChanged(bool abIsVampire)
	if !(abIsVampire)
		PlayerRef.RemoveSpell(RaceArgonian)
		PlayerRef.RemoveSpell(RaceBreton)
		PlayerRef.RemoveSpell(RaceDarkElf)
		PlayerRef.RemoveSpell(RaceHighElf)
		PlayerRef.RemoveSpell(RaceImperial)
		PlayerRef.RemoveSpell(RaceKhajiit)
		PlayerRef.RemoveSpell(RaceNord)
		PlayerRef.RemoveSpell(RaceOrc)
		PlayerRef.RemoveSpell(RaceRedguard)
		PlayerRef.RemoveSpell(RaceWoodElf)
		PlayerRef.RemoveSpell(DES_RaceDeepElf)
		PlayerRef.RemoveSpell(DES_RaceWildElf)
		PlayerRef.RemoveSpell(DES_RaceSeaElf)
		PlayerRef.RemoveSpell(DES_RaceSnowElf)
		PlayerRef.RemoveSpell(DES_ExoticAncestry)
	endIf
endEvent