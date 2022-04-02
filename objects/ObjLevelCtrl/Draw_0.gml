//是的没错,2022-3-28 14:55:24我才发现这里啥也没有
//所以该把LevelCtrl移到GUIDepth了
//2022-3-28 14:56:04 Saplonily接手这个项目
event_inherited();
//2022-1-18 14:26:20
//2022-1-18 14:26:27

/// @description 
event_inherited();
//Debug下的文字
var str = "";
if InDebug
{
	gpu_set_tex_filter(1);
	draw_set_font(FTPixel);
    str+=format("User Name: {0}",global.User)
    str+=chr(13)+"Wave = "+string(Wave);
    str+=chr(13)+format("fps : {},fps real: {}",fps,fps_real);
    str+=chr(13)+format("AlarmWave:{}",AlarmWave)
    str+=chr(13)+"Build: "+ bddate;
	str+=chr(13)+"Pause : "+(Pause?"true":"false")
	if keyboard_check(ord("Z"))
		draw_text(mouse_x+10,mouse_y,DebugModeZombie);
	draw_set_valign(fa_bottom);
	draw_text_transformed(cam.xpos(),cam.ypos()+cam.height(),str,0.6,0.6,0);
	draw_set_valign(fa_top);
	draw_set_font(FTNormal);
	gpu_set_tex_filter(0);
}
//关卡名字
if !InCardChosing
{
	gpu_set_tex_filter(1);
	//2022-3-8 17:27:06
    draw_set_font(FTPixel);
    draw_set_halign(fa_right);
	var lx,ly;
	lx = cam.xpos()+cam.width()/30*29;
	ly = cam.ypos()+cam.height()/20*19;
	var lpl = sprite_get_width(SprLevelPusher);
	var lph = sprite_get_height(SprLevelPusher);
	draw_set_color(c_black);
	draw_set_alpha(0.4);
	
	var awwf = (AlarmWaveWaitingFor==2)?0:1;
	draw_text(lx-20-lpl*awwf,ly+1,LevelName);
	draw_text(lx-20-lpl*awwf+1,ly,LevelName);
	draw_text(lx-20-lpl*awwf,ly-1,LevelName);
	draw_text(lx-20-lpl*awwf-1,ly,LevelName);
	
	
	draw_set_alpha(1);
	draw_set_colour(make_color_rgb(255,176,70));
	draw_text(lx-20-lpl*((AlarmWaveWaitingFor==2)?0:1),ly,LevelName);
	draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_font(FTNormal);
	gpu_set_tex_filter(0);
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