event_inherited();

if !InDeath
{
    //画出整个身体
    var c = c_white;
    if Hit 
    {   
        c = c_red;Hit-=1;
    }
    
    draw_sprite_ext(SprLegZombie ,0,x+4 ,y-37,1,1, RotLegR ,c,1);//左脚
    draw_sprite_ext(SprLegZombie ,0,x+6 ,y-35,1,1,-RotLegR ,c,1);//右脚
    draw_sprite_ext(SprBodyZombie,0,x   ,y-69,1,1,0        ,c,1);//身体
    draw_sprite_ext(SprHandZombie,0,x+18,y-66,1,1, RotHandR,c,1);//左手
    draw_sprite_ext(SprHeadZombie,0,x+10,y-80,1,1,0        ,c,1);//头
    draw_sprite_ext(SprHandZombie,0,x+22,y-64,1,1, RotHandR,c,1);//右手
}
else
{
    image_blend = c_red;
    draw_sprite_ext(sprite_index,image_index,x,y-5,1,1,image_angle,image_blend,1);
}

