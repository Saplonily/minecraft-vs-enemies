/// @function                
/// @description             
function DoMusicReg()
{
	global.MusicRc = ds_list_create();

	RegMusic("CrazyDave.ogg");
	RegMusic("ChooseYourCards.ogg");
	RegMusic("Grasswalk.ogg");
	RegMusic("ZenGarden.ogg");
}
function RegMusic(FName)
{
	ds_list_add(global.MusicRc,FName);
}
#macro MusicCrazyDave 0
#macro MusicChooseYourSeed 1
#macro MusicGrasswalk 2
#macro MusicZenGarden 3