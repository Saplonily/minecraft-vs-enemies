event_inherited();
if lvl.Pause exit;
Timer -= 1*tick1;
if Timer<=-20
    instance_destroy();
if Timer<=2*Timerm/3&&Timer>Timerm/3
    image_index = 1;
if Timer<=Timerm/3
    image_index = 2;
x= GetViewX()+GetViewW()/2;
y= GetViewY()+GetViewH()/2;

