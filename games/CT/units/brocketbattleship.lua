	unitDef = {
	  unitname            = [[brocketbattleship]],
	  name                = [[Shima Class Battleclass]],
	  description         = [[Missile Battleship - Specialized navy vessel built to fire four missiles.]],
	  acceleration        = 0.03,
	  activateWhenBuilt   = true,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 700,
	  buildCostMetal      = 560,
	  builder             = false,
	  buildPic            = [[brocketbattleship.png]],
	  buildTime           = 21,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[SHIP]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,

	
	  explodeAs           = [[MEDIUM_UNIT]],
	  floater             = true,
	  footprintX          = 5,
	  footprintZ          = 5,
	  collisionVolumeOffsets = [[0 -16 0]],
	  collisionVolumeScales  = [[74 74 240]],
	  collisionVolumeTest    = 1,
	  collisionVolumeType    = [[box]],
	  idleAutoHeal        = 0,
	  mass                = 350,
	  maxDamage           = 4000,
	  maxVelocity         = 1.8,
	  movementClass       = [[SHIP5x5]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[brocketbattleship.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[MEDIUM_UNIT]],

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"ct/shipbell",
		},
	      ok = {
		"ct/shipbell",
		},
	  },

	  --sfxtypes            = {
	
	    --explosiongenerators = {
		--"custom:orc_machinegun_flash",
		--"custom:orc_machinegun_muzzle",
	    --},
	
	  --},

	  turnRate            = 193,
	  waterline           = 5,
	  script              = [[brocketbattleship.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Large]],
	      badTargetCategory  = [[SINK FLOAT GUNSHIP]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER GUNSHIP]],
	    },

	    {
	      def                = [[Large]],
	      badTargetCategory  = [[SINK FLOAT GUNSHIP]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER GUNSHIP]],
	    },

	    {
	      def                = [[Large]],
	      badTargetCategory  = [[SINK FLOAT GUNSHIP]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER GUNSHIP]],
	    },

	    {
	      def                = [[Large]],
	      badTargetCategory  = [[SINK FLOAT GUNSHIP]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Large = {
	      name                    = [[Small Missile]],
	      areaOfEffect            = 160,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 150,
		Cruiser = 150,
		Building = 150,
		Mech = 150,
		Tank = 150,
		Aircraft = 150,
		Ship = 150,
		Sub = 150,

		Meteor = 0,
		Drone = 150,
		Spare1 = 150,
		Spare2 = 150,
		Spare3 = 150,
	      },
	
	      model                   = [[projectiles/bsmallmissile.s3o]],
	      edgeEffectiveness       = 0.5,
	      explosionGenerator      = [[custom:ct_impact_rocket]],
	      flightTime              = 4,
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 800,
	      reloadtime              = 6,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[nexuiz/rocket_fire]],
	      tolerance               = 8000,
	      trajectoryHeight        = 0.5,
	      tracks                  = false,
	      turret                  = true,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 400,
	      startVelocity           = 400,
	      weaponAcceleration      = 70,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Rocket Battleship]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 3000,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 280,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Rocket Battleship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 2000,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 140,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ brocketbattleship = unitDef })