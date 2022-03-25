/// @description 
audio_play_sound(SndClick,SdgrSound,NotLoop);
var name = "";
with ObjTextboxWhatsYourName
	name = tte_ext_input_get_text();
var can = true;
var tip="";
var len = string_byte_length(name);
if(len>=15)
{
	tip = "过长的昵称！";
	can = false;
}
if(len<=1)
{
	tip = "过短的昵称！"
	can = false;
}
if(string_pos("=",name))
{
	tip	= "昵称中不可出现\"=\"字符";
	can = false;
}


if (can)
{
	var f = AddUser(name);
	LoadUser(f);
	DebugOut("UserName entered:" + GetUserName(f));
	DestoryForm(form);
	tryFocusOn(-1)
}
else
{
	DebugOut("Text input warning->"+tip);
	
	
}