	unitDef = {
	  unitname            = [[bmissilemech]],
	  name                = [[Ueda Combat Support Mech]],
	  description         = [[Anti-Mech Mech - Fast SM that fires two bursts of anti-mech rockets.]],
	  acceleration        = 1,  --1 while normal, 4 while fast
	  brakeRate           = 0.1,  --0.1 while normal, 0.4 while fast
	  buildCostEnergy     = 325,
	  buildCostMetal      = 325,
	  builder             = false,
	  buildPic            = [[bmissilemech.png]],
	  buildTime           = 17,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  explodeAs           = [[SMALL_UNIT]],
	  footprintX          = 3,
	  footprintZ          = 3,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
	  mass                = 45,
	  maxDamage           = 600,
	  maxSlope            = 36,
	  maxVelocity         = 3.5,  --3.5 while normal, 15 while fast
	  maxWaterDepth       = 22,
	  movementClass       = [[Mech3x3]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bmissilemech.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNIT]],

	  sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_missile_smokecloud",
	    },
	  },

	  side                = [[NKG]],
	  sightDistance       = 600,
	  smoothAnim          = true,
	  turnInPlace         = 1,
	  turnRate            = 4000,  --1000 while normal
	  upright             = true,
	  script              = [[bmissilemech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Anti_Mech]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[Anti_Mech]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	
	  },
	
	
	  weaponDefs          = {
	
	    Anti_Mech = {
	      name                    = [[Anti-Mech Rocket]],
	      areaOfEffect            = 48,
		  avoidFeature            = false,
	      burst                   = 3,
	      burstrate               = 0.08,
	      cegTag                  = [[ct_missiletail_small]],
	      craterMult              = 0.25,
	      accuracy                = 100,
		  collideFriendly         = false,
	
	      damage                  = {
		default = 10,
		Cruiser = 10,
		Building = 10,
		Mech = 35,
		Tank = 10,
		Aircraft = 10,
		Ship = 10,
		Sub = 10,

		Meteor = 0,
		Drone = 10,
		Spare1 = 10,
		Spare2 = 10,
		Spare3 = 10,
	      },
	
	      model                   = [[projectiles/bantimechmissile.s3o]],
	      dance                   = 75,
	      wobble                  = 2000,
	      explosionGenerator      = [[custom:ct_impact_rocket]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 600,
	      reloadtime              = 3,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[nexuiz/rocket_fire]],
	      texture2		      = [[ct_smoketrail]],
	      tolerance               = 8000,
	      tracks                  = false,
	      turret                  = true,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 550,
	      startVelocity           = 450,
	      weaponAcceleration      = 100,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Ueda Combat Support Mech]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 300,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 162,
	      object           = [[wrecks/bmissilemechwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 4800,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Ueda Combat Support Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 150,
	      energy           = 0,
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 81,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2400,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bmissilemech = unitDef })