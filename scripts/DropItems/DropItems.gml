/// @function                
/// @description             
function DropItems(){
	//用于掉落最终奖励
	lvl.DropAwardOwner = TID;
	with lvl.DropAwardOwnerpos
	{
		xpos = other.id.xpos;
		ypos = other.id.ypos;
		zpos = other.id.zpos;
	}
}