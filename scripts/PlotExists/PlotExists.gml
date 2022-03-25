/// @description PlotExists(Head)
/// @param Head
function PlotExists(argument0) {
	ini_open(global.PlotRc);
	Exists = ini_section_exists(argument0);
	ini_close();
	return Exists;



}
