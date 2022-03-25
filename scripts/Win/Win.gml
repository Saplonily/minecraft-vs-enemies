function Win() {
	if lvl.LevelWin==false
	{
	    DebugOut("Level wined And dropped award");
	    lvl.LevelWin=true;
	    DropAward(1);
	    with ObjEnemy
	    {
	        instance_destroy(id);
	    }
	}
	else
	    DebugOut("Warning that Level wined twice!")



}
