/// @description 

if pMouseType!=MouseType
{
	window_set_cursor(MouseType);
}
pMouseType = MouseType;
MouseType = cr_arrow;