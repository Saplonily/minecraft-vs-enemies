/// @description format(String,arg1,arg2.....)
/// @param String
/// @param arg1
/// @param arg2.....
function format() {
	var text = argument[0];
	var escape_open_brace  = "{|";// How to escape open curly brace
	var escape_close_brace = "|}";// How to escape close curly brace

	//show_debug_message(text)

	if string_pos("{}", text) 
	{

	for (var i = 0; i < argument_count - 1; ++i)
	{
	text = string_replace(text, "{}", argument[i + 1]);
	}
	}

	else if string_pos("{0}", text)
	{
	for (var i = 0; i < argument_count - 1; ++i)
	{
	text = string_replace(text, "{" + string(i) + "}", string(argument[i + 1]));
	}
	}

	else if string_pos("{!", text) 
	{
	var variable;
	var count = string_count("{!", text);

	for (var i = 0; i < count; ++i)
	{
	variable = string_copy(text, string_pos("{!", text) + 2, string_pos("!}", text) - string_pos("{!", text) - 2);

	text = string_replace(text, "{!" + variable + "!}", variable_instance_get(id, variable));
	}
	}

	text = string_replace_all(text, escape_open_brace, "{");
	text = string_replace_all(text, escape_close_brace, "}");

	return (text);



}
