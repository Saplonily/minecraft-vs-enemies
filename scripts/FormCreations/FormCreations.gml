function SetToCenter(ins)
{
	with ins
	{
		var xchange = 0;
		var ychange = 0;
	
		xchange += sprite_get_xoffset(sprite_index);
		ychange += sprite_get_yoffset(sprite_index);
		xchange -= x-GetViewX();
		ychange -= y-GetViewY();
		xchange += GetViewW()/2;
		ychange += GetViewH()/2;
		xchange -= sprite_width/2;
		ychange -= sprite_height/2;
		x += floor(xchange);
		y += floor(ychange);
	}
	
}
function CreateOptionForm()
{
	var of = instance_create_depth(0,0,GUIDepth,ObjForm);
	SetToCenter(of);
	var ct;
	//音效lable
	ct = instance_create_depth(of.x+278,of.y+157,of.depth-1,ObjLable);
	with ct
	{
		text = "音效音量调节";
		back = 0;
		scale = 2;
		color = c_black;
	}
	AddToForm(ct,of);
	//音效音量
	ct = instance_create_depth(of.x+20,of.y+157,of.depth-1,ObjRollBlankVaSoundVol);
	AddToForm(ct,of);
	//音量lable
	ct = instance_create_depth(of.x+278,of.y+88,of.depth-1,ObjLable);
	with ct
	{
		text = "音乐音量调节";
		back = 0;
		scale = 2;
		color = c_black;
	}
	AddToForm(ct,of);
	//音量条
	ct = instance_create_depth(of.x+20,of.y+88,of.depth-1,ObjRollBlankVaMusicVol);
	AddToForm(ct,of);
	//Lable
	ct = instance_create_depth(of.x+249,of.y+20,of.depth-1,ObjLableOptions);
	AddToForm(ct,of);
	//返回游戏
	ct = instance_create_depth(of.x+298,of.y+372,of.depth-1,ObjButtonBackForm);
	AddToForm(ct,of);
	//更多选项
	ct = instance_create_depth(of.x+20,of.y+372,of.depth-1,ObjButtonMoreOptions);
	AddToForm(ct,of);
	return of;
	
}
function CreateMoreOptionForm()
{
	DebugOut("MoreOptions!");
	var of = instance_create_depth(0,0,GUIDepth-1437,ObjForm);
	SetToCenter(of);
	var ct;
	//返回选项
	ct = instance_create_depth(of.x+298,of.y+372,GUIDepth-1438,ObjButtonBackMoreOption);
	AddToForm(ct,of);
	//检查更新
	ct = instance_create_depth(of.x+20,of.y+20,GUIDepth-1438,ObjButtonCheckVersion);
	AddToForm(ct,of);
	return of;

}
function CreateWhatNameForm()
{
	var of = instance_create_depth(0,0,GUIDepth,ObjForm);
	of.image_yscale = 0.5;
	SetToCenter(of);
	of.x = floor(of.x);
	of.y = floor(of.y);
	var ct;
	//Textbox
	ct = instance_create_depth(of.x+90,of.y+88,GUIDepth-1,ObjTextboxWhatsYourName);
	AddToForm(ct,of);
	//Lable
	ct = instance_create_depth(of.x+169,of.y+24,GUIDepth-1,ObjLable);
	with ct
	{
		color = c_black;
		text = "你叫什么？";
		back = 0;
		scale = 2;
	}
	AddToForm(ct,of);
	//button
	ct = instance_create_depth(of.x+169,of.y+156,GUIDepth-1,ObjButtonWhatsYourName);
	AddToForm(ct,of);
	return of;
}
function CreateSavesForm()
{
	var of = instance_create_depth(0,0,GUIDepth,ObjForm);
	of.image_xscale = 0.8;
	of.image_yscale = 0.8;
	SetToCenter(of);
	of.destory_event = function()
	{
		LoadUser(global.UserRc[|(ObjListBlank.select)]);	
	}
	var ct;
	//Lable
	ct = instance_create_depth(of.x+138,of.y+20,GUIDepth-1,ObjLable);
	with ct
	{
		text = "你是谁？";
		back = 0;
		scale = 2;
		color = c_black;
	}
	AddToForm(ct,of);
	//新建
	ct = instance_create_depth(of.x+20,of.y+228,GUIDepth-1,ObjButtonUMFNew);
	AddToForm(ct,of);
	//重命名
	ct = instance_create_depth(of.x+20,of.y+286,GUIDepth-1,ObjButtonUMFRename);
	AddToForm(ct,of);
	//删除
	ct = instance_create_depth(of.x+203,of.y+228,GUIDepth-1,ObjButtonUMFDelete);
	AddToForm(ct,of);
	//返回
	ct = instance_create_depth(of.x+203,of.y+286,GUIDepth-1,ObjButtonBackForm);
	AddToForm(ct,of);
	var list = GetUserNames();
	DebugOut("The names ListBlank get:")
	DebugOutList(list)
	ct = CreateListBlank(
	of.x+93,of.y+60,
	GUIDepth-1,1,FTNormal,
	SprBlankDark,list,ds_list_find_index(global.UserRc,global.User));
	AddToForm(ct,of)
	return of;
}
function CreatePauseForm()
{
	//偷懒了属于是
	CreateOptionForm();
}