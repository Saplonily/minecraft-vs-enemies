draw_self();
if lvlItem(lvl.HandItem)==ItemCard
if MouseOnMe()
{
    if weapon[0] == 0
        draw_sprite(SprGridBoxPlacing,0,x,y)
    else
        draw_sprite_ext(SprGridBoxPlacing,0,x,y,1,1,0,c_red,1)
}