event_inherited();
zpos = 0;  //自己的高度
zlean = 0; //倾斜度 (0为平坦,1为走上去后每帧z坐标增加1,-1反之)

weapon[0] = 0;//自己格子的器械类型

HasShadow = 0;//没有影子
/*

0 : 空
1~inf : 普通器械
-1~-inf : 障碍物

*/

GridType = 0;//格子类型

/*

0 : 陆地
1 : 水路

*/
AxisX = XToAxisX(xpos);
AxisY = YToAxisY(ypos);

/* */
/*  */