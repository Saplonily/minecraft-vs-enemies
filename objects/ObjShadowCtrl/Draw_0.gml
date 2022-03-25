with ObjLevelObjects
{
    //向影子表面绘制各自的影子
    if HasShadow
    {
        draw_sprite_ext(SprShadow,0,xpos,ypos+OffSetShadow,1.4+ScaleShadow,1,0,c_white,ChapterSettings.ChapterShadowDepth/2.5);
    }
}

