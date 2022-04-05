/// @description MessageBox(Text,Scale=1,Always=true)
/// @param Text
/// @param Scale=1
/// @param Always=true
function MessageBox() {
	var mi = instance_exists(ObjMessageBox);
	var idd;
	if !mi
	    idd = instance_create_depth(0,0,GUIDepth+1,ObjMessageBox);
	else
	    idd = ObjMessageBox.id;
	idd.Text = argument[0];
	if(argument_count>=2) idd.Scale=argument[1]
	if(argument_count>=3) idd.Always=argument[2]
	return idd;



}
