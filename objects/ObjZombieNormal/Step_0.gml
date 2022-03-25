event_inherited();

if !InDeath
{
    if InAttacking
    {
        InMoving = 0;
    }
    //腿摆动幅度
    if InMoving
    {
        RotLegR = sin(RotLeg/20)*20;
    }
    if InAttacking||InViewing
    {
        RotHandR = sin(RotHand/(10+InViewing*5))*(10-InViewing*5)
    }
    RotLeg += SpeedMoving*10*tick1;
    RotHand += 2*tick1;
    if InViewing
    {
        RotLeg = 0;
        InMoving=false;
    }
    if InMoving
    {
        xpos -= SpeedMoving*2*tick1;
    }
}
else
{
    InMoving = 0;
    CanBeBullet = 0;
    if(!GMU_Anim_IsExists(id,"image_angle"))
    {
        GMU_Anim_New(id,"image_angle",GMU_ANIM.QUINT,GMU_ANIM.OUT,0,-90,60);
    }
}
if !InMoving
{
    RotLegR -= RotLegR/4*tick1;
    RotLeg = 0*tick1;
}
if !(InAttacking||InViewing)
{
    RotHandR -= RotHandR/8*tick1;
    RotHand = 0;
}

//归零
InAttacking = 0;
InMoving = 1;

///调试
if keyboard_check_pressed(ord("K"))&&InDebug
{
    HP = 0;
}

