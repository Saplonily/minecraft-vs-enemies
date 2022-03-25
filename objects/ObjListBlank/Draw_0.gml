/// @description 
if back DrawSelfFloored();

var l = listfordraw;
var ls = ds_list_size(l);

draw_set_font(font);
surface_set_target(draw_sur);
draw_clear_alpha(c_white,0);

//最终选中
draw_set_alpha(0.9);
draw_set_color(c_green);
draw_rectangle(floor(1),floor(fontheight*select+1),floor(lwidth-2*xborder-2),floor(fontheight*(select+1)+1),0);
draw_set_color(c_white);
draw_set_alpha(1);

for(var i = 0;i<ls;i++)
{
	draw_text(0,floor(fontheight*i),l[|i]);
}
draw_set_font(FTNormal);
//sel不为-1,绘制选中框
if ssel!=-1
{
	draw_rectangle(floor(1),floor(fontheight*ssel+1),floor(lwidth-2*xborder-2),floor(fontheight*(ssel+1)+1),1);
}
surface_reset_target();
shader_set(ShdSpecialWhite);
draw_surface_part(draw_sur,0,floor(location),floor(lwidth-xborder),floor(lheight-yborder),floor(x+xborder),floor(y+yborder));
shader_reset();