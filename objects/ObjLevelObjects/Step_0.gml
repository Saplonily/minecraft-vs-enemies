event_inherited();

//计算实际深度
DepthRow = 10000-ypos;
depth = DepthSet+DepthRow;
if BeGUI
	depth = GUIDepth+DepthSet;
