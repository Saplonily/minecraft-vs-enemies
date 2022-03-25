/// @description
#region 普通
event_inherited();
SpeedViewY -= SpeedViewY/40*tick1
SpeedViewX -= SpeedViewX/40*tick1
BasicViewX += SpeedViewX*tick1;
BasicViewY += SpeedViewY*tick1;

RedStone = min(RedStone,9990);
//控制旗子
for (var i = 0;i<floor(MAXWave/10);i++)
{
    //i值代表的波次小于或等于当前波次
    if ((i+1)*10<=Wave)
    {
        WaveFlagRise[i] *= power(1/1.1,tick1);
        WaveFlagRise[i] = max(0,WaveFlagRise[i])
    }
}
#endregion
#region 调试
if InDebug
{
	/*
    if keyboard_check(KeyA)
        SpeedViewX-=.8;
    if keyboard_check(KeyS)
        SpeedViewY+=.8;
    if keyboard_check(KeyD)
        SpeedViewX+=.8;
    if keyboard_check(KeyW)
        SpeedViewY-=.8;
        */
    if keyboard_check(vk_left)
    {
        view_angle += 1;
    }
    if keyboard_check(vk_right)
    {
        view_angle -= 1;
    }
    if keyboard_check(ord("M"))
    {
        RedStone += 50;
    }
    if keyboard_check (ord("H"))
    {
        with ObjCard
            CD = 0;
    }
    if (keyboard_check(ord("Z")))
    {
        if mouse_wheel_up()
            DebugModeZombie += 1;
        if mouse_wheel_down()
            DebugModeZombie -= 1;
        DebugModeZombie = DebugModeZombie mod 3;
        DebugModeZombie = max(DebugModeZombie,0);
    }
    if keyboard_check_released(ord("Z"))
    {
        with SummonZombie(DebugModeZombie,YToAxisY(mouse_y)+1)
        {
            xpos = mouse_x;
        }
    }
    if keyboard_check_pressed(ord("N"))
    {
        AlarmWave = 0;
    }
    if keyboard_check(ord("F"))
    {
        AlarmWave = 0;
    }
    if keyboard_check_pressed(ord("G"))
    {
        Win();
    }
    if keyboard_check(ord("R"))&&keyboard_check_pressed(ord("S"))
        game_restart()
    
	if keyboard_check_pressed(ord("W"))
	{
		Win();
	}
}
#endregion
#region 教程
if IsInTourial()&&PreviewState>=6
{
    ScrTourialCtrl();
}

/* */
///关卡状态控制
event_inherited();
#endregion
if(PreviewState<=6)
{
    cam.setx(XPreview);
	cam.sety(YPreview);
}

ScrLevelCtrlCardChosingViewCtrl();

#region 出怪相关

//AlarmWave 波次倒计时
//2022-3-8 14:00:48 抛弃 正数 倒数 的区分
//采用新变量表示目前等待对象
//变量 : AlarmWaveWaitingFor
// 其他值直接报错
// 1 : 正常出怪
// 2 : 开局等待
// 3 : 一大波延后生成等待
// 4 : 最终波到达
// 5 : 最终波字幕间等待

if(!InCardChosing&&!AlarmLocked&&PreviewState>=6)
{
    //2022年3月8日17:29:45
    if AlarmWave>0
    {
		//自减
        AlarmWave -= tick1;
		
        if(instance_number(ObjEnemy)==0&&AlarmWaveWaitingFor==1)
        {
            AlarmWave = 0;
            DebugOut("Summon Zombie Ahead of timer.");
        }
    }
	else
	//闹钟触发了
    {
		//等待处理switch
		switch(AlarmWaveWaitingFor)
		{
			//正常出怪
			case 1:	
				//目前只能加一波
				Wave += 1;
				HugeWave = (Wave%10==0);
		        FinalWave = Wave == MAXWave;
				//一大波分情况处理
		        if HugeWave
		        {
					Title("A Huge Wave Of Zombies Are Coming!");
					audio_play_sound(SndHugeWave,SdgrSound,NotLoop);
					AlarmWaveWaitingFor = (FinalWave)?5:3;
		            AlarmWave = 60;
					if(AlarmWaveWaitingFor==5)
						AlarmWave+=1.5*60;
		            exit;
		        }
				else
				{
					LevelCtrlWaveSolve();
				}
				AlarmWave = 1500;
			break;
			//关卡开始等待
			case 2:
				AlarmWaveWaitingFor = 1;
				audio_play_sound(SndAwooga,SdgrSound,NotLoop);
			break;
			//一大波等待
			case 3:
				LevelCtrlWaveSolve();
				AlarmWave = 1500;
				AlarmWaveWaitingFor = 1;
			break;
			//最终波到达
			case 4:
				LevelCtrlWaveSolve();
				//设置为-1停止计时
				AlarmWave = -1;
				AlarmWaveWaitingFor = -1;
			break;
			case 5:
				Title("Final Wave.");
				audio_play_sound(SndFinalWave,SdgrSound,NotLoop);
				AlarmWave = 60;
				AlarmWaveWaitingFor = 4;
			break;
		}
    }
	if(FinalWave)
	{
		//关卡输赢设置
		if (LevelWin==false&&AlarmWaveWaitingFor==-1)
        {
			var n = instance_exists(ObjEnemy)
			if n==false
			{
				Win();
			}
        }	
	}
	
    if Left
    {
        LevelEnd();
    }
}
#endregion

//2022-1-18 14:26:13
  
//2022-3-8 17:58:24

//视野
if(PreviewState>=6)
{
	if (ShakeView>0)
	{
	    cam.setx(BasicViewX+irandom(ShakerView));
	    cam.sety(BasicViewY+irandom(ShakerView));
	    ShakeView-=1;
	}
	else
	{
		cam.setx(BasicViewX);
		cam.sety(BasicViewY);	
	}
}