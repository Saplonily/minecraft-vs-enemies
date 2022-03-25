function CreateWeapon(argument0, argument1, argument2, argument3) {
	var o = LevelThingsCreate(argument0,argument1,argument2,GetWeaponObj(argument3));

	o.WeaponID = argument3;
	return o;



}
