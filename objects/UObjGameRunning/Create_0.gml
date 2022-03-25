#region Debug输出的文件
//gml_release_mode(true)
globalvar DebugFile,DebugFileName;
var File = 
format
(
    "Log\\{0}.{1}.{2} {3}.{4}.{5} Game.mlog",
    current_year,
    current_month,
    current_day,
    current_hour,
    current_minute,
    current_second
);
DebugFile = file_text_open_write(File);
DebugFileName = File;
DebugOut(format("DebugFile Opening.....",DebugFile))
global.DoDebugOutFormsInfo = false;
#endregion
#region Pre兼容性检测
var v = 
os_is_network_connected();
DebugOut(format("Internet State:{}",v))
v = os_get_language();
DebugOut(format("System Language:{}",v))
v = os_get_region();
DebugOut(format("System Region:{}",v))
v = os_version;
DebugOut(format("System Versiom:{}",v))
#endregion

#region DebugMode
globalvar InDebug;InDebug = true;
DebugOut(format("InDebugMode: {0}",global.InDebug));
if InDebug
    show_debug_overlay(1);
#endregion

#region 用户信息文件


var File = "GameSettings.ini"
//获取global.UserRc这个列表
GetUsers();

ini_open(File)
var select = ini_read_string("Users","Select","null");
ini_close();
//global.User挂载存档文件名,包含.dat
//global.UserRc挂载存档名称列表,包含.dat

global.User = select;
global.NotHaveUserName = global.User == "null";
global.UserName = GetUserName(global.User)
DebugOut("User name->"+global.UserName);
DebugOut("User file->"+global.User);
//初始化设置
global.Language = "ChineseS";
DoMusicReg();
global.music = -1;
global.musicVolume = 1;
global.musicVolumeAudio = 1;
//格式 章节_关卡
global.LevelProgress = "1_1";
global.Language = "ChineseS";
global.SetFps = 40;
if global.NotHaveUserName
{
    global.User = "null";
    DebugOut("---new player---")
    DebugOut("Do not have a user name now,show GUI to the player.");
    DebugOut("----------------")
}
else
{
	LoadUser(global.User)	
}

#endregion
#region 字体
DebugOut("Loading Fonts...");
var c = get_timer();
globalvar FTNormal;
FTNormal = font_add(AssetsDir+"FontSongTi.ttf",12,0,0,0,65535);
globalvar FTBig;
FTBig = font_add(AssetsDir+"FontSongTi.ttf",16,0,0,0,65535);
globalvar FTBlock;
FTBlock = font_add(AssetsDir+"BlockPixel.ttf",20,0,0,0,65535);
globalvar FTBlockBig;
FTBlockBig = font_add(AssetsDir+"BlockPixel.ttf",40,0,0,0,65535);
globalvar FTMinecraftNumbers;
FTMinecraftNumbers = font_add_sprite(SprMinecraftFontNumbers,ord("0"),ord("9"),3)


draw_set_font(FTNormal);
DebugOut(format("Time used: {}s",(get_timer()-c)/1000000));
#endregion
#region 全局数据列表读取

global.WeaponsRc  = ds_list_create();
DoRegWeapons();
var EnemysRcjson  = json_decode(FileCryptReadAll("LIB\\Enemys.Rc"));
global.EnemysRc   = EnemysRcjson [?"Enemys"]
#endregion
#region 注册系列
//注册章节
global.ChaptersRc = ds_list_create();
DoRegChapters();

//语言文本
var TextsRcjson   = 
    json_decode(
    FileCryptReadAll
        (format("LIB\\{}Texts.Rc",global.Language))
    );
global.TextsRc    = TextsRcjson  [?(global.Language)]
DebugOut(format("TextsRcLoad By {} [language:{}]",TextsRcjson,global.Language));

global.PlotRc = (format("LIB\\{}Plot.Rc",global.Language));
#endregion
#region GUI设置

global.FormFocus = -1;
//-1表示无窗口

//全局信息池
global.MessagePool = ds_map_create();
//全局窗口表(用于)
global.FormsDepth = ds_list_create();


#endregion

///进入主界面
room_goto(RoomMain);
DebugOut("Have Gotten Into MainRoom");

//2022-1-26 17:03:00
//2022-3-8 09:41:51