//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float _Blur;


vec4 SampleSpriteTexture(vec2 uv)
{
    float offset = _Blur * 0.0625;
    
    // 左上
    vec4 returnv= texture2D (gm_BaseTexture, vec2(uv.x - offset,uv.y - offset)) * 0.0947416;
    // 上
    returnv+= texture2D(gm_BaseTexture,vec2(uv.x,uv.y - offset)) * 0.118318;
    // 右上
    returnv+= texture2D(gm_BaseTexture,vec2(uv.x + offset,uv.y + offset)) * 0.0947416;
    // 左
    returnv+= texture2D(gm_BaseTexture,vec2(uv.x - offset,uv.y)) * 0.118318;
    // 中
    returnv+= texture2D(gm_BaseTexture,vec2(uv.x,uv.y)) * 0.147761;
    // 右
    returnv+= texture2D(gm_BaseTexture,vec2(uv.x + offset,uv.y)) * 0.118318;
    // 左下
    returnv+= texture2D (gm_BaseTexture, vec2(uv.x - offset,uv.y + offset)) * 0.0947416;
    // 下
    returnv+= texture2D(gm_BaseTexture,vec2(uv.x,uv.y + offset)) * 0.118318;
    // 右下
    returnv+= texture2D(gm_BaseTexture,vec2(uv.x + offset,uv.y - offset)) * 0.0947416;
    return returnv;
}
void main()
{
    gl_FragColor = v_vColour * SampleSpriteTexture(v_vTexcoord);
}









