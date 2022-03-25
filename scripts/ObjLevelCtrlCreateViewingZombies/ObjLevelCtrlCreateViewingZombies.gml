function ObjLevelCtrlCreateViewingZombies() {
	var yst = ChapterSettings.PlacingSquareY;
    for (var i = 0; i < 6; i += 1) {
		
        instance_create_depth(ChapterSettings.ZombieSpawnX + 75 * random(3), yst + 75 * random_range(1,5), 0,
        choose(ObjZombieNormal, ObjZombieLeat, ObjZombieHemlet)).InViewing = true;
    }



}