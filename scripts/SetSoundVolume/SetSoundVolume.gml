/// @function         SetSoundVolume(vol)       
/// @description             vol
function SetSoundVolume(vol){
	var i =0;
	while audio_exists(i)
	{
		audio_sound_gain(i,vol,-1);	
		i++;
	}
	global.musicVolumeAudio = vol;
}