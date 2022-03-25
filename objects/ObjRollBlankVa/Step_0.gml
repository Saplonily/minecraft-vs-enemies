event_inherited();
if formFocus
{
	if(MouseOnMe())
	{
		if(mouse_check_button_pressed(mb_left))
		{
			moving = 1;
			event_user(0);
		}
	}
	if(moving&&mouse_check_button(mb_left))
	{
		percent = (mouse_x-x)/(sprite_width);
		percent = clamp(percent,0,1);
	}
	if(mouse_check_button_released(mb_left))
	{
		moving = false;
		event_user(1);
	}
}