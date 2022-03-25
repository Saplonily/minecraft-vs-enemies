/// @description CreateWeaponAxis(real Ax_x,real Ax_y,real zpos,real WeaponId) : real InsID
/// @param real Ax_x
/// @param real Ax_y
/// @param real zpos
/// @param real WeaponId
function CreateWeaponAxis(Ax_x, Ax_y, zpos, weaponID) {
	var o = CreateWeapon(AxisXToX(Ax_x)+74/2,AxisYToY(Ax_y)+75,zpos,weaponID);
	return o;



}
