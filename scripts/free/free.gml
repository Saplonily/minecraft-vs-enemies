/// @description free(id=self.id)
/// @param id=self.id
function free() {
	if argument_count==1
	    instance_destroy(argument[0]);
	else
	    instance_destroy();



}
