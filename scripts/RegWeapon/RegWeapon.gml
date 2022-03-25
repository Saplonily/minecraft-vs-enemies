/// @description RegWeapon(cost,cd,weight,ObjIndex)
/// @param cost
/// @param cd
/// @param weight
/// @param ObjIndex
function RegWeapon(argument0, argument1, argument2, argument3) {
	var Map;
	Map = ds_map_create();
	Map[?"cost"] = argument0;
	Map[?"maxcd"] = argument1;
	Map[?"weight"] = argument2;
	Map[?"Objindex"] = argument3;
	ds_list_add(global.WeaponsRc,Map);



}
