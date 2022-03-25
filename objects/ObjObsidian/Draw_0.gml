event_inherited();

var percent = HP/MAXHP;
var hps = floor((11-11*percent))  //计算hps(血量对应的破坏贴图)
draw_sprite (SprDestroyImg,hps,x,y-75/2)

