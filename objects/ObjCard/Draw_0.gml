event_inherited();

var InBlack = 0;

//绘制卡牌本身
draw_self();

//绘制卡牌代表的器械

draw_sprite_ext(Sprite,0,x+25,y+40+75/4,0.5,0.5,0,c_white,1);
//绘制价格
draw_set_colour(c_white)
draw_set_font(FTMinecraftNumbers);
draw_text_transformed(x+7,y+62,string_hash_to_newline(Price),0.15,0.15,0)
draw_set_font(FTNormal)

//卡片变为阴影的条件
if lvl.HandItem==id||lvl.RedStone<Price||CD>0||Locked
{
    InBlack=1;
}

if InBlack
{
    draw_set_alpha(0.5);
    draw_rectangle_colour(x,y,x+49,y+74,c_black,c_black,c_black,c_black,0);
    draw_set_alpha(1);
}
if CD>0
{
    draw_set_alpha(0.5);
    draw_rectangle_colour(x,y,x+49,y+74-74*(1-CD/MaxCD),c_black,c_black,c_black,c_black,0);
    draw_set_alpha(1);
}
if MouseOnMe()&&lvl.HandItem==null
{
    if(!Locked)
        CardDrawInformation(x+sprite_width/2,y+sprite_height,GetWeaponName(Weapon)+"#"+GetWeaponTips(Weapon))
    else
        CardDrawInformation(x+sprite_width/2,y+sprite_height,"不可用")
}

