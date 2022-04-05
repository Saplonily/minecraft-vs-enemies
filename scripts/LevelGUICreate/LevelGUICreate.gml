/// @description LevelGUICreate()
function LevelGUICreate() {
    var CardCount = 2;
	var xx = ChapterSettings.ViewStateMidX;
	var yy = ChapterSettings.ViewStateMidY;
    instance_create_depth(xx,yy, GUIDepth+1, ObjRedStoneShower);
    instance_create_depth(
    xx + cam.width() - sprite_get_width(SprBreakToolGrid),
    yy,
    GUIDepth+1,
    ObjBreakTool);
    var i = 0;
    for (i = 0; i <= 8; i += 1) {
        with instance_create_depth(xx + 64 + i * 50, yy ,GUIDepth, ObjCard)
		CardSetWeapon(id, min(i, 4))
    }
    lvl.GUIExists = true;



}