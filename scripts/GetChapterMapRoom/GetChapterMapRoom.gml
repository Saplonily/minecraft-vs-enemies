/// @description GetChapterMapRoom(ChapterID)
/// @param ChapterID
function GetChapterMapRoom(argument0) {
	var map = global.ChaptersRc[|argument0];
	if(!is_undefined(map))
		return map[?"roomMap"];
	else
		return undefined;

}
