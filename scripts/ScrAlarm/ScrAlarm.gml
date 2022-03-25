 //2022-3-17 13:58:17

function ScrAlarmInit()
{
	globalvar tick1;
	globalvar sec1;
}
function AlarmRefresh()
{
	tick1 = 30/global.SetFps;
	//设置为游戏速率随帧数变化才使用每帧都计算帧率
	sec1 = global.SetFps;
	room_speed = global.SetFps;
}