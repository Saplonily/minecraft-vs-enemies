event_inherited();

HPex[0] = 0;
InMoving = 1;//默认正在走
CanMoving = 1;//默认能走
SayingDeath = 0;//是否死亡后说过话
SpeedMoving = 0.2+random(0.1);//默认行走速度

CanBeBullet = 1;//是否能被实体子弹打伤

//是否正在攻击器械
InAttacking = 0;
//攻击的器械的id


RsDeath = 0;

//血量
HP = 200;
MAXHP = HP;

//被打中
Hit=0;

//是否已死
InDeath = 0;
//选卡界面状态
InViewing = false;

DropedItem = false;