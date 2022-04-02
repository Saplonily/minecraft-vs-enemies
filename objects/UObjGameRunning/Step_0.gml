/// @description 
//这里是窗口自适应的测试
if window_has_focus()
{
	var window_width = window_get_width();
	if window_width!=WindowWidth
	{
		view_set_hport(view_current,window_width)
		view_set_wport(view_current,window_width/8*6)
		//camera_set_view_size(view_camera,window_get_width(),window_get_height())
		surface_resize(application_surface,window_width,window_width/8*6)
		window_set_size(window_width,window_width/8*6)
	}
}
TimerSave -= 1;
if TimerSave<0
{
	TimerSave = sec1*60*5;
	DoSave();
}