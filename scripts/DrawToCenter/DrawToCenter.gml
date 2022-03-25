function DrawToCenter(argument0) {
	if !argument0
	{
	    draw_set_valign(fa_top);
	    draw_set_halign(fa_left);
	    return 0;
	}
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);



}
