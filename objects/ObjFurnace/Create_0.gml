/// @description 粒子系统创建
event_inherited();

//创建自己的粒子系统
Ps = part_system_create ()
//创建火花粒子
PtFire = part_type_create () 
part_type_sprite (PtFire,SprFurnaceParticle,0,0,1)
part_type_size (PtFire,0.8,1,-0.003*tick1,0)
part_type_life (PtFire,4*sec1,(200/30)*sec1)
//创建烟粒子
PtSmoke = part_type_create () 
part_type_sprite(PtSmoke,SprDeathParticle,1,1,0)
part_type_direction(PtSmoke,90+5,90-5,0,0)
part_type_colour2(PtSmoke,c_black,c_gray)
part_type_life(PtSmoke,120/30*sec1,200/30*sec1)
part_type_speed(PtSmoke,0.05*tick1,0.1*tick1,0,0)

///Alarm系列
AlarmFire = 0;
AlarmRedStone = irandom_range(5*30,8*30);

