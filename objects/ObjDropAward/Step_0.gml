event_inherited();
if Float PickedTimer += tick1;
if(PickedTimer>=30)
{
    Waiting = true;
    //这个函数保证当x=30时值为75, -20*sin(2)上下平移纠正值
    zpos = sin(PickedTimer/15)*20 + 75 + -20*sin(2);
}
if(lvl.Leaving&&!AudioPlayed)
{
    audio_play_sound(SndLightFill,SdgrSound,NotLoop);
    AudioPlayed = 1;
}
if AudioPlayed>0&&(!instance_exists(ObjPlotControl))
	AudioPlayedTimer+=1
//30开始亮光
//100换房间
if(AudioPlayedTimer>=30&&AudioPlayed==1)
{
    GMU_Anim_New(id,"Light",GMU_ANIM.SINE,GMU_ANIM.IN,0,1,65);
	AudioPlayed = 2;
}
if(AudioPlayedTimer==100&&AudioPlayed==2)
{
    lvl.Left = true;
	AudioPlayed = 3;
}

