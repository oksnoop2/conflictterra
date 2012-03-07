	unitDef = {
	  unitname            = [[bbattleship]],
	  name                = [[Ii Class Battleship]],
	  description         = [[Light Battleship - Armed with a pair of standard cannons.]],
	  acceleration        = 0.04,
	  activateWhenBuilt   = true,
	  brakeRate           = 0.06,
	  buildCostEnergy     = 1800,
	  buildCostMetal      = 1440,
	  builder             = false,
	  buildPic            = [[bbattleship.png]],
	  buildTime           = 22,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[SHIP]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  explodeAs           = [[MEDIUM_UNIT]],
	  footprintX          = 5,
	  footprintZ          = 5,
	  collisionVolumeOffsets = [[0 -5 0]],
	  collisionVolumeScales  = [[64 69 240]],
	  collisionVolumeTest    = 1,
	  collisionVolumeType    = [[box]],
	  idleAutoHeal        = 0,
	  mass                = 900,
	  maxDamage           = 4750,
	  maxVelocity         = 2,
	  minWaterDepth       = 10,
	  movementClass       = [[SHIP5x5]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bbattleship.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[MEDIUM_UNIT]],

	  --sfxtypes            = {
	
	    --explosiongenerators = {
		--"custom:orc_machinegun_flash",
		--"custom:orc_machinegun_muzzle",
	    --},
	
	  --},

	  sounds			= {
	      select = {
		"ct/shipbell",
		},
	      ok = {
		"ct/shipbell",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  turnRate            = 448,
	  waterline           = 5,
	  script              = [[bbattleship.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Naval Gun]],
	      areaOfEffect            = 96,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 250,
		Cruiser = 250,
		Building = 250,
		Mech = 250,
		Tank = 250,
		Aircraft = 250,
		Ship = 250,
		Sub = 250,

		Meteor = 0,
		Drone = 250,
		Spare1 = 250,
		Spare2 = 250,
		Spare3 = 250,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:ct_impact_cannon]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
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
	      description      = [[Wreckage - Battleship]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 3562,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 720,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Battleship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 2375,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 360,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bbattleship = unitDef })