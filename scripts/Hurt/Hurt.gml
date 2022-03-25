/// @description Hurt(Amount,Type)
/// @param Amount
/// @param Type
function Hurt(argument0, argument1) {
	switch LevelThingsGetType()
	{
	    case ObjEnemy:
	        switch argument1
	        {
	            case HurtTypeNormal:
	                if HPex[0]>0
	                {
	                    switch (object_index)
	                    {
	                        case ObjZombieLeat:
	                        var Snd = choose(SndLeatHurt1,SndLeatHurt2);
	                        audio_stop_sound(Snd);
	                        audio_play_sound
	                        (
	                            Snd,
	                            SdgrSound,
	                            NotLoop
	                        )
                        
	                        break;
	                        case ObjZombieHemlet:
	                        var Snd = choose(SndIronHurt1,SndIronHurt2)
	                        audio_stop_sound(Snd);
	                        audio_play_sound
	                        (
	                            Snd,
	                            SdgrSound,
	                            NotLoop
	                        )
	                    }
	                    Hitex[0] = 2;
	                }
	                else
	                {
	                    var Snd = choose(SndZombieHurt1,SndZombieHurt2,SndZombieHurt3)
	                    audio_stop_sound(Snd);
	                    audio_play_sound
	                    (
	                        Snd,
	                        SdgrSound,
	                        NotLoop
	                    );
	                    Hit = 2;
	                }
	            case HurtTypeVoid:
	                var RestHP=argument0;
	                if HPex[0]>0
	                {
	                    if HPex[0]<=argument0
	                    {
	                        RestHP -= HPex[0];
	                        HPex[0] = 0;
	                    }
	                    else
	                    {
	                        HPex[0] -= RestHP;
	                        RestHP = 0;
	                    }
	                }
	                HP -= RestHP;
	            break;
	        }
	    break;
	    case ObjWeapon:
	        switch argument1
	        {
	            case HurtTypeNormal:
	                HP-=argument0;
	                if irandom(1)==0
	                part_particles_create(PsAtk,x+irandom_range(-10,10),y+irandom_range(-10,10)-75/2,PtAtk,1);
	        }
	    break;
	}



}
