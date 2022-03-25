/// @description 
event_inherited();
if Light!=0
{
    if (lvl.Leaving)
    {
        draw_set_colour(c_white);
        draw_set_alpha(Light);
        draw_rectangle(
            GetViewX(),
            GetViewY(),
            GetViewX()+GetViewW(),
            GetViewY()+GetViewH(),
            0
        );
        draw_set_color(c_black);
        draw_set_alpha(1);
    }
}