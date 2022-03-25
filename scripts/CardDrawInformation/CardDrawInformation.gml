/// @description CardDrawInformation(x,y,Info | Tips:x&yIsTheCentreOfTheTop)
/// @param x
/// @param y
/// @param Info | Tips:x&yIsTheCentreOfTheTop
function CardDrawInformation(argument0, argument1, argument2) {
	draw_set_colour(c_yellow)
	draw_set_alpha(0.5);
	draw_rectangle
	(
	    argument0-string_width (string_hash_to_newline(argument2))/2,
	    argument1,
	    argument0+string_width (string_hash_to_newline(argument2))/2,
	    argument1+string_height (string_hash_to_newline(argument2)),
	    0
	)
	draw_set_colour (c_black)
	draw_set_halign (fa_middle)
	draw_set_alpha(0.8)
	draw_text (argument0,argument1,string_hash_to_newline(argument2))
	draw_set_halign (fa_left)
	draw_set_colour (c_black)
	draw_set_alpha (1)
	draw_rectangle
	(
	    argument0-1-string_width (string_hash_to_newline(argument2))/2,
	    argument1-1,
	    argument0+1+string_width (string_hash_to_newline(argument2))/2,
	    argument1+1+string_height (string_hash_to_newline(argument2)),
	    1
	)
	draw_set_colour(c_white)



}
