event_inherited();

draw_self();
draw_set_font(FTBig);
draw_set_color(c_black);
DrawToCenter(true);
draw_text(x,y-sprite_height/5,string_hash_to_newline(Text));
DrawToCenter(false);
draw_set_font(FTNormal);
draw_set_color(c_white)

