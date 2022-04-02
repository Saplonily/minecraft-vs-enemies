event_inherited();
if lvl.Pause exit;
xpos += SpeedFly*cos(degtorad(DirectionFly))*tick1;
ypos -= SpeedFly*sin(degtorad(DirectionFly))*tick1;
direction = DirectionFly;
image_angle = direction
if x<=-room_width||x>=2*room_width||y<=-room_height||y>=2*room_height instance_destroy();
Row=GetRow();

