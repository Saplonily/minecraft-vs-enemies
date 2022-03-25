/// @description GMU_Anim_New_To(target, var_name, tween, ease, changeto, duration, delay);
/// @param target
/// @param  var_name
/// @param  tween
/// @param  ease
/// @param  changeto
/// @param  duration
/// @param  delay
function GMU_Anim_New_To(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	var t = argument0;
	var vn = argument1;
	var tw = argument2;
	var ea = argument3;
	var ct = argument4;
	var dr = argument5;
	var de = argument6;
	var st = variable_instance_get(t,vn);
	return GMU_Anim_New(t,vn,tw,ea,st,ct-st,dr,de);



}
