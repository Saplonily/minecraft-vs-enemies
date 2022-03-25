function OnSameLine(ID1, ID2) {
	//OnSameLine(Id1,Id2)
	var Height;
	if (ID1.id.sprite_height>ID2.id.sprite_height)
	    Height = ID1.sprite_height;
	else
	    Height = ID2.sprite_height;
	var rt = (ID1.Row==ID2.Row)&&(Dsum(ID1.zpos,ID2.zpos)<Height);
	return rt;

}
