/// @description 选卡阶段控制
function ScrLevelCtrlCardChosingViewCtrl() {
	if(floor(PreviewState)==PreviewState)
	{
	    switch(PreviewState)
	    {
	        case -1:
	            if(HasStartPlot)
	            {
	                ShowPlot(StartPlotHead);
	                //global.Tourial = 1;
	                MusicPlay(MusicCrazyDave);
	            }
	            LockMine();
	            ;break;
	        case 0:
	        if(!IsInTourial())
	        {
	            GMU_Anim_New_To(id,"XPreview",GMU_ANIM.QUINT,GMU_ANIM.IN_OUT,ChapterSettings.ViewStateOutX,60,10);
				GMU_Anim_New_To(id,"YPreview",GMU_ANIM.QUINT,GMU_ANIM.IN_OUT,ChapterSettings.ViewStateOutY,60,10);
	            MusicPlay(MusicChooseYourSeed);
	        }
	        else
	        {
	            PreviewState=5;
	            GMU_Anim_New_To(id,"XPreview",GMU_ANIM.QUINT,GMU_ANIM.IN_OUT,ChapterSettings.ViewStateMidX,60,20);
				GMU_Anim_New_To(id,"YPreview",GMU_ANIM.QUINT,GMU_ANIM.IN_OUT,ChapterSettings.ViewStateMidY,60,20);
	            MusicPlay(MusicChooseYourSeed)
	        }
	        ;break;
	        case 1:;break;
	        case 2:;break;
	        case 3:
					GMU_Anim_New_To(id,"XPreview",GMU_ANIM.QUINT,GMU_ANIM.IN_OUT,ChapterSettings.ViewStateMidX,60,15)
					GMU_Anim_New_To(id,"YPreview",GMU_ANIM.QUINT,GMU_ANIM.IN_OUT,ChapterSettings.ViewStateMidY,60,15);
        
	        ;break;
	        case 4:break;
	        case 5:ReadySetCreate();break;
	        case 6:
	            InCardChosing=false;
	            MusicStopAndDestroy();
	            MusicPlay(MusicGrasswalk)
	            LevelGUICreate();
	            UnlockMine();
	            break;
	        case 7:;break;
	        case 8:;break;
	        case 9:Leaving=true;;break;
	    }
	    PreviewState += 0.5;
	}
	if(PreviewState==-0.5)
	{
	    if(!instance_exists(ObjPlotControl))
	    {
	        PreviewState += 0.5;
	        StartPlotEnd = true;
	        ObjLevelCtrlCreateViewingZombies();
	    }
	}
	else if(PreviewState>0&&PreviewState<3)
	{
	    if(!GMU_Anim_IsExists(id,"XPreview"))
	    {
	        PreviewState += 0.5;
	    }
	}
	else if(PreviewState==3.5||PreviewState==4.5)&&!GMU_Anim_IsExists(id,"XPreview")
	{
	    PreviewState += 0.5;
	}
	else if(PreviewState==5.5)&&!instance_exists(ObjReadySet)&&!GMU_Anim_IsExists(id,"XPreview")
	{
	    PreviewState += 0.5;
	    with ObjEnemy
	    {
	        if(InViewing==true)
	        {
	            instance_destroy();
	        }
	    }
	}
	else if(PreviewState==6.5)
	{
	    PreviewState+=0.5;
	}
	else if(PreviewState==7.5)
	{
	    if(instance_exists(ObjDropAward)&&ObjDropAward.Waiting)
	    {
	        if(HasEndPlot)
	        {
	            if(!instance_exists(ObjPlotControl))
	            {
	                ShowPlot(EndPlotHead);
	                PreviewState+=0.5;
	            }
	        }
	        else
	        {
	            PreviewState += 0.5;
	        }
	    }
	    if(global.Tourial==1&&TourialEnd==true&&!InPlot())
	    {   
	        PreviewState=1;
	        TourialEnd = 2;
	    }
	}
	else if(PreviewState==8.5)
	{
	    if(!instance_exists(ObjPlotControl))
	    {
	        EndPlotEnd = true;
	        PreviewState+=0.5
	    }
	}
	if (keyboard_check(ord("X"))&&PreviewState!=floor(PreviewState)&&PreviewState<7)
	{
		PreviewState+=0.5;
		GMU_Anim_Skip(id);
		with ObjReadySet instance_destroy();
		audio_stop_sound(SndReadySetPlant);
		with ObjEnemy
	    {
	        if(InViewing==true)
	        {
	            instance_destroy();
	        }
	    }
		
	}
	if(PreviewState==floor(PreviewState))
	    ScrLevelCtrlCardChosingViewCtrl();


}
