event_inherited();
if lvl.Pause exit;
if !lvl.GUICanTap exit;
if lvl.RedStone>=25
{
    with instance_create_depth(x+32,y+32+135,0,ObjRedstone)
    {
        //设置深度
        DepthSet = 0.5;
        //设置行数
        Row = 1;
        zpos = 135;
        //x坐标偏移速度
        xspeed = random(3);
        zspeed = 0;
    }
    audio_play_sound
    (
        choose(SndFrameRemove1,SndFrameRemove2,SndFrameRemove3,SndFrameRemove4),
        SdgrSound,
        NotLoop
    )
    lvl.RedStone -= 25;
    RedStoneRot = 0;
}
else
{
    MessageBox(T("Tips->RedstoneLess"));
    audio_play_sound(SndNotAllow,SdgrSound,NotLoop);
}

