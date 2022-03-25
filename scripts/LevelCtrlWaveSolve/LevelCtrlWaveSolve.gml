function LevelCtrlWaveSolve() {

	var AllPoints = (0.6*(logn(5,Wave)+power(Wave,0.8))+1);
	AllPoints*=100
	AllPoints*=HugeWave+1
	var preRow = -1;
	while AllPoints>0
	{
	    var Zombie = PoolFindZombie(ListZombie,AllPoints);
	    if(Zombie!=-1)
	    {
	        var Row;
	        do{
	            Row = irandom(4)+1;
	        }
	        until(Row!=preRow)
	        SummonZombie(Zombie,Row);
	        preRow = Row;
	        AllPoints -= GetEnemyPoints(Zombie);
	    }
	    else
	    {
	        AllPoints = 0;
	    }
	}

	var Lc;
	Lc = ds_list_find_index(ListEvents[|0],Wave);
	if(Lc!=-1)
	{
	    var Events=ListEvents[|(Lc+1)];
	    var EventsNum = ds_list_size(Events);
	    var i;
	    for(i=0;i<EventsNum;i+=1)
	    {
	        var Obj = Events[|i];
	        var name = Obj[?"name"]
	        switch(name)
	        {
	            case "ChangeWeightList":
	                var ls = Obj[?"Object"];
	                if(!is_undefined(ls))
	                {
	                    ds_list_copy(ListZombie[?"WeightList"],ls);
	                }
                
                
	            break;
	        }
	    }
	}



}
