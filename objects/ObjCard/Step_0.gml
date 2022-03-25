event_inherited();

if MouseOnMe()&&lvl.HandItem==null
{
    lvl.MouseType = cr_handpoint;
}
if lvl.HandItem==id
{
    lvl.MouseType = cr_none;
}
if CD>0
    CD-=2*tick1;

