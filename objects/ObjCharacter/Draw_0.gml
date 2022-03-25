event_inherited();
draw_self();
if(OnTalk && !Arrving && !Disappearing)
{
    var BlankOx = x+sprite_width;
    var BlankOy = y;
	var BlankOw = sprite_width;
	var BlankOh = sprite_height;
    draw_sprite_ext(SprPlotBlank,0,BlankOx,BlankOy,BlankAni,BlankAni,0,c_white,1);
    draw_set_color(c_black);
    //draw text
	var alpha = (BlankAni==1)?(BlankAni):(BlankAni/2);
	draw_set_alpha(alpha);
    draw_text(x+sprite_width+20-sprite_get_xoffset(SprPlotBlank)-(1-BlankAni)*BlankOw/5,
    y+10-sprite_get_yoffset(SprPlotBlank)+BlankOh*(1-BlankAni)/5,
    string_hash_to_newline(Text)
    )
	draw_set_alpha(1);
    draw_set_color(c_white)
    
}

