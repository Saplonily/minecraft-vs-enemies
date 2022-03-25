event_inherited();

if AlarmShoot>0
    AlarmShoot -= 2*tick1;
if AlarmShoot<=0
{
    if collision_line (x,y-12-75/2,x+75*12,y-12-75/2,ObjEnemy,1,1)
    {
        LevelThingsCreate(xpos+20,ypos,zpos+(48/75)*sprite_height,ObjArrow);
        //GMU_Anim_New(a,"xpos",GMU_ANIM.QUINT,GMU_ANIM.IN_OUT,a.xpos+20,a.xpos+30,60,0);
        part_particles_create(PsShoot,x+20,y-14-75/2,PrShoot,12)
        audio_play_sound(SndClick,0,0)
        AlarmShoot = 100
    }
    else
    {
        AlarmShoot = irandom_range(60,240)
    }
}

