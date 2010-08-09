	unitDef = {
	  unitname            = [[brocketplane]],
	  name                = [[Washi Type Warplane]],
	  description         = [[Rocket Warplane - Versatile anti-land aircraft.  Fires four anti-tank missiles that do little damage to buildings.]],
          amphibious          = false,
	  buildCostEnergy     = 150,
	  buildCostMetal      = 120,
	  buildPic            = [[brocketplane.png]],
	  buildTime           = 15,
	  canAttack           = true,
          canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
          canSubmerge         = false,
	  category            = [[FIXEDWING]],
          collide             = false,
	  corpse              = [[DEAD]],
          cruiseAlt           = 150,
          reclaimable         = false,

	
	  defaultmissiontype  = [[VTOL_standby]],
	  explodeAs           = [[SMALL_UNIT]],
          floater             = false,
          footprintx          = 2,
	  footprintZ          = 2,
          frontToSpeed        = 0,
	  idleAutoHeal        = 0,
          isFighter           = true,
	  maneuverleashlength = [[1280]],
	  mass                = 75,
          maxAcc              = 0.5,
	  maxDamage           = 325,
	  maxVelocity         = 7,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP SUB]],
	  objectName          = [[brocketplane.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[SMALL_UNIT]],

	  side                = [[NKG]],
	  sightDistance       = 600,
          size                = [[1]],
          sizedecay           = [[0]],
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"argh/Argh_Jet.wav",
		},

	      ok = {
		"argh/Argh_Jet.wav",
		},
	  },

          speedToFront        = 0,
          stages              = [[50]],
	  TEDClass            = [[VTOL]],
          script              = [[brocketplane.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Rocket]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 90,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[Rocket]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 90,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[Rocket]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 90,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[Rocket]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 90,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Rocket = {
	      name                    = [[Small Missiles]],
	      areaOfEffect            = 48,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 25,
		Building = 5,
		Mech = 25,
		Tank = 100,
		Aircraft = 25,
		Ship = 25,
		Sub = 25,
	      },
	
	      model                   = [[bsmallmissile.s3o]],
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      range                   = 600,
	      reloadtime              = 2,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[nexuiz/rocket_fire]],
	      tolerance               = 8000,
	      tracks                  = false,
	      turret                  = true,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 550,
	      startVelocity           = 450,
	      weaponAcceleration      = 100,
	      wobble                  = 16000,
	      turnRate                = 8000,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Rocket Plane]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 243,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 60,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Rocket Plane]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 162,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 30,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ brocketplane = unitDef })