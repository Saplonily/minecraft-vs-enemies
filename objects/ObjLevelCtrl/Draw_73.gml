/// @description 
event_inherited();
//Debug下的文字
var str = "";
if InDebug
{
    str+=format("User Name: {0}",global.User)
    str+=chr(13)+"Wave = "+string(Wave);
    str+=chr(13)+format("fps : {},fps real: {}",fps,fps_real);
    str+=chr(13)+format("AlarmWave:{}",AlarmWave)
    str+=chr(13)+"Build: "+ bddate;
	str+=chr(13)+"Pause : "+(Pause?"true":"false")
	if keyboard_check(ord("Z"))
		draw_text(mouse_x+10,mouse_y,DebugModeZombie);
}
draw_set_valign(fa_bottom);
draw_text(cam.xpos(),cam.ypos()+cam.height(),str);
draw_set_valign(fa_top);
//关卡名字
if !InCardChosing
{
	//2022-3-8 17:27:06
	var lx,ly;
	lx = cam.xpos()+cam.width()/30*29;
	ly = cam.ypos()+cam.height()/20*19;
    draw_set_font(FTBig);
    draw_set_halign(fa_right);
    draw_set_colour(c_white)
	var lpl = sprite_get_width(SprLevelPusher);
	var lph = sprite_get_height(SprLevelPusher);
		draw_text(lx-20-lpl*((AlarmWaveWaitingFor==2)?0:1),ly,LevelName);
    draw_set_halign(fa_left);
    draw_set_font(FTNormal);
    //绘制关卡进度条
	if(!(AlarmWaveWaitingFor==2))
	{
	    draw_sprite(SprLevelPusher,1,lx-lpl+5,ly)
	    WavePusherPercent += (Wave/MAXWave-WavePusherPercent)/10
	    draw_sprite_part_ext(
	        SprLevelPusher,
	        0,
	        0,
	        0,
	        WavePusherPercent*160,
	        32,
	        lx+5,
	        ly,
	        -1,
	        1,
	        c_white,
	        1
	    );
	    //绘制旗子
	    var bx = lx+160-lpl+5;
	    var by = ly;
	    for (var i = 0;i<floor(MAXWave/10);i++)
	    {
	        draw_sprite(SprFlag,0,bx-(i+1)*(160/(MAXWave/10)),by-(20-WaveFlagRise[i]))
	    }
	}
}