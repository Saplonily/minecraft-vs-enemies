/// @description DebugOutCodeLocation(str)
/// @param str
function DebugOutCodeLocation(str)
{
	show_debug_message(format("Text -> {}",str));
	show_debug_message(format("---ins : {}",object_get_name(id.object_index)));
	    var _a = debug_get_callstack(16);
    for (var i = 0; i < array_length_1d(_a)-1; ++i;)
    {
		show_debug_message(format("call stack{} : {}",i,_a[i]));
    }
}