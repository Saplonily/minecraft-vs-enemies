image_index = 0;
if formFocus
{
	if(MouseOnMe())
	{
	    image_index = 1;
	    if(mouse_check_button(mb_left))
	    {
	        if buttontype==3 image_index = 2;
	    }
	    if(mouse_check_button_released(mb_left))
	    {
	        event_user(0);
	    }
	}
}