event_inherited();
draw_self();
draw_set_color(c_black)
gpu_set_tex_filter(1);
str0="你获得了一张新蓝图！"+chr(13);
str0+=chr(13)+"-"+GetWeaponName(ObjShowingCard.Weapon)+chr(13);
str0+=chr(13)+"-"+GetWeaponTips(ObjShowingCard.Weapon);
draw_text(x+30,y+40,string_hash_to_newline(str0));
gpu_set_tex_filter(0);
draw_set_color(c_white)

