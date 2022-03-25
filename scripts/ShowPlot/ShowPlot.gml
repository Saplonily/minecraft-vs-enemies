/// @description ShowPlot(PlotHead)
/// @param PlotHead
function ShowPlot(argument0) {
	New(ObjPlotControl);
	global.PlotHead = argument0
	global.Plot = GetPlot(global.PlotHead);
	with instance_create_depth(0,0,GUIDepth-10,ObjCharacter)
	{   
	    Arrving = true;
	    GMU_Anim_New
	    (id,"ArrivingPercent",GMU_ANIM.QUART,GMU_ANIM.OUT,0,1,30,30)
	    RefreshPlot();
	}
	MusicPlay(MusicCrazyDave);



}
