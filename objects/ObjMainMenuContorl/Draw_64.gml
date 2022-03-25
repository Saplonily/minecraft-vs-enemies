/// @description
if(AdventureGoing==true)
{
    draw_set_alpha(0.4);
    draw_set_color(c_black);
    draw_rectangle(0,0,800,600,0);
    draw_set_color(c_white);
    draw_set_alpha(1);
}
if InDebug
{
	var f = global.FormFocus;
	var str0;
	if(f==-1)
	{
		str0 = "none"	
	}
	else if(f==-2)
	{
		str0 = "destroy left"	
	}
	else if(f==-3)
	{
		str0 = "decade all gui"
	}
	else
	{
		str0 = object_get_name(instance_exists(f)?f.object_index:"Null window");	
	}
	draw_text(0,50,str0)
}