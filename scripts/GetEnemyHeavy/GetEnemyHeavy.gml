/// @description GetEnemyHeavy(EnemyId)
/// @param EnemyId
function GetEnemyHeavy(argument0) {
	var Map = ds_list_find_value(global.EnemysRc,argument0);
	return ds_map_find_value(Map,"heavy");



}
