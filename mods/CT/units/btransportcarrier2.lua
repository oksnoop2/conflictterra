	unitDef = {
	  unitname            = [[btransportcarrier2]],
	  name                = [[Maeda Class Cruiser]],
	  description         = [[Transport Carrier - Transport aircraft used to ferry units through the air.  Lightly armed with missiles.]],
	  acceleration        = 0.16,
	  airStrafe           = 0,
          amphibious          = false,
          bankscale           = [[1]],
	  bmcode              = [[0]],
	  brakeRate           = 6.25,
	  buildCostEnergy     = 5000,
	  buildCostMetal      = 4000,
	  builder             = false,
	  buildPic            = [[btransportcarrier2.png]],
	  buildTime           = 45,
	  canAttack           = true,
          canFly              = true,
	  canGuard            = true,
	  canload             = [[1]],
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
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
	
	  defaultmissiontype  = [[VTOL_standby]],
	  explodeAs           = [[BIG_UNIT]],
          floater             = true,
          footprintx          = 12,
	  footprintZ          = 12,
	  hoverAttack         = true,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[1280]],
	  mass                = 2500,
	  maxDamage           = 4000,
	  maxVelocity         = 8,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP SUB]],
	  objectName          = [[btransportcarrier2.s3o]],
	  releaseHeld         = true,
          scale               = [[1]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[BIG_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[VTOL]],
	  transportCapacity   = 40,
	  transportMass       = 6050,
	  transportSize       = 1000,
	  turnInPlace         = 0,
	  turnRate            = 420,
	  verticalSpeed       = 30,
	  workerTime          = 0,
	  transportUnloadMethod = 2,
	  upright             = true,
          script              = [[btransportcarrier2.lua]],

	
	  weapons             = {
	
	    {
	      def                = [[AA]],
	      badTargetCategory  = [[GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },


	    {
	      def                = [[Ground]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[AA]],
	      badTargetCategory  = [[GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },


	    {
	      def                = [[Ground]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    AA         = {
	      name                    = [[Homing AA Missile]],
	      areaOfEffect            = 48,
	      avoidFriendly           = true,
	      canattackground         = false,
	      cylinderTargetting      = 1,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 200,
		Building = 20,
		Mech = 20,
		Tank = 20,
		Aircraft = 200,
		Ship = 20,
		Sub = 10,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      model                   = [[baamissile.s3o]],
	      range                   = 530,
	      reloadtime              = 4.5,
	      smokedelay              = [[0.1]],
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[evolutionRTS/aircraft_missile_01]],
	      startVelocity           = 200,
	      tolerance               = 22000,
	      tracks                  = true,
	      turnRate                = 30000,
	      weaponAcceleration      = 550,
	      weaponTimer             = 5,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 750,
	    },

	    Ground = {
	      name                    = [[Air-to-Ground Missile]],
	      areaOfEffect            = 160,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 650,
		Building = 650,
		Mech = 650,
		Tank = 650,
		Aircraft = 650,
		Ship = 650,
		Sub = 45,
	      },
	
	      model                   = [[bsmallmissile.s3o]],
	      edgeEffectiveness       = 0.5,
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 4,
	      interceptedByShieldType = 1,
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
	      description      = [[Wreckage - Transport Carrier]],
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
	      metal            = 2000,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Transport Carrier]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 2000,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 7,
	      footprintZ       = 7,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 1000,
	      object           = [[b7x7heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ btransportcarrier2 = unitDef })
