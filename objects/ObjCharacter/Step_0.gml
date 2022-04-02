if lvl.Pause exit;
if(GMU_Anim_IsExists(id,"ArrivingPercent"))
{
    if(!Disappearing)
        Arrving = true;
}
else
{
    Arrving = false;
    if Disappearing
        GMU_Anim_New(id,"ArrivingPercent",GMU_ANIM.EXPO,GMU_ANIM.OUT,1,-1,25);
}
if(Disappearing&&ArrivingPercent==0)
    instance_destroy();
RefreshLoc();
if(Arrving==false&&OnTalk==true&&BlankAni==0&&!GMU_Anim_IsExists(id,"BlankAni"))
{
    GMU_Anim_New(id,"BlankAni",GMU_ANIM.EXPO,GMU_ANIM.OUT,0,1,6)
    audio_play_sound(SndTalk,SdgrSound,NotLoop);
}

