event_inherited();
if lvl.Pause exit;
if !Float
{
    zspeed -= 0.5*tick1;
}
if zpos+zspeed<=0&&!Float
{
    zspeed=0;
    zpos = 0;
}
xspeed *= power(0.90,tick1);
yspeed *= power(0.90,tick1);

