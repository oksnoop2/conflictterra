	unitDef = {
	  unitname            = [[bheavymissilemech]],
	  name                = [[Shibata Combat Support Mech MkII]],
	  description         = [[Heavy Anti-Mech Mech - Heavy SM armed to the teeth with anti-mech missiles. - Build Limit: 10]],
	  acceleration        = 0.1,
	  brakeRate           = 0.24,
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
	  minCloakDistance    = 75,
	  movementClass       = [[Mech4x4]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
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
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
	    },
	
	  },

	  turnInPlace         = 1,
	  turnRate            = 1000,
	  upright             = true,
	  unitRestricted      = 10,
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
	      name                    = [[Anti-Mech Missile]],
	      areaOfEffect            = 56,
	      burst                   = 5,
	      burstrate               = 0.08,
	      cegTag                  = [[ct_missiletail_small]],
	      craterMult              = 0.25,
	      accuracy                = 100,
	
	      damage                  = {
		default = 20,
		Cruiser = 20,
		Building = 20,
		Mech = 75,
		Tank = 20,
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
	      explosionGenerator      = [[custom:PLASMA_Expl]],
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
	      description      = [[Wreckage - Heavy Missile Mech]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 975,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 1600,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Heavy Missile Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 650,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 800,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bheavymissilemech = unitDef })