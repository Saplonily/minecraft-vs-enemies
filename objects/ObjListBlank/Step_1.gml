/// @description 
if(sel!=-1)
{
	if(psel!=sel)
	{
		if(!GMU_Anim_IsExists(id))
		{
			if(!(psel==-1&&sel!=-1))
			{
				atemp = GMU_Anim_New(id,"ssel",GMU_ANIM.SINE,GMU_ANIM.IN,psel,sel-psel,3,0);

			}
			else
			{
				ssel = sel;
			}
		}
		else
		{
			var gtime = atemp[0]._time;
			GMU_Anim_Stop(id);
			atemp = GMU_Anim_New(id,"ssel",GMU_ANIM.SINE,GMU_ANIM.IN,ssel,sel-ssel,3-gtime,0);
		}
	}
}
else
{
	ssel = -1;
}
psel = sel;