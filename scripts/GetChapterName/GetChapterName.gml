/// @description GetChapterName(ChapterName)
/// @param ChapterName
function GetChapterName(argument0) 
{
	var IdInJson = format("Chapter->{0}",GetChapterCodeName(argument0));
	var Result = global.TextsRc[?IdInJson];
	return Result;
	


}

