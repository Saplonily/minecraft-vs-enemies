event_inherited();
if lvl.Pause exit;
if(MouseOnMe()&&!Picked&&lvl.GUICanTap)
{
    lvl.MouseType = cr_handpoint;
    if(mouse_check_button_pressed(mb_left))
    {
        Picked = true;
        event_user(0);
        io_clear();
    }
}

