/// @description 

gpu_set_texfilter(0);
event_inherited();
DrawToCenter(true);
draw_set_color(color);
draw_text(x+sprite_width/2,y+sprite_height/2,string(floor(100*percent))+"%");
DrawToCenter(false);
draw_set_color(c_white);
gpu_set_texfilter(1);