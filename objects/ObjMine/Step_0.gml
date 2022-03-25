event_inherited();
image_speed = !Locked;
if !Locked 
{
    Timer-=tick1;
    if(Timer<=0)
    {
        event_user(0);
    }
}

