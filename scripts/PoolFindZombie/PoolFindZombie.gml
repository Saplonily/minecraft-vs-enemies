/// @description PoolFindZombie(dsZombies,Points)
/// @param dsZombies
/// @param Points
function PoolFindZombie(argument0, argument1) {
	var obj = argument0;
	var total=0;
	var ZL = obj[?"ZombieList"];
	var WL = obj[?"WeightList"];
	var PL = obj[?"PointsList"];
	var size = ds_list_size(ZL);
	var Points = argument1;
	var Unables;
	for (var i = 0;i<size;i++)
	{
	    if(PL[|i]>Points||WL[|i]==0)
	    {
	        Unables[i] = true;
	    }
	    else
	    {
	        Unables[i] = false;
	        total+=ds_list_find_value(WL,i);
	    }
	}
	var loc = irandom(total-1);

	for (var i = 0;i<size;i++)
	{
	    if(Unables[i]==false)
	    {
	        total -= WL[|i];
	        if(total<=loc)
	        {
            
	            return ZL[|i];
	            exit;
	        }
	    }
	}
	//娌℃湁鍙敤鍍靛案
	return -1;



}
