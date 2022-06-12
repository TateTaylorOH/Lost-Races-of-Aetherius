Scriptname DES_SeaElfRaceController extends Quest  

GenericRaceController Property raceController Auto 

Formlist Property DES_HeadPartsSeaElf Auto

Formlist Property DES_HeadPartsSeaElfandVampire Auto

Event OnInit () 

	raceController.  NewArgonian = none 
	raceController.  NewArgonianVampire = none 

	raceController.  NewBreton = none 
	raceController.  NewBretonVampire = none 

	raceController.  NewDarkElf = none 
	raceController.  NewDarkElfVampire = none 

	raceController.  NewHighElf = none 
	raceController.  NewHighElfVampire = none 

	raceController.  NewImperial = none 
	raceController.  NewImperialVampire = none 

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