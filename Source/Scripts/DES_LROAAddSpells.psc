Scriptname DES_LROAAddSpells extends Quest  

Actor Property PlayerRef auto
Race Property DES_SeaElfRace auto
Race Property DES_SnowElfRace auto
Race Property DES_WildElfRace auto
Spell Property Sparks auto
Spell Property Frostbite auto
Spell Property Oakflesh auto
Quest Property MQ101 auto

Event OnInit()
  if(SKSE.GetVersion() > 0)
    ;debug.messagebox("yeskse")
    RegisterForMenu("RaceSex Menu")
  else
	;debug.messagebox("no skse")
    RegisterForSingleUpdate(1.0)
  endIf
endEvent

Event OnUpdate()
  if(MQ101.IsStageDone(80) || MQ101.GetStage() >= 80.0 || MQ101.IsCompleted() || MQ101.IsStopped())
    doSpells()
  else
    RegisterForSingleUpdate(1.0)
  endIf
endEvent

Event OnMenuClose(String MenuName)
  Utility.Wait(0.25)
  doSpells()
endEvent

Function dospells()
	Race PlayerRace = PlayerRef.GetRace()
	IF PlayerRace == DES_SeaElfRace
		PlayerRef.AddSpell(Sparks, false)
	ELSEIF PlayerRace == DES_SnowElfRace
		PlayerRef.AddSpell(Frostbite, false)
	ELSEIF PlayerRace == DES_WildElfRace
		PlayerRef.AddSpell(Oakflesh, false)
	ENDIF
	stop()
EndFunction