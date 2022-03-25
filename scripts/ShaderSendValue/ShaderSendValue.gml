/// @description ShaderSendValue(ShaderId,VariableNameInShader,Value)
/// @param ShaderId
/// @param VariableNameInShader
/// @param Value
function ShaderSendValue(argument0, argument1, argument2) {
	shader_set_uniform_f(shader_get_uniform(argument0,argument1),argument2);



}
