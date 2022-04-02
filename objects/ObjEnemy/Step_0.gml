event_inherited();
if lvl.Pause exit;
if HP<=0
    InDeath = 1;
HP = min(HP,MAXHP);

if InDeath
{
	if(!DropedItem)
	{
		DropedItem=true;
		DropItems();
	}
    switch RsDeath
    {
        case 0:
            switch (object_index)
            {
                case ObjZombieNormal:
				case ObjZombieLeat:
				case ObjZombieHemlet:
                if !SayingDeath
                {
                    audio_stop_sound(SndZombieDeath);
                    audio_play_sound(SndZombieDeath,SdgrSound,NotLoop);
                }
                SayingDeath = 1;
                if abs(RotLegR)>=5||image_angle>=-89 exit;
                CreateDeathParticle(x-30,x+40,y,y-120,120);
                break;
            }
            instance_destroy();
            break;
    }
}

