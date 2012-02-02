	unitDef = {
	  unitname            = [[btransportcarrier]],
	  name                = [[Maeda Class Cruiser]],
	  description         = [[Transport Cruiser - Transport aircraft used to ferry units through the air.  Lightly armed with missiles.]],
	  acceleration        = 0.16,
	  airStrafe           = 0,
          amphibious          = false,
	  brakeRate           = 6.25,
	  buildCostEnergy     = 2000,
	  buildCostMetal      = 2000,
	  builder             = false,
	  buildPic            = [[btransportcarrier.png]],
	  buildTime           = 45,
	  canAttack           = true,
          canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
          canSubmerge         = false,
	  category            = [[GUNSHIP]],
          reclaimable         = false,

          collisionVolumeOffsets = [[0 0 0]],
          collisionVolumeScales  = [[112 80 172]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],

          collide             = false,
	  corpse              = [[DEAD]],
          cruiseAlt           = 175,
	
	  explodeAs           = [[BIG_UNIT]],
          floater             = true,
          footprintx          = 12,
	  footprintZ          = 12,
	  hoverAttack         = true,
	  idleAutoHeal        = 0,
	  mass                = 2500,
	  maxDamage           = 4000,
	  maxVelocity         = 8,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS SUB]],
	  objectName          = [[btransportcarrier2.s3o]],
	  releaseHeld         = true,
	  seismicSignature    = 0,
	  selfDestructAs      = [[BIG_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"ct/cruiserengine",
		},
	      ok = {
		"ct/cruiserengine",
		},
	  },

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_missile_smokecloud",
	    },
	
	  },

	  transportCapacity   = 40,
	  transportMass       = 6050,
	  transportSize       = 1000,
	  turnRate            = 250,
	  verticalSpeed       = 30,
	  transportUnloadMethod = 2,
	  upright             = true,
          script              = [[btransportcarrier.lua]],

	
	  weapons             = {

	    {
	      def                = [[Ground]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 -1 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[AA]],
	      badTargetCategory  = [[GUNSHIP]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 90,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    AA         = {
	      name                    = [[Homing AA Missile]],
	      areaOfEffect            = 48,
	      avoidFriendly           = true,
	      canattackground         = false,
	      cylinderTargetting      = 1,
	      cegtag                  = [[ct_missiletail_aa]],
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 20,
		Cruiser = 200,
		Building = 20,
		Mech = 20,
		Tank = 20,
		Aircraft = 200,
		Ship = 20,
		Sub = 20,

		Meteor = 0,
		Drone = 20,
		Spare1 = 20,
		Spare2 = 20,
		Spare3 = 20,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      model                   = [[projectiles/baamissile.s3o]],
	      range                   = 600,
	      reloadtime              = 3,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[evolutionRTS/aircraft_missile_01]],
	      texture2		      = [[ct_smoketrail]],
	      startVelocity           = 200,
	      tolerance               = 22000,
	      tracks                  = true,
	      turnRate                = 30000,
	      turret                  = true,
	      weaponAcceleration      = 550,
	      weaponTimer             = 5,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 750,
	    },

	    Ground = {
	      name                    = [[Air-to-Ground Missile]],
	      areaOfEffect            = 160,
	      craterMult              = 0.25,
	      cegTag                  = [[ct_missiletail_big]],
	
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
	
	      model                   = [[projectiles/bsmallmissile.s3o]],
	      edgeEffectiveness       = 0.5,
	      explosionGenerator      = [[custom:PLASMA_Expl]],
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
	      tolerance               = 4000,
	      trajectoryHeight        = 0.5,
	      tracks                  = true,
	      turnRate                = 1000,
	      turret                  = true,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 400,
	      startVelocity           = 400,
	      weaponAcceleration      = 70,
	    },

          },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Maeda Class Cruiser]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 2000,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 12,
	      footprintZ       = 12,
	      metal            = 1000,
	      object           = [[wrecks/btransportcarrier2wreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 30000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Maeda Class Cruiser]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1000,
	      energy           = 0,
	      footprintX       = 12,
	      footprintZ       = 12,
	      metal            = 500,
	      object           = [[b11x12heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15000,
	    },
	
	  },
	
	}
	
	return lowerkeys({ btransportcarrier = unitDef })
