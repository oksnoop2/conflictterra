	unitDef = {
	  unitname            = [[bheavymissilemech]],
	  name                = [[Shibata Combat Support Mech MkII]],
	  description         = [[Heavy Rocket Mech - Armed to the teeth with rockets.]],
	  acceleration        = 1,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 975,
	  buildCostMetal      = 975,
	  builder             = false,
	  buildPic            = [[bheavymissilemechmkii.png]],
	  buildTime           = 51,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,

	  customParams = {
	  	RequireTech   = [[Ace Pilot's Presence]],
	  },
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  mass                = 2000,
	  maxDamage           = 1600,
	  maxSlope            = 36,
	  maxVelocity         = 3,
	  maxWaterDepth       = 22,
	  movementClass       = [[Mech4x4]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bheavymissilemechmkii.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 600,
	  smoothAnim          = true,

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

	  turnInPlace         = 1,
	  turnRate            = 1000,
	  upright             = true,
	  script              = [[bheavymissilemechmkii.lua]],
	
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
	      areaOfEffect            = 56,
		  avoidFeature            = false,
	      burst                   = 5,
	      burstrate               = 0.08,
	      cegTag                  = [[ct_missiletail_small]],
	      craterMult              = 0.25,
	      accuracy                = 100,
		  collideFriendly         = false,
	
	      damage                  = {
		--No Bonus
		default = 20,
		Cruiser = 20,
		Building = 20,
		Land = 20,
		Aircraft = 20,
		Ship = 20,
		Sub = 20,

		Meteor = 0,
		Drone = 20,
		Spare1 = 20,
		Spare2 = 20,
		Spare3 = 20,
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
	      reloadtime              = 2,
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
	      description      = [[Wreckage - Shibata Combat Support Mech MkII]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 800,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 487,
	      object           = [[wrecks/bheavymissilemechmkiiwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 14400,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Shibata Combat Support Mech MkII]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 400,
	      energy           = 0,
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 243,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 7200,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bheavymissilemech = unitDef })