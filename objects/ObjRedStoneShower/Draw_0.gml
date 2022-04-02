event_inherited();

draw_self ()
if lvl.RedStone>=25
    //如果有红石的话就画出来
    draw_sprite_ext(SprRedStone,0,x+32,y+32,0.8,0.8,RedStoneRot,c_white,1)
	
draw_set_font(FTNormal);
draw_set_colour(make_color_rgb(240,240,240));
DrawToCenter(1);
gpu_set_tex_filter(1);
draw_text_transformed(floor(x+sprite_width/2)-10,floor(y+72),floor(lvl.RedStone),1,1,0) //画出器械能
gpu_set_tex_filter(0);
DrawToCenter(0);
draw_set_font(FTNormal);