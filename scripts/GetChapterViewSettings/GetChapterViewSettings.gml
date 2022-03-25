/// @function     GetChapterViewSettings(chapterid)           
/// @description             ChapterId
function GetChapterViewSettings(chapterid){
	return global.ChaptersRc[|chapterid][?"viewSettings"];
}