//以sprite_index为基础确认character
//extra in image_index
sprite_index = SprVillager;
image_speed = 0;
//是否在缓动中
Arriving = false;
ArrivingPercent = 0; //0~1
Text = "-1"
OnTalk = true;
BlankAni = 0;//0~1
Disappearing = false;

RefreshLoc = function()
{
	x = GetViewX()-sprite_width*1.2+(sprite_width*1.15)*ArrivingPercent;
	y = GetViewY()+GetViewH()-sprite_height*0.9-(20+sprite_height*0.1)*ArrivingPercent;	
}
RefreshLoc();