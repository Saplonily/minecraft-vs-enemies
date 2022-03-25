//新手教程询问:
if(global.PlotHead=="Level0-1Pt1")
{
    if(txt=="是")
    {
        global.PlotHead="Level0-1Pt2.Yes";
        global.Tourial = true;
    }
    else
    {
        global.PlotHead="Level0-1Pt2.No";
        global.Tourial = false;
    }
    ds_list_destroy(global.Plot);
    global.Plot = GetPlot(global.PlotHead)
    with ObjDialog
        instance_destroy();
    with ObjDialogButton
        instance_destroy();
    global.PlotProgress = 1;
    var c = ObjCharacter;
    with ObjPlotControl RefreshPlot();
    with c BlankAni=0;
}

