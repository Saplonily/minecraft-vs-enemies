if(global.PlotProgress<ds_list_size(global.Plot))
{
    global.PlotProgress+=1;
    with ObjCharacter BlankAni = 0;
    RefreshPlot();
}
else
{
    //新手教程部分
    if(global.PlotHead=="Level0-1Pt1")
    {
        if(!instance_exists(ObjDialog))
        with(instance_create_depth(0,0,GUIDepth-11,ObjDialog))
        {
            Text = "是否进入新手教程?";
            But1.txt = "是";
            But2.txt = "否";
        }
    }
    else
    {
        instance_destroy();
        lvl.GUICanTap = true;
        with ObjCharacter
        {
            Disappearing = true;
        }
    }
}

