Scriptname DES_LostRacesController extends Quest  

GenericRaceController Property raceController Auto 

Formlist Property DES_HeadPartsAkaviri Auto
Formlist Property DES_HeadPartsAkaviriandVampire Auto

Formlist Property DES_HeadPartsAyleid Auto
Formlist Property DES_HeadPartsAyleidandVampire Auto

Formlist Property DES_HeadPartsDeepElf Auto
Formlist Property DES_HeadPartsDeepElfandVampire Auto

Formlist Property DES_HeadPartsSeaElf Auto
Formlist Property DES_HeadPartsSeaElfandVampire Auto

Formlist Property DES_HeadPartsSnowElf Auto
Formlist Property DES_HeadPartsSnowElfandVampire Auto

Event OnInit () 

	raceController.  NewArgonian = none 
	raceController.  NewArgonianVampire = none 

	raceController.  NewBreton = none 
	raceController.  NewBretonVampire = none 

	raceController.  NewDarkElf =  DES_HeadPartsSnowElf
	raceController.  NewDarkElfVampire =  DES_HeadPartsSnowElfandVampire

	raceController.  NewHighElf = DES_HeadPartsAyleid
	raceController.  NewHighElfVampire = DES_HeadPartsAyleidandVampire

	raceController.  NewImperial = DES_HeadPartsAkaviri
	raceController.  NewImperialVampire = DES_HeadPartsAkaviriandVampire  

	raceController.  NewKhajiit = none 
	raceController.  NewKhajiitVampire = none 

	raceController.  NewNord = none 
	raceController.  NewNordVampire = none 

	raceController.  NewOrc = none 
	raceController.  NewOrcVampire = none 

	raceController.  NewRedguard = none 
	raceController.  NewRedguardVampire = none 

	raceController.  NewWoodElf = DES_HeadPartsSeaElf
	raceController.  NewWoodElfVampire = DES_HeadPartsSeaElfandVampire

	raceController.  proxyRaces () 

EndEvent
