event_inherited();

PsShoot = part_system_create () //创建自己的粒子系统
PrShoot = part_type_create () //定义一个粒子

AlarmShoot = 60

part_type_sprite(PrShoot,SprDeathParticle,1,1,0)
part_type_direction(PrShoot,-35,35,0,0)
part_type_colour2(PrShoot,c_black,c_gray)
part_type_speed(PrShoot,0.1*tick1,1.5*tick1,0,0)
part_type_life(PrShoot,20/30*sec1,100/30*sec1)

