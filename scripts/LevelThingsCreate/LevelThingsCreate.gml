/// @description LevelThingsCreate(xpos,ypos,zpos,ObjInd)
/// @param xpos
/// @param ypos
/// @param zpos
/// @param ObjInd
function LevelThingsCreate(xpos, ypos, zpos, ObjInd) {

	var idd = instance_create_depth(xpos,ypos,0,ObjInd);
	idd.zpos = zpos;
	return idd;



}
