/// @description 
event_inherited();
if ForShow exit;
//如果全局选中自己,那么绘制自己的类型在鼠标上
if lvl.HandItem==id
{
    draw_sprite(GetWeaponSprite(Weapon),0,mouse_x,mouse_y+75/2);
}