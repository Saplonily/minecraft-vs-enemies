function MusicStopAndDestroy() {
	if global.music!=-1
	{
	    audio_stop_sound(global.music);
	    audio_destroy_stream(global.music);
	}
	global.music = -1;



}
