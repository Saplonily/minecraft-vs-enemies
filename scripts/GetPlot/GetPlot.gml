/// @description GetPlot(Head) : return PlotList
/// @param Head
function GetPlot(argument0) {
	ini_open(global.PlotRc);
	var ListRt = ds_list_create();
	var i = 1;
	while true
	{
	    var t = ini_read_string(argument0,i,"-1");
	    if(t!="-1")
	    {
	        ds_list_add(ListRt,t);
	    }
	    else
	    {
	        if(t==1)
	        {
	            ds_list_destroy(ListRt);
	            ini_close();
	            return -1;
	        }
	        break;
	    }
	    i++
	}
	return ListRt



}
