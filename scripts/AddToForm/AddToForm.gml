/// @description AddToForm(control,Form)
/// @param control
/// @param Form
function AddToForm(control, Form) {
	ds_list_add(Form.include,control);
	control.form = Form.id;


}
