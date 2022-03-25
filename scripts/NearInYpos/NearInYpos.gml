/// @function          NearInYpos(ID1,ID2)      
function NearInYpos(ID1,ID2){
	var spr1,spr2;
	spr1=ID1.sprite_index;
	spr2=ID2.sprite_index;
	var of1x,of1y,of2x,of2y;
	of1x=sprite_get_xoffset(spr1);
	of1y=sprite_get_yoffset(spr1);
	of2x=sprite_get_xoffset(spr2);
	of2y=sprite_get_yoffset(spr2);
	
	of1x = ID1.xpos-of1x+ID1.sprite_width/2;
	of2x = ID2.xpos-of2x+ID2.sprite_width/2;
	of1y = ID1.ypos-of1y+ID1.sprite_height;
	of2y = ID2.ypos-of2y+ID2.sprite_height;
	var ObjectThickness = 30;
	
	if(abs(of2y-of1y)<=ObjectThickness)
		return true;
	else
		return false;
}