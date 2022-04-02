event_inherited();
if lvl.Pause exit;
if Picked
{
	BeGUI = true;
	DepthSet = -2;
    Float = true;
    ypos = ypos-zpos;
    zpos = 0;
    zspeed=0;
    HasShadow = 0;
    if(lvl.GUIExists)
    {
        var vx = ObjRedStoneShower.x+32;
        var vy = ObjRedStoneShower.y+32;
    }
    else
    {
        var vx = x;
        var vy = y;
    }
    if(!GMU_Anim_IsExists(id,"xpos"))
    {
        if !(xpos==vx&&ypos==vy)
        {
            GMU_Anim_New(id,"xpos",GMU_ANIM.SINE,GMU_ANIM.IN_OUT,xpos,vx-xpos,15);
            GMU_Anim_New(id,"ypos",GMU_ANIM.SINE,GMU_ANIM.IN_OUT,ypos,vy-ypos,15);
        }
    }
    if abs(xpos-vx<=1)&&abs(ypos-vy)<=1
    {
        image_xscale -= 0.1*tick1;
        image_yscale -= 0.1*tick1;
        if image_xscale<=0||(lvl.RedStone<25&&abs(image_xscale-0.8)<=0.07)
        {
            lvl.RedStone += Value;
            instance_destroy ();
        }
    }
    
}
AlarmDisappear -= 2*tick1;
if AlarmDisappear<=0
{
    image_alpha -= 0.2*tick1;
    if image_alpha<=0
    {
        instance_destroy();
    }
}
