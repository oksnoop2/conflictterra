	unitDef = {
	  unitname            = [[bamphmech]],
	  name                = [[Ukita Hover Combat Mech]],
	  description         = [[Hover Assault Mech - Hover-equipped "mech" that is able to instantly move between land and sea.  Armed with both missiles and torpedoes.]],
	  acceleration        = 0.08,
	  bmcode              = [[1]],
	  brakeRate           = 0.11,
	  buildCostEnergy     = 240,
	  buildCostMetal      = 192,
	  builder             = false,
	  buildPic            = [[bamphmech.png]],
	  buildTime           = 25,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canHover            = true,
	  canstop             = [[1]],
	  category            = [[HOVER]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[SMALL_UNIT]],
	  footprintX          = 2,
	  footprintZ          = 2,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
	  mass                = 120,
	  maxDamage           = 550,
	  maxSlope            = 36,
	  maxVelocity         = 1.75,
	  minCloakDistance    = 75,
	  movementClass       = [[LightHOVER]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP]],
	  objectName          = [[bamphmech2.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNIT]],

	  side                = [[NKG]],
	  sightDistance       = 600,
          sonarDistance       = 600,
	  smoothAnim          = true,
	  steeringmode        = [[1]],

	  sounds			= {
	      select = {
		"ct/hoverengine",
		},
	      ok = {
		"ct/hoverengine",
		},
	  },

	  TEDClass            = [[TANK]],
	  turninPlace         = 0,
	  turnRate            = 525,
	  workerTime          = 0,
          script              = [[bamphmech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Launcher]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[Launcher]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[Torpedo]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 45,
	      onlyTargetCategory = [[SWIM SUB FLOAT SHIP]],
	    },

	    {
	      def                = [[Torpedo]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 45,
	      onlyTargetCategory = [[SWIM SUB FLOAT SHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Launcher = {
	      name                    = [[Small Missile]],
	      areaOfEffect            = 48,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 35,
		Building = 35,
		Mech = 35,
		Tank = 35,
		Aircraft = 35,
		Ship = 35,
		Sub = 2,
	      },
	
	      model                   = [[bsmallmissile.s3o]],
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      range                   = 600,
	      reloadtime              = 1,
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
	    },

	    Torpedo = {
	      name                    = [[Torpedo]],
	      areaOfEffect            = 16,
	      avoidFriendly           = false,
	      burnblow                = true,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 400,
		Building = 400,
		Mech = 400,
		Tank = 400,
		Aircraft = 400,
		Ship = 400,
		Sub = 400,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      model                   = [[btorpedo.s3o]],
	      propeller               = [[1]],
	      range                   = 500,
	      reloadtime              = 2,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[evolutionRTS/torpedolaunch]],
	      startVelocity           = 140,
	      tolerance               = 42767,
	      tracks                  = true,
	      turnRate                = 8000,
	      turret                  = false,
	      waterWeapon             = true,
	      weaponAcceleration      = 15,
	      weaponTimer             = 4,
	      weaponType              = [[TorpedoLauncher]],
	      weaponVelocity          = 140,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Amphibious Mech]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 412,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 86,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Amphibious Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 275,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 43,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bamphmech = unitDef })