onself = false;
if(MouseOnMe()&&IsBaseGUIAble())
{
	onself = true;
	if(mouse_check_button_pressed(mb_left))
	{
		event_user(0);
	}
	ctc.MouseType = cr_handpoint;
}

