function macros(){
	#region version
		#macro versionA 1
		#macro versionB 2
		#macro versionC "alpha"
	#endregion
	
	
	#region 杂七杂八
		#macro AssetsDir "LIB\\Assets\\"
		#macro BoxSize 75
		#macro c_lightgreen make_color_rgb
		#macro inf 999999999
		#macro Loop 1
		#macro lvl ObjLevelCtrl
		#macro ctc ObjMainMenuContorl
		#macro NotLoop 0
		#macro null 0
		#macro SdgrSound 0
		#macro LevelsDir "LIB\\Levels\\"
		#macro KeyW ord("W")
		#macro KeyA ord("A")
		#macro KeyS ord("S")
		#macro KeyD ord("D")
	#endregion
	#region macro,但是是枚举
		
		#macro ItemNull 0
		#macro ItemCard 1
		#macro ItemPickaxe 2
		
		#macro HurtTypeNormal 1
		#macro HurtTypeVoid 0
		
		#macro WeaponDispener 0
		#macro WeaponFurnace 1
		#macro WeaponObsidian 2
		#macro WeaponHeavyPlate 3
		
		#macro EnemyZombieNormal 0
		#macro EnemyZombieLeat 1
		#macro EnemyZombieHemlet 2
		
		#macro BoomTypeVoid 0
		#macro BoomTypeParticle 1
		#macro BoomTypeParticleAddSound 2
		#macro BoomTypeNormal 3
		
		#macro ChapterGrasswalk 0
		
	#endregion
	
	#macro GUIDepth -1000 //lowest
}