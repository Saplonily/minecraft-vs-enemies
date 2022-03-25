/// @description MusicPlay(MusicId)
/// @param MusicId
function MusicPlay(MusicId) {
	if(global.music!=-1)
	{
	    audio_stop_sound(global.music);
	    audio_destroy_stream(global.music);
	}
	global.music = 
	audio_create_stream(GetMusicFile(MusicId));
	SetMusicVolume(global.musicVolume)
	audio_play_sound(global.music,SdgrSound,Loop);



}
