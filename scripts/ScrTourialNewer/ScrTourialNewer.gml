// tv : tourial variable
#macro tv ObjLevelCtrl.TourialVars
#macro tvZombie 0
#macro tvTimer 1

function ScrTourialCtrlNewerCheckings()
{
	var tg = TourialProgress;
	if(tg==0.5)
	{
	    if(HaveHandItem(WeaponDispener))
	    {
	        ScrTourialNext();
	    }
	}
	else if(tg==1.5)
	{
	    if(GetWeaponNumber(WeaponDispener)>=1)
	    {
	        ScrTourialNext();
	    }
	}
	else if(tg==2.5)
	{
	    if(tv[tvZombie].HP==0)
	    {
	        ScrTourialNext();
	    }
	}
	else if(tg==3.5)
	{
	    if(tv[tvTimer].Timer<=0)
	    {
	        ScrTourialNext();
	        DeleteTimer(tv[tvTimer]);
	    }
	}
	else if(tg==4.5)
	{
	    if(instance_number(ObjRedstone)==0&&lvl.RedStone>=25)
	    {
	        ScrTourialNext();
	    }
	}
	else if(tg==5.5)
	{
	    if(lvl.RedStone>=50)
	    {
	        ScrTourialNext();
	    }
	}
	else if(tg==6.5)
	{
	    if(HaveHandItem(WeaponFurnace))
	    {
	        ScrTourialNext();
	    }
	}
	else if(tg==7.5)
	{
	    if(GetWeaponNumber(WeaponFurnace)>=1)
	    {
	        ScrTourialNext();
	    }
	}
	else if(tg==8.5)
	{
	    if(GetWeaponNumber(WeaponFurnace)>=3)
	    {
	        ScrTourialNext();
	    }
	}
	else if(tg==9.5)
	{
	    if(tv[tvTimer].Timer<=0)
	    {
	        DeleteTimer(tv[tvTimer]);
	        ScrTourialNext();
	    }
	}
	else if(tg==10.5)
	{
	    if(GetWeaponNumber(WeaponObsidian)>=1)
	    {
	        ScrTourialNext();
	    }
	}
	else if(tg==11.5)
	{
	    if(tv[tvZombie].HP<=0)
	    {
	        ScrTourialNext();
	    }
	}
	else if(tg==12.5)
	{
	    if(tv[tvTimer].Timer<=0)
	    {
	        ScrTourialNext();
	        DeleteTimer(tv[tvTimer]);
	    }
	}
	else if(tg==13.5)
	{
	    if(instance_number(ObjWeapon)==0)
	    {
	        ScrTourialNext();
	    }
	}
	else if(tg==14.5)
	{
	    if(!InPlot())
	    {
	        ScrTourialNext();
	    }
	}
	else if(tg==15.5)
	{
	    ScrTourialNext();
	}
	if(floor(TourialProgress)==TourialProgress)
	{
	    ScrTourialCtrl();
	}




}
function ScrTourialCtrlNewerDoings()
{
	if(TourialProgress==floor(TourialProgress))
	{
	    switch(TourialProgress)
	    { 
	        case 0:
	            var DisID;
	            with ObjCard
	            {
	                if(Weapon!=WeaponDispener)
	                {
	                    LockCard(id);
	                }
	                else
	                {
	                    DisID = id;
	                }
	            }
	            LockBreakTool();
	            RedstoneSet(100);
	            LockSummoner();
	            LockMine();
	            CreateGuideArrow(DisID.x+25,DisID.y+75,90);
	            MessageBox("点击发射器卡片",2,true);
	        break;
	        case 1:
	            DestroyGuideArrow();
	            MessageBox("放置在草坪的第三行上",2,true);
				CreateGuideArrow(AxisXToX(0),AxisYToY(3)-BoxSize/2,0)
	        break;
	        case 2:
				var wrong = false;
				with(ObjDispener)
				{
					if(self.Row!=3)
					{
						wrong = true;
					}
				}
				if(wrong==0)
				{
					DestroyGuideArrow();
		            MessageBox("用发射器干掉僵尸！",2,true)
		            tv[tvZombie] = SummonZombie(0,3,10);
				}
				else
				{
					MessageBox("哦,看上去你的发射器放错了位置")	
				}
	        break;
	        case 3:
	            MessageBox("干的漂亮！",2,true)
	            tv[tvTimer] = AddTimer(60);
	        break;
	        case 4:
	            MessageBox("点击收集红石",2,true);
	            UnlockMine();
	            with ObjMine
	            {
	                event_user(0);
	                Timer = 30*3;
	            }
	        break;
	        case 5:
	            DestroyGuideArrow();
	            MessageBox("收集足够多的红石放置器械！",2,true);
	        break;
	        case 6:
	            var cid;
	            with ObjCard
	            {
	                if(Weapon=WeaponFurnace)
	                {
	                    UnlockCard(id);
	                    cid = id;
	                }
	            }
	            MessageBox("点击熔炉卡片",2,true);
	            CreateGuideArrow(cid.x+25,cid.y+75,90);
	        break;
	        case 7:
	            MessageBox("放置在草坪左侧",2,true);
	            DestroyGuideArrow();
	        break;
	        case 8:
	            MessageBox("请至少有3个熔炉在草坪上！",2,true);
	        break;
	        case 9:
	            MessageBox("熔炉的数量决定了你放置器械的速度！",1.5,true);
	            tv[tvTimer] = AddTimer(120);
	        break;
	        case 10:
	            with ObjCard
	            {
	                if (Weapon==WeaponObsidian)
	                {
	                    UnlockCard(id)
	                }
	            }
	            MessageBox("用黑曜石抵御铁盔僵尸！",2,true);
	            tv[tvZombie] = SummonZombie(2,3,10);
	        break;
	        case 11:
	            with ObjMessageBox
	            {
	                instance_destroy();
	            }
	        break;
	        case 12:
	            MessageBox("最后，镐子能挖掉你的器械",2,true);
	            UnlockBreakTool();
	            var o = ObjBreakTool;
                    
	            CreateGuideArrow(o.x+o.sprite_width/2,ObjBreakTool.y+85,90);
	            tv[tvTimer] = AddTimer(120);
	        break;
	        case 13:
	            DestroyGuideArrow();
	            MessageBox("尝试挖掉所有的器械！",2,true);
                    
	        break;
	        case 14:
	            MessageBoxDestroy();
	            ScrEndTourial();
	        break;
	        case 15:
	            DebugOut("TourialMiddlePlotEnded");
	            GMU_Anim_New_To(id,"XPreview",GMU_ANIM.QUINT,GMU_ANIM.IN_OUT,640,60,10);
	            RedstoneSet(50);
	            UnlockSummoner();
	            UnlockMine();
	        break;
                    
	    }
		
	    TourialProgress += 0.5;
	}	
}
