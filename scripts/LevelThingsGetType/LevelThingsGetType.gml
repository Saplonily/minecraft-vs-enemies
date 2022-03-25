/// @description LevelThingsGetType(object_index)
function LevelThingsGetType() {
	var type = object_index;
	while !(object_get_parent(type)==ObjLevelObjects)
	{
	    type=object_get_parent(type)
	}
	return type;



}
