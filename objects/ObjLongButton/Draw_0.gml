draw_self();
if(txt!="")
{
    DrawToCenter(true);
    draw_set_color(c_white)
    draw_text(x+sprite_width/2,y+sprite_height/2,string_hash_to_newline(txt));
    DrawToCenter(false);
}

