/// @description 
timer = 2;
sprite_index = SprLoading;
x = room_width/2-sprite_width/2;
y = room_height/2-sprite_height/2;
msg="";
shdable = shaders_are_supported();
if(!shdable)
{
	msg = "Error : \nYour device is not support with shader.\nPlease check your video card."
	window_set_caption("Minecraft vs enemies is in error.")
	x = -1000;
}