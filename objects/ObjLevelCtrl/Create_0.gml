/// @description
#region 杂七杂八
Pause = false;
bddate = date_datetime_string(GM_build_date);
event_inherited();
ListTid = ds_list_create();
TIDMAX = 0;
//2022-1-18 14:26:05
//2022-1-19 11:03:17
pMouseType = cr_arrow;
DropAwardOwner = -1;
DropAwardOwnerpos = 
{
	xpos: 0,
	ypos: 0,
	zpos: 0
};
//视野移动参数
SpeedViewX = 0;
SpeedViewY = 0;
ShakeView = 0;
ShakerView = 7;
cam = null;

GUIExists = true;
GUICanTap = true;

MouseType = cr_default;
//红石数量
RedStone = 50;
//玩家手上拿的东西
HandItem = 0;

//调试模式
DebugModeZombie = 0;
/*2021年12月18日09:16:17*/
/*2021年1月14日23:28:37*/
//关卡是否退出中
Leaving = 0;
//是否卡牌告诉我们已经退出了
Left = 0;
Music = null;
#endregion

#region 对关卡内爆炸粒子特效初始化
var ps;
PsBoom= part_system_create () //创建爆炸粒子系统
ps = PsBoom;

var pp;
PtBoomLeft = part_type_create () //TNT残留
pp=PtBoomLeft
part_type_sprite (pp,SprBoomParticle,1,1,0)
part_type_life (pp,5/30*sec1,10/30*sec1)
part_type_alpha2(pp,1,0.3)
//gms2 2022-1-17 19:06:25
/* */
///死亡粒子效果
PsDeath = part_system_create () //创建系统
var ps = PsDeath;
PtDeath = part_type_create () //创建粒子种类(死亡)
var pp = PtDeath;
part_type_sprite (pp,SprDeathParticle,1,1,0)
part_type_direction(pp,85,95,0,5)
part_type_alpha2 (pp,1,0.5)
part_type_life (pp,60/30*sec1,100/30*sec1)
part_type_speed(pp,0.6*tick1,1.8*tick1,0,0)
part_system_depth(PsDeath,-9999);
#endregion

#region 有关选关的东西
#region 文字初始化
TDayp=T("Info->Dayp")
TDaya=T("Info->Daya")

#endregion
LevelChapter = global.LevelChapter;
LevelOrder = global.LevelIndex;
LevelName = format("{} {}{}{}",GetChapterName(LevelChapter),TDayp,LevelOrder,TDaya);
globalvar ChapterSettings;
ChapterSettings = GetChapterViewSettings(LevelChapter);
#endregion

#region 有关出怪的东西
HugeWave = 0;
FinalWave = 0;
LevelWin = false;
//初始化关卡文件读取
var LevelRcjson = 
json_decode(
FileCryptReadAll(LevelsDir+GetChapterCodeName(global.LevelChapter)+"Day"+string(global.LevelIndex)+".rc")
);
LevelRc = LevelRcjson[?"Level"];
//僵尸出怪列表
ListZombie = LevelRc[?"Zombies"];
//当前波次
Wave = 0;
ListEvents = (LevelRc[?"Zombies"]);
ListEvents = ListEvents[?"Events"];
AlarmLocked = false;

//最大波次
MAXWave = LevelRc[?"waves"];
if MAXWave%10!=0
{
    DebugOut("Error with Wave Load! Try To Check Level Rc!");
    show_error("Error with the level loader! MAXWave="+string(MAXWave),false);
}
for (var i=0;i<floor(MAXWave/10);i++)
{
    WaveFlagRise[i] = 20;
}
AlarmWave = 1000;
AlarmWaveWaitingFor = 2;
WavePusherPercent = 0;
#endregion

#region 选卡与预览
InCardChosing = true;
PreviewState = -1;
/*
-1 : 剧情
0 : 前往选卡方向
1 : 选卡停滞
2 : 卡包收缩
3 : 前往草坪
4 : 停滞草坪(障碍物，关卡特性等)
5 : 停滞草坪(标语)
6 : 停止草坪，开始,
+0偏移表示需要执行缓动
+0.5偏移表示缓动进行中
*/
XPreview = 0;
YPreview = 0;
cam = new Camera(view_camera[0],XPreview,0);
//view_camera = cam.camera;
//是否LevelCtrl本身做的所有事情(生成墓碑等是否完成)
BasicViewX = ChapterSettings.ViewStateMidX;
BasicViewY = ChapterSettings.ViewStateMidY;
InCardChosingOthersOK = false;
#endregion

#region 剧情/教程 
//结束剧情
var Head = format("Level{}-{}End",global.LevelChapter,global.LevelIndex);
HasEndPlot = PlotExists(Head);
EndPlotHead = Head;
EndPlotEnd = 0;
Head = format("Level{}-{}Pt1",global.LevelChapter,global.LevelIndex);
HasStartPlot = PlotExists(Head);
StartPlotHead = Head;
StartPlotEnd = 0;

/* */
///教程系列
//Tourial
/*
false 无教程
1 新手教程
2 驱动教程
3 星之碎片教程

*/
global.Tourial = false;
TourialProgress = 0;
TourialEnd = false;

//2022-3-8 10:03:13
//教程所需变量
TourialVars[0] = 0;
#endregion