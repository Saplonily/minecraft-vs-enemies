if(Going==true)
{
    Going+=1;
    GMU_Anim_New_To(id,"BlackAnim",GMU_ANIM.CUBIC,GMU_ANIM.IN,1,10,0)
}
else if(Going==2)
{
    if(!GMU_Anim_IsExists(id))
    {
        Going+=1;
        GotoChapterMap(Chapter)
		BlackAnim = 0;
    }
}

