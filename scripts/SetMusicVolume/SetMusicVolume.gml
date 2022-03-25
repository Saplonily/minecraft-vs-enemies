/// @function         SetMusicVolume(vol)       
/// @description             vol
function SetMusicVolume(vol){
	global.musicVolume = vol;
	audio_sound_gain(global.music,vol,0);
}