/// @description RegChapter(name,RoomMap,RoomLevel,viewsettings)
/// @param name
/// @param RoomMap
/// @param RoomLevel
/// @param viewsettings
function RegChapter(name, roomMap, RoomLevel,viewsettings) {
	var map = ds_map_create();
	map[?"name"] = name;
	map[?"roomMap"] = roomMap;
	map[?"roomLevel"] = RoomLevel;
	map[?"viewSettings"] = viewsettings;
	ds_list_add(global.ChaptersRc,map);



}
