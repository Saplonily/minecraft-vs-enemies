/// @function                
/// @description             
function Camera(cam,xpos_,ypos_)constructor{
	camera = cam;
	setx(xpos_);
	sety(ypos_);
	static setx = function(_xpos)
	{
		camera_set_view_pos(camera,_xpos,camera_get_view_y(camera));
	}
	static sety = function(_ypos)
	{
		camera_set_view_pos(camera,camera_get_view_x(camera),_ypos);
	}
	static xpos = function()
	{
		return camera_get_view_x(camera);
	}
	static ypos = function()
	{
		return camera_get_view_y(camera);
	}
	static width = function()
	{
		return camera_get_view_width(camera);
	}
	static height = function()
	{
		return camera_get_view_height(camera);
	}
}
#region 全局
function GetViewX()
{
	return camera_get_view_x(view_camera[0]);
}
function GetViewY()
{
	return camera_get_view_y(view_camera[0]);
}
function GetViewW()
{
	return camera_get_view_width(view_camera[0]);
}
function GetViewH()
{
	return camera_get_view_height(view_camera[0]);
}
#endregion