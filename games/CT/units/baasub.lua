	unitDef = {
	  unitname            = [[baasub]],
	  name                = [[Kazeda Class Submarine]],
	  description         = [[Anti-Air Submarine - Covert vessel designed to surface and fire three anti-air missiles.]],
	  acceleration        = 0.02,
          activateWhenBuilt   = true,
	  bmcode              = [[1]],
	  brakeRate           = 0.23,
	  buildCostEnergy     = 600,
	  buildCostMetal      = 480,
	  builder             = false,
	  buildPic            = [[baasub.png]],
	  buildTime           = 30,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[SUB]],
          collisionVolumeOffsets = [[0 0 0]],
          collisionVolumeScales  = [[64 50 150]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[MEDIUM_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
	  mass                = 300,
	  maxDamage           = 1250,
	  maxVelocity         = 2,
	  minCloakDistance    = 75,
	  minWaterDepth       = 45,
	  movementClass       = [[SubBOAT]],
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE HOVER]],
	  objectName          = [[baasub.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[MEDIUM_UNIT]],
	  
	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
	    },
	
	  },

	  sounds			= {
	      select = {
		"ct/sonarbing",
		},
	      ok = {
		"ct/sonarbing",
		},
	  },
	  
	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[WATER]],
	  turnRate            = 225,
          waterline           = 45,
          script              = [[baasub.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[AA]],
	      badTargetCategory  = [[GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	
	    {
	      def                = [[AA]],
	      badTargetCategory  = [[GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[AA]],
	      badTargetCategory  = [[GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    AA           = {
	      name                    = [[Vertical Launch AA Missile]],
	      areaOfEffect            = 64,
	      canattackground         = false,
	      cylinderTargetting      = 1,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 70,
		Building = 7,
		Mech = 7,
		Tank = 7,
		Aircraft = 70,
		Ship = 7,
		Sub = 3.5,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 4,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      model                   = [[baamissile.s3o]],
	      range                   = 840,
	      reloadtime              = 1.5,
	      smokedelay              = [[0.1]],
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[evolutionRTS/aircraft_missile_01]],
	      soundTrigger            = true,
	      startVelocity           = 520,
	      tolerance               = 9950,
	      tracks                  = true,
	      turnRate                = 68000,
	      turret                  = true,
              vlaunch                 = true,
	      weaponAcceleration      = 160,
	      weaponTimer             = 1,
	      weaponType              = [[StarburstLauncher]],
	      weaponVelocity          = 820,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Air Submarine]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 937.5,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 240,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Air Submarine]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 625,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 120,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ baasub = unitDef })