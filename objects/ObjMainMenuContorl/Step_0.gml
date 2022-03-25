/// @description 
if keyboard_check_pressed(ord("U"))
{
	CreateFormMessage("你按了U键!")	
}


var em = !GMU_Anim_IsExists(id);
var en = (ViewCurxPos==ViewToxPos&&ViewCuryPos==ViewToyPos);



//选项视野移动
if ViewMoving&&em
{
	var o = GMU_Anim_New(id,"ViewAnim",GMU_ANIM.SINE,GMU_ANIM.IN_OUT,0,1,9,0);
	o[0]._func = function()
	{
		with ctc
			ViewMoving=false;
	}
}
if(en)
{
	ViewPrexPos = ViewCurxPos;
	ViewPreyPos = ViewCuryPos;
	ViewAnim = 0;
}
ViewCurxPos = ViewPrexPos+(ViewToxPos-ViewPrexPos)*ViewAnim;
ViewCuryPos = ViewPreyPos+(ViewToyPos-ViewPreyPos)*ViewAnim;
cam.setx(ViewCurxPos);
cam.sety(ViewCuryPos);
if(AdventureGoing)
{
	TimerAdventureGoing += 1*tick1;	
}
if(TimerAdventureGoing>=120)
{
	room_goto(RoomChapters);
	tryFocusOn(-1)
}