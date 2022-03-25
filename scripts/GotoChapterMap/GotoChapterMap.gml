/// @description GotoChapterMap(ChapterID)
/// @param ChapterID
function GotoChapterMap(chapterID) {
	
	var rom = GetChapterMapRoom(chapterID);
	if(!is_undefined(rom))
	{
		room_goto(rom);	
	}
	else
	{
		DebugOut("Warning : Cannot find chapter map.")	
	}


}
