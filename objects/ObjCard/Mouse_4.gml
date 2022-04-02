event_inherited();
if ForShow exit;
if lvl.Pause exit;
var notallowsound = 0;
if lvl.HandItem==null&&!Locked&&lvl.GUICanTap
{
    
    if lvl.RedStone>=Price
    {   
        if CD==0
        {
            lvl.HandItem = id;
            audio_play_sound(SndCardPick,SdgrSound,NotLoop);
        }
        else
        {
            MessageBox(T("Tips->NeedCooldown"));
            notallowsound = 1;
        }
    }
    else
    {
        MessageBox(T("Tips->RedstoneLess"));
        notallowsound = 1;
    }
}

if notallowsound
{
    audio_play_sound(SndNotAllow,SdgrSound,NotLoop);
}

