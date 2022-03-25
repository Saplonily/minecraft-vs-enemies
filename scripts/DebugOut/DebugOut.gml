/// @description DebugOut(DebugMessage)
/// @param DebugMessage
function DebugOut(argument0) {

	var str = "[{0}:{1} {2} Info] {3}";
	str = format(str,current_hour,current_minute,current_second,argument0);
	show_debug_message (str);
	file_text_write_string(DebugFile,str);
	file_text_writeln(DebugFile);


}
