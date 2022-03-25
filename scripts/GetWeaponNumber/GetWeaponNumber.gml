/// @description GetWeaponNumber(Weapon)
/// @param Weapon
function GetWeaponNumber(argument0) {
	var n=0;
	var ID = argument0;
	with ObjWeapon
	{
	    if(WeaponID==ID)
	    {
	        n++;
	    }
	}
	return n;



}
