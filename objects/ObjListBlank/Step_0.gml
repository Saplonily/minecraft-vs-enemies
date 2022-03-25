/// @description 
//鼠标选中的行
if (MouseInMe())
{
	sel = GetMouseSel();
	if(mouse_check_button_pressed(mb_left)&&sel!=-1)
	{
		io_clear();
		select = sel;
	}
	ctc.MouseType = cr_handpoint;
}
else
{
	sel=-1;	
}
if(mouse_wheel_down())
{
	locaSpeed += (2+(locaSpeed<0)*4)*tick1;
}
if(mouse_wheel_up())
{
	locaSpeed -= (2+(locaSpeed>0)*4)*tick1;
}
location += locaSpeed;
locaSpeed *= power(0.95,tick1);
location = max(0,location);
var lm = fontheight*ds_list_size(listfordraw)-lheight+fontheight;
if (location > lm)
{
	location = max(lm,0);
}
if(!surface_exists(draw_sur))
{
	draw_sur = surface_create(lwidth,lheight);
	DebugOut("--> ObjBlankDark Surface Recreated")
}
var sh = surface_get_height(draw_sur);
if(sh<ds_list_size(listfordraw)*fontheight)
{
	surface_free(draw_sur);
	draw_sur = surface_create(lwidth,(ds_list_size(listfordraw)+1)*fontheight)
}