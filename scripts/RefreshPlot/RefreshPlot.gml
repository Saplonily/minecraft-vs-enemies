/// @description RefreshPlot()
function RefreshPlot() {

	var t = ds_list_find_value(global.Plot,global.PlotProgress-1)
	t=string_replace_all(t,"{0}",chr(13));
	var c = ObjCharacter;
	c.Text = t;



}
