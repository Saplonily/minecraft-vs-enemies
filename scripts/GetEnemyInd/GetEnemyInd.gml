/// @description GetEnemyInd(Object_index)
/// @param Object_index
function GetEnemyInd(argument0) {
	switch (argument0)
	{
	    case ObjZombieNormal:
	        return EnemyZombieNormal;
	    case ObjZombieLeat:
	        return EnemyZombieLeat;
	    case ObjZombieHemlet:
	        return EnemyZombieHemlet;
	    default:
	        return EnemyZombieNormal;
	}



}

