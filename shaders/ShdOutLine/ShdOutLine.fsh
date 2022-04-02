//
// Simple 2d outline fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_view_w;  //传入视图的宽度
uniform float u_view_h;  //传入视图的高度

//将uv坐标(0-1, 0-1)映射到(0-u_view_w, 0-u_view_h)上
vec2 ViewToTex(vec2 uv)
{
    return vec2(uv.x / u_view_w, uv.y / u_view_h);
}

void main()
{
    vec2 uv = vec2(v_vTexcoord.x * u_view_w, v_vTexcoord.y * u_view_h);
	
    vec4 c = texture2D( gm_BaseTexture, ViewToTex(uv) ) * v_vColour;
    if(c.a >= 0.5)
	{
        gl_FragColor = c;
    }
    else
	{
        c = vec4(0.0, 0.0, 0.0, 0.0);

        for(int i = 0;i < 1;++i){
            c += texture2D( gm_BaseTexture, ViewToTex(uv + float(i) * vec2(-1.0, -1.0)));
            c += texture2D( gm_BaseTexture, ViewToTex(uv + float(i) * vec2(0.0, -1.0)));
            c += texture2D( gm_BaseTexture, ViewToTex(uv + float(i) * vec2(1.0, -1.0)));
            c += texture2D( gm_BaseTexture, ViewToTex(uv + float(i) * vec2(-1.0, 0.0)));
            c += texture2D( gm_BaseTexture, ViewToTex(uv + float(i) * vec2(0.0, 0.0)));
            c += texture2D( gm_BaseTexture, ViewToTex(uv + float(i) * vec2(1.0, 0.0)));
            c += texture2D( gm_BaseTexture, ViewToTex(uv + float(i) * vec2(-1.0, 1.0)));
            c += texture2D( gm_BaseTexture, ViewToTex(uv + float(i) * vec2(0.0, 1.0)));
            c += texture2D( gm_BaseTexture, ViewToTex(uv + float(i) * vec2(1.0, 1.0)));
        }
        c = c / 9.0 / 1.0;
        if(c.a > 0.0)
		{
            gl_FragColor = vec4(1.0, 1.0, 1.0, 0.4);
		}
        else
		{
            gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);
		}
    }

}