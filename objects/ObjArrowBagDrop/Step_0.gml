event_inherited();
if lvl.Pause exit;
Timer -= tick1;
if (Timer<=0)
{
    instance_destroy();
    audio_play_sound(SndBoom1,SdgrSound,NotLoop);
    var i = 0;
    for(i=0;i<360;i+=2)
    {
        with(LevelThingsCreate(xpos-(i mod 7)*cos(degtorad(i)),ypos+(i mod 7)*sin(degtorad(i)),zpos+20,ObjArrow))
        {
            SpeedFly = 30;
            DirectionFly = i;
			Damage = 40;
        }
    }
}