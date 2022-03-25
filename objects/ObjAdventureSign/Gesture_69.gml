/// @description 
tm+=1;
if(tm==10)
{
	if(os_type==os_windows)
	{
		if(clipboard_has_text()&&clipboard_get_text()="TVZFZGVidWdNb2RlU3Ry")
		{
			show_message_async("DebugModeOpened");
			InDebug = true;	
		}
	}
	with ObjTextboxWhatsYourName
	{
		tte_ext_input_set_text("testname");	
	}
}
if(tm>100)
{
	show_message_async("DebugModeOpened");
	InDebug = true;	
}