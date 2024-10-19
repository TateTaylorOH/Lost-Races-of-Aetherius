Scriptname DES_AyleidRaceController extends Quest  

GenericRaceController Property raceController Auto 

Formlist Property DES_HeadPartsAyleid Auto
Formlist Property DES_HeadPartsAyleidVampire Auto

Race Property DES_AyleidRace auto
Race Property DES_AyleidRaceVampire auto

Event OnInit () 

	raceController.  NewHighElf = DES_HeadPartsAyleid
	raceController.  NewHighElfVampire =  DES_HeadPartsAyleidVampire

	raceController.  proxyRaces () 

	FormList ExhaustionResistRacesMajor = Game.GetFormFromFile(0x000008A6, "ccQDRSSE001-SurvivalMode.esl") As FormList

    if(ExhaustionResistRacesMajor )
        ExhaustionResistRacesMajor.AddForm(DES_AyleidRace)
        ExhaustionResistRacesMajor.AddForm(DES_AyleidRaceVampire)
    endif

EndEvent
