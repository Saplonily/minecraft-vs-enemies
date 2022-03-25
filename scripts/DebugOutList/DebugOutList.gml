/// @description DebugOutList(list)
/// @param list
function DebugOutList(list) {
	DebugOut("----------------")
	for(var i =0;i<ds_list_size(list);i++)
	{
	    DebugOut(format("{} : {}",i,ds_list_find_value(list,i)));
	}
	DebugOut("----------------")



}
