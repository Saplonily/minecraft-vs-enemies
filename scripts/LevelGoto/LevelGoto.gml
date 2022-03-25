/// @description LevelGoto(ChapterIndex,LevelIndex)
/// @param ChapterIndex
/// @param LevelIndex
function LevelGoto(argument0, argument1) {
	var LevelExists = 
	file_exists(LevelsDir+GetChapterCodeName(argument0)+"Day"+string(argument1)+".rc");
	if(!LevelExists)
	{
	    DebugOut(format("Level File Not Exists for Chap:{} Day{}",GetChapterCodeName(argument0),argument1))
	    exit;
	}
	global.LevelIndex = argument1;
	global.LevelChapter = argument0;

	DebugOut(format("LevelIndex={},LevelChapter={}",global.LevelIndex,global.LevelChapter));
	DebugOut(format("Chapter Name Is {}",GetChapterName(global.LevelChapter)))
	switch (argument0)
	{
	    case ChapterGrasswalk:
	    {
	        room_goto(RoomChapterGrassWalk);
	    }
	    break;
	}



}
