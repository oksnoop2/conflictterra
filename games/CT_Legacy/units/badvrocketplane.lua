	unitDef = {
	  unitname            = [[badvrocketplane]],
	  name                = [[Daishi Type Warplane]],
	  description         = [[Advanced Rocket Warplane - Powerful anti-land aircraft that fires a barrage of missiles that do little damage to buildings. - Build Limit: 10]],
          amphibious          = false,
	  buildCostEnergy     = 300,
	  buildCostMetal      = 240,
	  buildPic            = [[badvrocketplane.png]],
	  buildTime           = 22,
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
	  maxDamage           = 425,
	  maxVelocity         = 8,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[badvrocketplane.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[SMALL_UNIT]],

	  sounds			= {
	      select = {
		"argh/Argh_Jet.wav",
		},

	      ok = {
		"argh/Argh_Jet.wav",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 440,
          size                = [[1]],
          sizedecay           = [[0]],
	  smoothAnim          = true,
          speedToFront        = 0,
          stages              = [[50]],
	  TEDClass            = [[VTOL]],
	  unitRestricted      = 10,
          script              = [[badvrocketplane.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Rocket]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 90,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Rocket = {
	      name                    = [[Missile Barrage]],
	      areaOfEffect            = 48,
	      burst                   = 9,
	      burstrate               = 0.08,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 100,
		Building = 10,
		Mech = 100,
		Tank = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 5,
	      },
	
	      model                   = [[bsmallmissile.s3o]],
	      dance                   = 20,
	      wobble                  = 7000,
	      edgeEffectiveness       = 0.5,
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 2.5,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      range                   = 440,
	      reloadtime              = 10,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[nexuiz/rocket_fire]],
	      tolerance               = 500,
	      turret                  = true,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 250,
	      startVelocity           = 100,
	      weaponAcceleration      = 100,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Advanced Rocket Plane]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 318,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 120,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Advanced Rocket Plane]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 212,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 60,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvrocketplane = unitDef })