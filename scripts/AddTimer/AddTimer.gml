/// @description AddTimer(time)
/// @param time
function AddTimer(argument0) {
	var t = New(ObjTimer);
	with t
	{
	    Timer = argument0;
	}
	return t;



}
