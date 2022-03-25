/// @description GetEnemyPoints(LevelEnemyID)
/// @param LevelEnemyID
function GetEnemyPoints(argument0) {
	return ds_list_find_value(ListZombie[?"PointsList"],argument0);



}
