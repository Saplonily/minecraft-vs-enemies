/// @description Boom(real: x,real: y,real: range,real: hp,real: type)
/// @param real: x
/// @param real: y
/// @param real: range
/// @param real: hp
/// @param real: type
function Boom(argument0, argument1, argument2, argument3, argument4) {
	/*
	    鍦▁,y浣嶇疆鐢熸垚range澶у皬鐨勭垎鐐?鍏朵激瀹充负hp
	*/
	var xb = argument0;
	var yb = argument1;
	var Range = argument2;
	var HP = argument3;
	var type = argument4;
	with ObjEnemy
	{
	    if (distance_to_point (xb,yb)<=Range) //濡傛灉鑷繁鍦ㄥ鏂硅寖鍥村唴
	    {
	        Hurt(HP,HurtTypeVoid)
	    }
	}
	switch (type)
	{
	    case 3:
	        ViewShake(15,0);
	    case 2:
	        audio_play_sound (choose(SndBoom1,SndBoom2,SndBoom3,SndBoom4),SdgrSound,NotLoop)
	    case 1:
	        repeat 50 
	            part_particles_create
	            (
	                lvl.PsBoom,
	                irandom_range(x+Range*2,x-Range*2),
	                irandom_range(y+Range*2,y-Range*2),
	                lvl.PtDeath,
	                1
	            );
	        repeat 30
	            part_particles_create
	            (
	                lvl.PsBoom,
	                irandom_range(x+Range,x-Range),
	                irandom_range(y+Range,y-Range),
	                lvl.PtBoomLeft,
	                1
	            )
	    break;
	}



}
