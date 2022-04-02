event_inherited();

draw_self();
draw_set_font(FTBig);
draw_set_color(c_black);
DrawToCenter(true);
gpu_set_tex_filter(1);
draw_text(x,y-sprite_height/5,string_hash_to_newline(Text));
gpu_set_tex_filter(0);
DrawToCenter(false);
draw_set_font(FTNormal);
draw_set_color(c_white)

