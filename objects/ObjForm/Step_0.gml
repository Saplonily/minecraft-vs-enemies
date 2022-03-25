focus = global.FormFocus==id;
if(pfocus!=focus)
{
	for(var i = 0;i<ds_list_size(include);i++)
	{
		include[|i].formFocus = focus;
	}
	if global.DoDebugOutFormsInfo
	{
		DebugOut(format("Form {} focus state change",object_get_name(object_index)))
		DebugOut(format("change to {}",focus?"true":"false"))
	}
}
if (focus)
{
	if moveable
	{
		if mouse_check_button(mb_left)&&moving
		{
		    var xad = mouse_x-ms_x;
		    var yad = mouse_y-ms_y;
			var xs = 0,ys = 0;
			var xp = x,yp = y;
			x += xad;
			y += yad;
			var xborB = GetViewX()+GetViewW()-sprite_width;
			var xborA = GetViewX();
			var yborB = GetViewY()+GetViewH()-sprite_height;
			var yborA = GetViewY();
			//x超过右边
			if x>xborB
				xs = 1;
			//x超过左边
			if x<xborA
				xs = -1;
			//y超过下边
			if y>yborB
				ys = 1;
			//y超过上边
			if y<yborA
				ys = -1;
			if(xs>0)
			{
				xad = xborB - x;
				x += xad;
			}
			if(xs<0)
			{
				xad = xborA - x;
				x += xad;
			}
			if(ys>0)
			{
				yad = yborB - y;
				y += yad;
			}
			if(ys<0)
			{
				yad = yborA - y;
				y += yad;
			}
				
		    for(var i = 0;i<ds_list_size(include);i++)
		    {
		        var ins = include[|i];
		        ins.x += x-xp;
		        ins.y += y-yp;
		    }
		    ms_x = mouse_x;
		    ms_y = mouse_y;
			
		}
		if mouse_check_button_released(mb_left)
		    moving = false;
		if(MouseOnMe())
		{
			if mouse_check_button_pressed(mb_left)
			{
			    ms_x = mouse_x;
			    ms_y = mouse_y;
			    moving = 1;
			}
		}
	}
}