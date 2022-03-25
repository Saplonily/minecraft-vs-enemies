/// @description lvlItem(HandItem Id);
/// @param HandItem Id
function lvlItem(argument0) {
	if argument0==0 return ItemNull;
	if argument0.object_index == ObjCard return ItemCard;
	if argument0.object_index == ObjBreakTool return ItemPickaxe;



}
