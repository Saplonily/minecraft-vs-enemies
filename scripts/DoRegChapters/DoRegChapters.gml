function DoRegChapters() {
	ChapterViewSettings = 
	{
		ViewStateInY : 310,
		ViewStateInX : 0,
		ViewStateMidY : 310,
		ViewStateMidX : 500,
		ViewStateOutY : 310,
		ViewStateOutX : 1200,
		PlacingSquareX : 525,
		PlacingSquareY : 525,
		PlacingSquareWidth : BoxSize*10,
		PlacingSquareHeight : BoxSize*5,
		ChapterShadowDepth : 1,
		ZombieSpawnX : 1200,
	}
	var pro;
	pro = ChapterViewSettings;
	pro.ViewStateInY = 310;
	pro.ViewStateInX = 0;
	pro.ViewStateMidY = 310;
	pro.ViewStateMidX = 500;
	pro.ViewStateOutY = 310;
	pro.ViewStateOutX = 1200;
	pro.PlacingSquareX = 525;
	pro.PlacingSquareY = 525;
	pro.PlacingSquareWidth = BoxSize*10;
	pro.PlacingSquareHeight = BoxSize*5;
	pro.ChapterShadowDepth = 1;
	pro.ZombieSpawnX = pro.PlacingSquareX + pro.PlacingSquareWidth + BoxSize;
    RegChapter("Grasswalk", RoomGrasswalkMap, RoomChapterGrassWalk,pro);



}