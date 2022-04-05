function GetUserNames()
{
	var rt = ds_list_create();
	for(var i = 0;i<ds_list_size(global.UserRc);i++)
	{
		ds_list_add(rt,GetUserName(global.UserRc[|i]));
	}
	return rt;
}
function GetUsers()
{
	if(variable_global_exists("UserRc"))
	if(ds_exists(global.UserRc,ds_type_list))
	{
		ds_list_destroy(global.UserRc);
		DebugOut("reload users...")
	}
	global.UserRc = ds_list_create();
	var fn;
	for(fn = file_find_first(working_directory + "\\Users\\*.dat",fa_archive);fn != "";fn = file_find_next())
	{
		ds_list_add(global.UserRc,fn);	
	}
	file_find_close();
	DebugOut("Finded list:")
	DebugOutList(global.UserRc);
}
//以下的file都自带.dat

function GetUserName(file)
{
	if(file_exists("Users\\"+file))
	{
		ini_open("Users\\"+file);
		var name = ini_read_string("Settings","Name","null");
		ini_close();
		return name;
	}
	else
		return "null";
}
//返回用户文件名称,包含.dat

function AddUser(UserName)
{
	var fn = base64_encode(UserName)+".dat";
	var fname = "Users\\"+fn;
	file_create(fname);
	var f = file_text_open_write(fname);
	file_text_write_string(f,"[Settings]\nName="+UserName);
	file_text_close(f);
	GetUsers();
	return fn;
}

function SaveUserAllInfos()
{
	ini_write_string("Settings","Language",global.Language);
	ini_write_string("Infos","LevelProgress",global.LevelProgress);
	ini_write_real("Settings","MusicVolume",global.musicVolume);
	ini_write_real("Settings","SoundVolume",global.musicVolumeAudio);
	ini_write_real("Settings","SetFps",global.SetFps);
	ini_write_real("Settings","WindowWidth",window_get_width());
	ini_write_real("Settings","WindowX",window_get_x())
	ini_write_real("Settings","WindowY",window_get_y())
}

function LoadUser(file)
{
    //用户具体内容读取
	var File = "Users\\" + file;
	DebugOut("Stating load user .dat file,file name is " + File);
	ini_open(File)
	global.Language = ini_read_string("Settings","Language","ChineseS");
	if !(file_exists(format("LIB\\{}Texts.Rc",global.Language)))
	{
	    DebugOut("Language Rc file does not exists!")
	    DebugOut("Automatic select to ChineseS!")
	    global.Language = "ChineseS";
	}
	DebugOut(format("Select Language: {}",global.Language));
	global.musicVolume = ini_read_real("Settings","MusicVolume",1);
	SetMusicVolume(global.musicVolume);
	global.musicVolumeAudio = ini_read_real("Settings","SoundVolume",0.8);
	SetSoundVolume(global.musicVolumeAudio);
	global.SetFps = ini_read_real("Settings","SetFps",40);
	WindowWidth = ini_read_real("Settings","WindowWidth",800);
	window_set_size(WindowWidth,WindowWidth/8*6);
	var xx = ini_read_real("Settings","WindowX",-1);
	var yy = ini_read_real("Settings","WindowY",-1);
	if xx!=-1
	{
		window_set_position(xx,yy);
	}
	ScrAlarmInit();
	AlarmRefresh();
	ini_close();
	global.UserName = GetUserName(File);
	global.User = file;
}