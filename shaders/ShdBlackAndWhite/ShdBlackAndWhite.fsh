//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float v_percent;
void main()
{
	vec4 co = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	float v = (co.r*0.299+co.g*0.587+co.b*0.114);
    gl_FragColor = vec4(v*v_percent+co.r*(1.0-v_percent),v*v_percent+co.g*(1.0-v_percent),v*v_percent+co.b*(1.0-v_percent),co.a);
}
