event_inherited();
if lvl.Pause exit;
if HP<=0
{
    Death = 1
}
if Death
{
    (Tid(Grid)).weapon[0] = 0;
    switch(DeathReason)
    {
    case 1:
        audio_play_sound
            (
                choose(SndStoneBreak1,SndStoneBreak2,SndStoneBreak3,SndStoneBreak4),
                SdgrSound,
                NotLoop
            );
        repeat 60
            part_particles_create(PsAtk,x+irandom_range(-10,10),y+irandom_range(-10,10),PtAtk,1);
        break;
    case 0:
        break;
    }
    event_user(0);
    instance_destroy();
}
if MouseOnMe()&&lvlItem(lvl.HandItem)==ItemPickaxe
{
    Light = 1;
    if mouse_check_button_pressed(mb_left)
    {
        HP=0;
        lvl.HandItem = null;
    }
}
part_system_depth(PsAtk,depth-1);

