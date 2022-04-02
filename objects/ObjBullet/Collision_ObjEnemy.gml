if lvl.Pause exit;
if (NearInYpos(self.id,other.id))&&other.CanBeBullet&&other.HP>0
{
    if !(CanCross)
    {
        instance_destroy(); 
    }
    with other Hurt(other.Damage,1);
}
