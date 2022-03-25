function DrawLightSelf() {
	gpu_set_blendmode(bm_add);
	draw_set_alpha(0.1);
	draw_self();
	draw_set_alpha(1);
	gpu_set_blendmode(bm_normal);



}
