event_inherited();
//器械血量
HP = 200;
//满血值
MAXHP = HP;
WeaponID = -1;
CanAttacking = 1;
Grid = null;
Death = null;
Light = 0;//是否发光
DeathReason = 1;//死亡原因
//1默认
//0虚空
DepthSet = 5;
OffSetShadow=-BoxSize/10;
//啃食粒子系统:
PsAtk = part_system_create () //啃食器械粒子系统
PtAtk = part_type_create () //啃食器械的粒子种类
var atkpart = PtAtk;
part_type_life(atkpart,10,20) //设置粒子效果的死亡周期
part_type_shape(atkpart,ps_shape_diamond)
part_type_direction(atkpart,0,360,0,0)
part_type_speed(atkpart,0.6,2,-0.01,0)
part_type_scale(atkpart,0.1,0.1)
part_type_colour2(atkpart,c_gray,c_black)
part_type_gravity(atkpart,0.06,270)

