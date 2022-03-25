event_inherited();

TID = lvl.TIDMAX++;
//
    ds_list_add(lvl.ListTid,id);
    
//
xpos = x;//真实x坐标
ypos = y;//真实y坐标
zpos = 0;//    z坐标

xspeed = 0;//x坐标方向上的速度
yspeed = 0;//y坐标方向上的速度
zspeed = 0;//z坐标方向上的速度

//以 "行" 为参考的深度
DepthRow = 10000-ypos;
DepthSet = 0;//玩家设置的深度
Row = GetRow();

HasShadow = 1; //默认有影子

/*
实际深度 = 深度层级*100000+DepthRow (用于区分两者)
*/

ScaleShadow = 0;

LevelThingsType = LevelThingsGetType();
//2022-1-21 10:27:20
OffSetShadow=0;
BeGUI = false;