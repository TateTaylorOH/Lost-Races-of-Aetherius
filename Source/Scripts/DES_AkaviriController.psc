Scriptname DES_AkaviriController extends Quest  

GenericRaceController Property raceController Auto 

Formlist Property DES_HeadPartsAkaviri Auto
Formlist Property DES_HeadPartsAkaviriVampire Auto

Formlist Property DES_HeadPartsAyleid Auto
Formlist Property DES_HeadPartsAyleidVampire Auto

Formlist Property DES_HeadPartsDeepElf Auto
Formlist Property DES_HeadPartsDeepElfVampire Auto

Formlist Property DES_HeadPartsSeaElf Auto
Formlist Property DES_HeadPartsSeaElfVampire Auto

Formlist Property DES_HeadPartsSnowElf Auto
Formlist Property DES_HeadPartsSnowElfVampire Auto

Race Property DES_AkaviriRace auto
Race Property DES_AkaviriRaceVampire auto

Event OnInit () 

	raceController.  NewImperial = DES_HeadPartsAkaviri
	raceController.  NewImperialVampire = DES_HeadPartsAkaviriVampire  

	raceController.  proxyRaces () 

	FormList FoodPoisoningImmuneRaces = Game.GetFormFromFile(0x000009AA, "ccQDRSSE001-SurvivalMode.esl") As FormList

    if(FoodPoisoningImmuneRaces )
        FoodPoisoningImmuneRaces.AddForm(DES_AkaviriRace)
        FoodPoisoningImmuneRaces.AddForm(DES_AkaviriRaceVampire)
    endif

EndEvent
