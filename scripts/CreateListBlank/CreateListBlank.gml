/// @function     CreateListBlank(xx,yy,dep,back,font,sprInd,list)           
/// @description             
function CreateListBlank(xx,yy,dep,back,font,sprInd,list,_select){
	var o = instance_create_depth(xx,yy,dep,ObjListBlank);
	with o
	{
		listfordraw = list;
		o.back = back;
		o.font = font;
		sprite_index = sprInd;
		lwidth = sprite_get_width(sprite_index);

		xborder = 4;
		yborder = 4;
		lheight = sprite_get_height(sprite_index);
		
		//鼠标放在
		sel = -1;
		psel = -1;
		//最终选择
		select = _select;
		
		fontheight = font_get_size(font)+4;
		//location,0默认,用于绘制列表,表示列表滚动位置
		location = 0;
		locaSpeed = 0;
		
		ssel = -1;
		
		GetMouseSel = function()
		{
			var mlx = mouse_x-x-xborder;
			var mly = mouse_y-y-yborder+location;
			var mlxe = mlx+lwidth-xborder;
			
			var sel;
			sel = floor(mly/fontheight);
			if (sel>=ds_list_size(listfordraw)||sel<0)
			{
				sel = -1;
			}
			return sel;
		}
		MouseInMe = function()
		{
			var yt = mouse_y<=y+yborder+fontheight*ds_list_size(listfordraw)-location;
			var xIn = (mouse_x>=x+xborder)&&(mouse_x<=x-xborder+lwidth);
			var yIn = (mouse_y>=y+yborder)&&
			(yt&&(mouse_y<=y-yborder+lheight));
			var In = xIn&&yIn;
			return In;
		}
		draw_sur = surface_create(lwidth,100);
	}
	return o;
	
}