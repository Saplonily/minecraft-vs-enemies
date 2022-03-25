event_inherited();

//放这里是因为防止出现步略过的事情发生

//设置自己的x呈现坐标
x = xpos;
//设置自己的y呈现坐标
y = ypos-zpos;

xpos += xspeed*tick1;
ypos += yspeed*tick1;
zpos += zspeed*tick1;