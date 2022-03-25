var c = color;
if back
	DrawSelfFloored();
draw_set_halign(ha);
draw_set_valign(va);
draw_set_font(font)
gpu_set_texfilter(texfl);
draw_text_ext_transformed_color(x,y,string_hash_to_newline(text),3,1000,scale,scale,0,c,c,c,c,alpha);
gpu_set_texfilter(1);
draw_set_font(FTNormal)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
