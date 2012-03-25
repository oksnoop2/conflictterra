	unitDef = {
	  unitname            = [[bheavymissiletank]],
	  name                = [[Okuma Type Tank]],
	  description         = [[Heavy Anti-Mech Tank - Hardy tank that shoots multiple anti-mech rockets.]],
	  acceleration        = 0.5,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 600,
	  buildCostMetal      = 600,
	  builder             = false,
	  buildPic            = [[bheavymissiletank.png]],
	  buildTime           = 24,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,

	  customParams = {
	  	RequireTech   = [[General's Presence]],
	  },
	
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  mass                = 390,
	  maxDamage           = 2250,
	  maxSlope            = 18,
	  maxVelocity         = 2,
	  maxWaterDepth       = 22,
	  movementClass       = [[TANK4x4]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bheavymissiletank.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 800,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_missile_smokecloud",
	    },
	
	  },

	  trackOffset         = 8,
	  trackStrength       = 10,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 42,
	  turnInPlace         = 1,
	  turnRate            = 500,
	  script              = [[bheavymissiletank.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Large]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[Large]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[Anti_Mech]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Large = {
	      name                    = [[Large Anti-Mech Rocket]],
	      areaOfEffect            = 160,
		  avoidFeature            = false,
	      cegTag                  = [[ct_missiletail_big]],
	      craterMult              = 0.25,
		  collideFriendly         = false,
	
	      damage                  = {
		default = 100,
		Cruiser = 100,
		Building = 100,
		Mech = 350,
		Tank = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,

		Meteor = 0,
		Drone = 100,
		Spare1 = 100,
		Spare2 = 100,
		Spare3 = 100,
	      },
	
	      model                   = [[projectiles/blargemissile.s3o]],
	      edgeEffectiveness       = 0.5,
	      explosionGenerator      = [[custom:ct_impact_missile_large]],
	      flightTime              = 4,
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 600,
	      reloadtime              = 6,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[nexuiz/rocket_fire]],
	      texture2                = [[ct_smoketrail]],
	      tolerance               = 8000,
	      trajectoryHeight        = 0.5,
	      tracks                  = false,
	      turret                  = true,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 400,
	      startVelocity           = 400,
	      weaponAcceleration      = 70,
	    },

	    Anti_Mech = {
	      name                    = [[Anti-Mech Rocket]],
	      areaOfEffect            = 48,
		  avoidFeature            = false,
	      cegTag                  = [[ct_missiletail_small]],
	      craterMult              = 0.25,
		  collideFriendly         = false,
	
	      damage                  = {
		default = 35,
		Cruiser = 35,
		Building = 35,
		Mech = 75,
		Tank = 35,
		Aircraft = 35,
		Ship = 35,
		Sub = 35,

		Meteor = 0,
		Drone = 35,
		Spare1 = 35,
		Spare2 = 35,
		Spare3 = 35,
	      },
	
	      model                   = [[projectiles/bantimechmissile.s3o]],
	      explosionGenerator      = [[custom:ct_impact_rocket]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 600,
	      reloadtime              = 1,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[nexuiz/rocket_fire]],
	      texture2                = [[ct_smoketrail]],
	      tolerance               = 8000,
	      tracks                  = false,
	      trajectoryHeight        = 0.5,
	      turret                  = true,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 550,
	      startVelocity           = 450,
	      weaponAcceleration      = 100,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Okuma Type Tank]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 1125,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 300,
	      object           = [[wrecks/bheavymissiletankwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 9000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Okuma Type Tank]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 562,
	      energy           = 0,
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 150,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 4500,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bheavymissiletank = unitDef })