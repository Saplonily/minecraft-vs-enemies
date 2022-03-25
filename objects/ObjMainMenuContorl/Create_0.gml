MusicPlay(MusicCrazyDave);
MouseType = cr_arrow;
if global.NotHaveUserName
{
	var f = CreateWhatNameForm();
	tryFocusOn(f);
}
pMouseType = MouseType;
ViewMoving = 0;
ViewToxPos = 0;
ViewToyPos = 0;
ViewCurxPos = 0;
ViewCuryPos = 0;
ViewPrexPos = 0;
ViewPreyPos = 0;
ViewAnim = 0;
cam = new Camera(view_camera[0],0,0);
SpriteBehindDoor = SprMainMenuSceneDay;
SpriteBehindGlass = SprMainMenuSceneGlassDay;
AdventureGoing = false;
TimerAdventureGoing = 0;