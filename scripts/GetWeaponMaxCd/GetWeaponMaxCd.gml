function GetWeaponMaxCd(argument0) {
	var Map = ds_list_find_value(global.WeaponsRc,argument0);
	var CD = ds_map_find_value(Map,"maxcd");
	switch (CD)
	{
	case "A":
	    return 500;
	case "B":
	    return 1500;
	case "C":
	    return 3000;
	case "Z":
	    return 5000;
	}



}
