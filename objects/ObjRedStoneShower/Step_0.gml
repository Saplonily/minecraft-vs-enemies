event_inherited();
if lvl.Pause exit;
if lvl.RedStone<25
{
    RedStoneRot = 0;
}
else
{
    RedStoneRot+=2*tick1;
}

if MouseOnMe()&&lvl.GUICanTap
{
    lvl.MouseType = cr_handpoint;
}


