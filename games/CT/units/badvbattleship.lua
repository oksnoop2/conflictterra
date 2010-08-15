	unitDef = {
	  unitname            = [[badvbattleship]],
	  name                = [[Mori Class Battleship]],
	  description         = [[Heavy Battleship - State-of-the-art battleship armed with four powerful naval cannons. - Build Limit: 5]],
	  acceleration        = 0.03,
	  bmcode              = [[1]],
	  brakeRate           = 0.03,
	  buildCostEnergy     = 2300,
	  buildCostMetal      = 1840,
	  builder             = false,
	  buildPic            = [[badvbattleship.png]],
	  buildTime           = 30,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[SHIP]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[BIG_UNIT]],
          floater             = true,
	  footprintX          = 7,
	  footprintZ          = 7,
	  idleAutoHeal        = 0,
          collisionVolumeOffsets = [[0 0 0]],
          collisionVolumeScales  = [[80 80 288]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  maneuverleashlength = [[640]],
	  mass                = 2300,
	  maxDamage           = 5650,
	  maxVelocity         = 1.8,
	  minCloakDistance    = 75,
	  minWaterDepth       = 15,
	  movementClass       = [[HeavySHIP]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[FIXEDWING SATELLITE GUNSHIP SUB]],
	  objectName          = [[badvbattleship.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 750,
	    
	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
	    },
	
	  },

	  sounds			= {
	      select = {
		"ct/shipbell",
		},
	      ok = {
		"ct/shipbell",
		},
	  },

	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[SHIP]],
	  turnRate            = 90,
	  workerTime          = 0,
          waterline           = 5,
	  unitRestricted      = 5,
          script              = [[badvbattleship.lua]],
	
	  weapons                = {
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs             = {
	
	    Cannon = {
	      name                    = [[Naval Gun]],
	      areaOfEffect            = 96,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 200,
		Building = 200,
		Mech = 200,
		Tank = 200,
		Aircraft = 200,
		Ship = 200,
		Sub = 50,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      minbarrelangle          = [[-25]],
	      range                   = 1000,
	      reloadtime              = 7,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      sprayAngle              = 768,
	      tolerance               = 4096,
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Advanced Battleship]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 4237.5,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 920,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Advanced Battleship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 2825,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 7,
	      footprintZ       = 7,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 460,
	      object           = [[b7x7heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvbattleship = unitDef })