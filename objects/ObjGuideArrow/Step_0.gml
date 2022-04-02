event_inherited();
if lvl.Pause exit;
var D = degtorad(Dir);
var xr,yr;
xr = 15*cos(D);
yr = 15*sin(D);
if(!Up&&!GMU_Anim_IsExists(id,"pgs")&&pgs==0)
{
    GMU_Anim_New(id,"pgs",GMU_ANIM.SINE,GMU_ANIM.IN_OUT,0,1,20);
    Up=!Up;
}
if(Up&&!GMU_Anim_IsExists(id,"pgs")&&pgs==1)
{
    GMU_Anim_New(id,"pgs",GMU_ANIM.SINE,GMU_ANIM.IN_OUT,1,-1,20);
    Up=!Up;
}
x = xs+xr*pgs;
y = ys+yr*pgs;

