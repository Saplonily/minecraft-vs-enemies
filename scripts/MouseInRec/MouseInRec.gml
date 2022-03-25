/// @description MouseInRec(recleft,rectop,recwidth,recheight)
function MouseInRec(recleft,rectop,recwidth,recheight) {
	var x1 = recleft;
	var x2 = recleft+recwidth;
	var y1 = rectop;
	var y2 = rectop+recheight;
	return (mouse_x>=x1&&mouse_x<x2)&&(mouse_y>=y1&&mouse_y<y2);

}
