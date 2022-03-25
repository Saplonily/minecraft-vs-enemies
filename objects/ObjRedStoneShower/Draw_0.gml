event_inherited();

draw_self ()
if lvl.RedStone>=25
    //如果有红石的话就画出来
    draw_sprite_ext(SprRedStone,0,x+32,y+32,0.8,0.8,RedStoneRot,c_white,1) 
draw_set_colour(c_red);
draw_text_transformed(x,y+64,string_hash_to_newline(floor(lvl.RedStone)),1,1,0) //画出器械能

