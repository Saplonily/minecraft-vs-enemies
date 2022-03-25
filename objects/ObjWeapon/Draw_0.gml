event_inherited();

draw_self();

if Light
{
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1)
    gpu_set_blendmode(bm_normal)
}

