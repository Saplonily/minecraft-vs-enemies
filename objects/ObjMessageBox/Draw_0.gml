event_inherited();
draw_self();

draw_set_valign(fa_middle);
draw_set_halign(fa_middle);
draw_set_font(FTBlock);
var c = c_yellow;
var sc = Scale;
if(Scale==2)
{
    draw_set_font(FTBlockBig);
    sc = 1;
}
draw_text_transformed_colour(x,y,string_hash_to_newline(Text),sc,sc,0,c,c,c,c,1);
draw_set_font(FTNormal);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

