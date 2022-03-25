/// @description HaveHandItemWeapon(lvl.?)
/// @param lvl.?
function HaveHandItem(argument0) {
	var ar = argument0;
	var it = lvl.HandItem;
	if(lvlItem(it)==ItemCard)
	{
	    return it.Weapon==ar;
	}
	if(lvlItem(it)==ItemPickaxe)
	{
	    return ar==ItemPickaxe
	}
	return false;



}
