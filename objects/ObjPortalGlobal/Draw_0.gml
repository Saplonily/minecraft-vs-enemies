draw_set_alpha(a);
gpu_set_tex_filter(false);
draw_sprite_stretched(sprite_index,image_index,0,0,800,600);
gpu_set_tex_filter(true);
draw_set_alpha(1);

