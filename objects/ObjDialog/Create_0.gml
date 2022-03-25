if(lvl.PreviewState == -0.5)
{
    x=400;y=300;
}
else
{
    x=GetViewX()+GetViewW()/2;
    y=GetViewY()+GetViewH()/2;
}
But1 = instance_create_depth(x-sprite_width/2+20,y+sprite_height/8,GUIDepth-13,ObjDialogButton)
with But1
{
    image_xscale = 0.7;
    image_yscale = 0.7;
}
But2 = instance_create_depth(x+20,y+sprite_height/8,GUIDepth-13,ObjDialogButton)
with But2
{
    image_xscale = 0.7;
    image_yscale = 0.7;
}

