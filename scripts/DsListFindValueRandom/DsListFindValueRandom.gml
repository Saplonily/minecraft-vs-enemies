/// @description DsListFindValueRandom(ds_list)
/// @param ds_list
function DsListFindValueRandom(argument0) {
	return ds_list_find_value(argument0,irandom(ds_list_size(argument0)-1));



}
