/// @description CreateGuideArrow(PointX,PointY,direction(degree))
/// @param PointX
/// @param PointY
/// @param direction(degree
function CreateGuideArrow(argument0, argument1, argument2) {
	var xo,yo;
	xo = argument0-25*cos(degtorad(argument2));
	yo = argument1+25*sin(degtorad(argument2));
	var idd = instance_create_depth(xo,yo,GUIDepth,ObjGuideArrow);
	with idd
	{
	    Dir = argument2;
	}
	return idd;



}
