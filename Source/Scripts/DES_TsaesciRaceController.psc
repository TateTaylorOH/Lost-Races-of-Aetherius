Scriptname DES_TsaesciRaceController extends Quest  

GenericRaceController Property raceController Auto 

Formlist Property DES_HeadPartsTsaesci Auto
Formlist Property DES_HeadPartsTsaesciVampire Auto

Race Property DES_TsaesciRace auto
Race Property DES_TsaesciRaceVampire auto

Event OnInit () 

	raceController.  NewImperial = DES_HeadPartsTsaesci
	raceController.  NewImperialVampire =  DES_HeadPartsTsaesciVampire

	raceController.  proxyRaces () 

	FormList ExhaustionResistRacesMajor = Game.GetFormFromFile(0x000008A6, "ccQDRSSE001-SurvivalMode.esl") As FormList

    if(ExhaustionResistRacesMajor )
        ExhaustionResistRacesMajor.AddForm(DES_TsaesciRace)
        ExhaustionResistRacesMajor.AddForm(DES_TsaesciRaceVampire)
    endif

EndEvent
