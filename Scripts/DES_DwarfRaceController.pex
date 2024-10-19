Scriptname DES_DwarfRaceController extends Quest  

GenericRaceController Property raceController Auto 

Formlist Property DES_HeadPartsDwarf Auto
Formlist Property DES_HeadPartsDwarfVampire Auto

Race Property DES_DwarfRace auto
Race Property DES_DwarfRaceVampire auto

Event OnInit () 

	raceController.  NewWoodElf = DES_HeadPartsDwarf
	raceController.  NewWoodElfVampire =  DES_HeadPartsDwarfVampire

	raceController.  proxyRaces () 

	FormList ExhaustionResistRacesMajor = Game.GetFormFromFile(0x000008A6, "ccQDRSSE001-SurvivalMode.esl") As FormList

    if(ExhaustionResistRacesMajor )
        ExhaustionResistRacesMajor.AddForm(DES_DwarfRace)
        ExhaustionResistRacesMajor.AddForm(DES_DwarfRaceVampire)
    endif

EndEvent
