/// @description Alarm倒计时
event_inherited();
if lvl.Pause exit;

AlarmFire -= 0.5*tick1;
AlarmRedStone -= tick1+(instance_number(ObjFurnace)<=2)*tick1;

with (other) {
///Alarm处理
if AlarmFire<=0
{
    AlarmFire = irandom_range(1*30,2*30);
    //根据红石生产倒计时产生粒子
    var re = 1 + (AlarmRedStone<440)*8
    repeat re
    {
        var sx = x+irandom_range(-12,12)
        var sy = y+irandom_range(28,18)-75/2
        part_particles_create(Ps,sx,sy,PtFire,1)
        part_particles_create(Ps,sx,sy,PtSmoke,1)
    }
}

if AlarmRedStone<=0
{
    AlarmRedStone = irandom_range (16*30,24*30)
    with instance_create_depth(x,y+10-75/2,depth,ObjRedstone) //时间到了生产红石
    {
        //设置行数
        Row = other.Row;
        //x坐标偏移速度
        xspeed = (3+random(1))*sign(choose(1,-1))
        zspeed = 2;
    }
    //产生粒子
    repeat 50
    {
        var sx = x+irandom_range(-15,15)
        var sy = y+irandom_range(28,20)-75/2
        part_particles_create (Ps,sx,sy,PtFire,1)
        part_particles_create (Ps,sx,sy,PtSmoke,1)
    }
}

}
///粒子系统设置
part_system_depth (Ps,depth)

