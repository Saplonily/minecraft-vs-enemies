//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 midco = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	// midco.a < 0.5  a = 0;
	// other 就 other
	midco.a = float(midco.a > 0.1) * midco.a;
	gl_FragColor = midco;
}
