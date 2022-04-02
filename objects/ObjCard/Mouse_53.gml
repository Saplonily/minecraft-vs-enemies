event_inherited();
if ForShow exit;
if lvl.Pause exit;
var Placed = 0;

if !(lvl.HandItem==id) exit;
var Box = collision_point(mouse_x,mouse_y,ObjGridBox,0,0);
if Box
{
    if Box.weapon[0]==0
    {
        Placed = 1;
        audio_play_sound
        (
            choose(SndStoneBreak1,SndStoneBreak2,SndStoneBreak3,SndStoneBreak4),
            SdgrSound,
            NotLoop
        )
    }
}

if Placed
{
    PlaceWeapon(Weapon,Box);
    lvl.HandItem=0;
    lvl.RedStone-=GetWeaponPrice(Weapon);
    self.CD = GetWeaponMaxCd(Weapon);
}

