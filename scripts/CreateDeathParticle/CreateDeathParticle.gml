/// @description CreateDeathParticle(x1,x2,y1,y2,Amount)
/// @param x1
/// @param x2
/// @param y1
/// @param y2
/// @param Amount
function CreateDeathParticle(x1, x2, y1, y2, amount) {
	var centerx = (x1+x2)/2;
	var centery = (y1+y2)/2;
	var length = x2-x1;
	var height = y2-y1;
	for (var i = 0;i<amount;i++)
	part_particles_create
	(
	    lvl.PsDeath,
	    irandom_range(centerx+length*i/amount,centerx-length*i/amount),
	    irandom_range(centery+height*i/amount,centery-height*i/amount),
	    lvl.PtDeath,
	    1
	)



}
