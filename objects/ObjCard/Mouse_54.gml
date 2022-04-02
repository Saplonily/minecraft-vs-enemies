event_inherited();
if ForShow exit;
if lvl.Pause exit;
if lvl.HandItem==id
{
    lvl.HandItem=0;
    audio_play_sound(choose(SndTap,SndTap2),SdgrSound,NotLoop);
}

