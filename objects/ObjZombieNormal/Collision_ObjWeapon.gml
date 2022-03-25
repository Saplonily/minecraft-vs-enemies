if NearInYpos(other.id,self.id)&&!InAttacking&&!InDeath&&other.CanAttacking
{
    InAttacking = 1;
    with other Hurt(1,HurtTypeNormal);
}

