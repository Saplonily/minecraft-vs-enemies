event_inherited();
//如果上一帧和下一帧的重力不同
if pBeheavy!=Beheavy
{
    //如果现在的重力不为0,但是前面一帧为0,则摁下去
    if pBeheavy==0&&Beheavy>0 
    {
        audio_play_sound(SndPlateInput,SdgrSound,NotLoop)
        image_index = 1
    }
    //如果上一帧的重力不为0,但是现在却为0了,则起来
    if pBeheavy!=0&&Beheavy==0 
    {
        audio_play_sound(SndPlateOutput,SdgrSound,NotLoop)
        image_index = 0
    }
}

