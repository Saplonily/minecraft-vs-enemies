/// @description SummonZombie(ZombieInd,SummonRow,SummonLine)
/// @param ZombieInd
/// @param SummonRow
/// @param SummonLine
function SummonZombie() {
	switch(argument_count)
	{
	    case 2:
	        return LevelThingsCreate(
	        ChapterSettings.ZombieSpawnX+irandom_range(-20,200),
	        ChapterSettings.PlacingSquareY+BoxSize*argument[1],
	        0,
	        GetEnemyObj(argument[0])
	    );
	    break;
	    case 3:
	        return LevelThingsCreate(
	        AxisXToX(argument[2]),
	        ChapterSettings.PlacingSquareY+BoxSize*argument[1],
	        0,
	        GetEnemyObj(argument[0])
	    );
	    break;
	}



}
