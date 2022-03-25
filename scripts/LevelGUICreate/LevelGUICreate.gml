/// @description LevelGUICreate()
function LevelGUICreate() {
    var CardCount = 2;
	var xx = ChapterSettings.ViewStateMidX;
	var yy = ChapterSettings.ViewStateMidY;
    instance_create_depth(xx,yy, GUIDepth, ObjRedStoneShower);
    instance_create_depth(
    xx + cam.width() - sprite_get_width(SprBreakToolGrid),
    yy,
    GUIDepth,
    ObjBreakTool);
    var i = 0;
    for (i = 0; i <= 8; i += 1) {
        with instance_create_depth(xx + 64 + i * 50, yy ,GUIDepth-1, ObjCard)
		CardSetWeapon(id, min(i, 4))
    }
    lvl.GUIExists = true;



}