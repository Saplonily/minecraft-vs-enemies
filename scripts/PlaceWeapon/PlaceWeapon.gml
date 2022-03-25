/// @description PlaceWeapon(Weaponid,BoxID)
/// @param Weaponid
/// @param BoxID
function PlaceWeapon(argument0, argument1) {
	var Box = argument1;
	var Obj = CreateWeaponAxis(Box.AxisX,Box.AxisY,0,argument0);
	Obj.Grid = Box.TID;
	Box.weapon[0]=Obj.TID;



}
