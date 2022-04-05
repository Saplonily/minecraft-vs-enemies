function DoPause()
{
	DebugOut("Pause the game.");
	lvl.Pause = true;
	tryFocusOn(CreateOptionForm(-10000));
	audio_pause_all();
	audio_play_sound(SndPause,0,0);
}
function DoResume()
{
	DebugOut("Resume the game.");
	lvl.Pause = false;
	with ObjForm DestoryForm(id);
	audio_resume_all();
}