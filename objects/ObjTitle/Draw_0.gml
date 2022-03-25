draw_set_color(c_red)
draw_set_halign(fa_middle)
draw_set_valign(fa_middle)
draw_set_font (FTBlock)
if timer <= -130
    draw_set_alpha ((timer+140)/10)

if (timer>=0) 
    draw_text_transformed(x+20,y,string_hash_to_newline(txt),1+timer/5+0.3,1+timer/5+0.3,0)
else
    draw_text_transformed(x+20,y,string_hash_to_newline(txt),1.3,1.3,0)

draw_set_alpha (1)
draw_set_font(FTNormal)
draw_set_halign (fa_left)
draw_set_valign (fa_top)
draw_set_color (c_white)

