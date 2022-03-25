/// @description GetEnemyObj(EnemyId)
/// @param EnemyId
function GetEnemyObj(argument0) {
	switch (argument0)
	{
	    case EnemyZombieNormal:
	        return ObjZombieNormal;
	    case EnemyZombieLeat:
	        return ObjZombieLeat;
	    case EnemyZombieHemlet:
	        return ObjZombieHemlet;
	    default:
	        return ObjZombieNormal;
	}



}
