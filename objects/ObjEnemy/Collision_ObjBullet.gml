if (OnSameLine(self.id,other.id))&&CanBeBullet&&HP>0
{
    if !(other.CanCross)
    {
        instance_destroy(other.id); 
    }
    Hurt(other.Damage,1);
}
