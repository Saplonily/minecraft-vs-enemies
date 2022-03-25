/// @description DropCard(CardId)
/// @param CardId
function DropAward(argument0) {
	DebugOut(format("CardId : {}",argument0));
	var ow = Tid(lvl.DropAwardOwner);
	if(DropAwardOwner==-1)
	{
		DebugOut("Warning : Not Exits Award Owner");
	}
	with LevelThingsCreate(DropAwardOwnerpos.xpos,DropAwardOwnerpos.ypos,DropAwardOwnerpos.zpos,ObjBluePrint)
	{
	    xspeed = (3+random(1))*sign(choose(1,-1))
	    zspeed = 2;
	    Weapon = argument0;
	    Price = GetWeaponPrice(Weapon);
	    global.AwardType = Weapon;
		//检测是否超出格子的0.2范围
		var xb = GetPlacingSquareX()+GetPlacingSquareWidth();
		var xs = GetPlacingSquareX();
		var yb = GetPlacingSquareY()+GetPlacingSquareHeight();
		var ys = GetPlacingSquareY();
		if(xpos>xb)
		{
			xpos = xb;
			zspeed = 3;
			xspeed = -3;
		}
		if(xpos<xs)
		{
			xpos = xs;
			zspeed = 3;
			xspeed = 3;
		}
		if(ypos<ys)
		{
			ypos=ys;
			zspeed = 3;
			yspeed = 3;
		}
		if(ypos>yb)
		{
			ypos = yb;
			zspeed = 3;
			yspeed = -3;
		}
	}



}
