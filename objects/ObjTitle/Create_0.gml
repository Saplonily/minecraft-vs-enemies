event_inherited();

//定义自己的位置
x = lvl.cam.xpos()+lvl.cam.width()/2-30
y = lvl.cam.ypos()+lvl.cam.height()/2
timer = 30 //出现时间
image_speed = 0;
txt = "error for title"

//增加缓动
GMU_Anim_New(id,"timer",GMU_ANIM.CUBIC,GMU_ANIM.OUT,30,-170,142);