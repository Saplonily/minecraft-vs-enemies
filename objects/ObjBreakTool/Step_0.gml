event_inherited();

if !Locked&&MouseOnMe()&&lvl.HandItem==0&&lvl.GUICanTap
{
    lvl.MouseType = cr_handpoint;
    if(mouse_check_button_pressed(mb_left))
    {
        event_user(0);
    }
}
if lvl.HandItem==id
{
    lvl.MouseType = cr_none;
}

