/// @description GetWeaponName(WeaponId)
/// @param WeaponId
function GetWeaponTips(argument0) {
	var WeaponInd = GetWeaponObj(argument0);
	var WeaponName = object_get_name(WeaponInd);
	var IdInJson = format("Weapon->{0}Tips",WeaponName);
	var Result = global.TextsRc[?IdInJson];
	return Result;



}
