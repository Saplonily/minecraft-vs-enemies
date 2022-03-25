/// @description ResourcePackLoad(ResPakFileName)
/// @param ResPakFileName
function ResourcePackLoad(argument0) {


	var SpriteAmount = 0;

	while (sprite_exists(SpriteAmount))
	{
	    SpriteAmount++;
	}

	var zip = zip_unzip(argument0,"Temp\\");
	if zip<=0
	{
	    DebugOut("Resource Pack Load Failed"); 
	}
	for (var i = 0;i<SpriteAmount;i++)
	{
	    var FileName = "Temp\\"+sprite_get_name(i)+".png";
	    var Xo = sprite_get_xoffset(i);
	    var Yo = sprite_get_yoffset(i);
	    if (file_exists(FileName))
	    {
	        sprite_replace(i,FileName,sprite_get_number(i)-1,0,0,Xo,Yo);
	        DebugOut("Sprite Replaced");
	    }
    
	}

	directory_destroy("Temp\\")



}
