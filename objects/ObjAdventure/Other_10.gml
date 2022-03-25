event_inherited();
DebugOut("AdventureMode!");
with ctc
{
	ctc.AdventureGoing = true;
	ctc.SpriteBehindDoor = SprMainMenuSceneNight;
	ctc.SpriteBehindGlass = SprMainMenuSceneGlassNight;
}
audio_play_sound(SndLose,SdgrSound,NotLoop);
MusicStopAndDestroy();
tryFocusOn(-3);
image_index = 1;
onself = false;