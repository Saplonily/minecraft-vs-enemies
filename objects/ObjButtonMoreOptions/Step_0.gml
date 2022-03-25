/// @description 
image_index = 0;
if formFocus
{
	if(MouseOnMe())
	{
	    image_index = 1;
	    if(mouse_check_button_released(mb_left))
	    {
	        event_user(0);
	    }
	}
	if keyboard_check_pressed(vk_escape)
		event_user(0);
}