/// @description GetWeaponHeavy(WeaponId)
/// @param WeaponId
function GetWeaponHeavy(argument0) {
	var Map = ds_list_find_value(global.WeaponsRc,argument0);
	return ds_map_find_value(Map,"weight")



}
