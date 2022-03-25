/// @description LevelGUICreate()
function LevelGUIDeactive() {
	with ObjLevelGUI
	{
	    instance_deactivate_object(id);
	}
	lvl.GUIExists = false;




}
