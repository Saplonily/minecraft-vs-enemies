if(ChapterAnim==0)
{
        draw_sprite(SprChapterHeadPicture,Chapter,0,0);
}
else
{
    {
        shader_set(ShdBlur);
        ShaderSendValue(ShdBlur,"_Blur",0.02);
        if(ChapterAnim>=0)
        {
            //右边的图
            draw_sprite(SprChapterHeadPicture,Chapter+1,(1-ChapterAnim)*800,0);
            //左边的图
            draw_sprite(SprChapterHeadPicture,Chapter,-ChapterAnim*800,0);
        }
        else
        {
            //右边的图
            draw_sprite(SprChapterHeadPicture,Chapter,(abs(ChapterAnim))*800,0);
            //左边的图
            draw_sprite(SprChapterHeadPicture,Chapter-1,(1-abs(ChapterAnim))*(-800),0);
        }
        shader_reset();
    }
}
if(BlackAnim!=0)
{
    var c = c_black;
    draw_rectangle_colour(800-BlackAnim*800,0,800*2-BlackAnim*800,600,c,c,c,c,0);
    
}

