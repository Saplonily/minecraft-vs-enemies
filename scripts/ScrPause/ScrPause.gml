function DoPause()
{
	DebugOut("Pause the game.");
	lvl.Pause = true;
	tryFocusOn(CreateOptionForm());
}
function DoResume()
{
	DebugOut("Resume the game.");
	lvl.Pause = false;
	with ObjForm DestoryForm(id);
}