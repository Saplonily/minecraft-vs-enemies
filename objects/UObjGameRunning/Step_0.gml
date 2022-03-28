/// @description 
//这里是窗口自适应的测试
var window_width = window_get_width();
if window_width!=WindowWidth
{
	view_set_hport(view_current,window_width)
	view_set_wport(view_current,window_width/8*6)
	//camera_set_view_size(view_camera,window_get_width(),window_get_height())
	surface_resize(application_surface,window_width,window_width/8*6)
	window_set_size(window_width,window_width/8*6)
}