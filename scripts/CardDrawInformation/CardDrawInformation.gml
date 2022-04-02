/// @description CardDrawInformation(x,y,Info | Tips:x&yIsTheCentreOfTheTop)
/// @param x
/// @param y
/// @param Info | Tips:x&yIsTheCentreOfTheTop
function CardDrawInformation(xp, yp, info) {
	var scale = 1;
	draw_set_colour(c_yellow)
	draw_set_alpha(0.3);
	draw_rectangle
	(
	    xp-string_width (string_hash_to_newline(info))/2*scale,
	    yp,
	    xp+string_width (string_hash_to_newline(info))/2*scale,
	    yp+string_height (string_hash_to_newline(info))*scale,
	    0
	)
	draw_set_colour (make_color_rgb(40,40,40))
	draw_set_halign (fa_middle)
	draw_set_alpha(0.8)
	draw_text_transformed(xp,yp,string_hash_to_newline(info),scale,scale,0)
	draw_set_halign(fa_left)
	draw_set_colour(c_black)
	draw_set_alpha(0.8)
	draw_rectangle
	(
	    xp-1-string_width (string_hash_to_newline(info))/2*scale,
	    yp-1,
	    xp+1+string_width (string_hash_to_newline(info))/2*scale,
	    yp+1+string_height (string_hash_to_newline(info))*scale,
	    1
	)
	draw_set_colour(c_white)
	draw_set_alpha(1);


}
