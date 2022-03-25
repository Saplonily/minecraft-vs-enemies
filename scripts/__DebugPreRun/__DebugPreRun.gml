function __DebugPreRun() {
	//注意这里的代码运行在RoomMain的初始化代码中执行
	
	//room_goto(RoomChapters)
	
	LevelGoto(0,2);
	
	
	//with ctc
	//{
	//	ViewMoving = true;
	//	ViewToyPos = 600+64;
	//}
	


}
//exception_unhandled_handler(function(ex)
//{
//	if(InDebug)
//	{
//		//显示信息，自定义窗口需要之后写.dll和.so来实现
//		//虽然我也不知道手机端显示窗口该怎么搞
//		var str="***游戏发生了不可避免的错误***"+chr(13);
//		str+="错误信息: "+ex.message+chr(13);
//		str+="游戏存档已被备份"+chr(13);
//		str+="请告知作者错误原因并有必要时还原备份"
//	    show_message(str);
//	}
//	else
//	{
//		var ms;
//		ms = ex.longMessage;
//		ms+=chr(13);
//		var _a = debug_get_callstack(16);
//        for (var i = 0; i < array_length_1d(_a)-1; ++i;)
//		{
//			ms+=(_a[i]);
//			ms+=chr(13)
//		}
//		show_message(ms);
//	}
//	DebugOut(ex.longMessage)
//	file_text_close(DebugFile);
//    return -1;
//});