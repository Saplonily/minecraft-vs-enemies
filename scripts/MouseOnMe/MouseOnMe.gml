/// @description MouseOnMe()
function MouseOnMe() {
	if argument_count==1&&argument[0]==1
	    return collision_point(mouse_x,mouse_y,id,1,0);
	else
	    return collision_point(mouse_x,mouse_y,id,0,0);



}
