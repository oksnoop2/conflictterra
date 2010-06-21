	unitDef = {
	  unitname            = [[btransportcarrier]],
	  name                = [[Maeda Class Cruiser]],
	  description         = [[Transport Carrier]],
	  acceleration        = 0.16,
	  airStrafe           = 0,
          amphibious          = false,
          bankscale           = [[1]],
	  bmcode              = [[1]],
	  brakeRate           = 6.25,
	  buildCostEnergy     = 5000,
	  buildCostMetal      = 5000,
	  builder             = false,
	  buildPic            = [[btransportcarrier.png]],
	  buildTime           = 5000,
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
          cruiseAlt           = 250,
	
	  defaultmissiontype  = [[VTOL_standby]],
	  explodeAs           = [[GUNSHIPEX]],
          floater             = true,
          footprintx          = 7,
	  footprintZ          = 7,
	  hoverAttack         = true,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[1280]],
	  mass                = 2500,
	  maxDamage           = 5000,
	  maxVelocity         = 8,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP SUB]],
	  objectName          = [[btransportcarrier.s3o]],
	  releaseHeld         = true,
          scale               = [[1]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[GUNSHIPEX]],
	  side                = [[NKG]],
	  sightDistance       = 572,
	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[VTOL]],
	  transportCapacity   = 1000,
	  transportMass       = 1000,
	  transportSize       = 1000,
	  turnInPlace         = 0,
	  turnRate            = 420,
	  verticalSpeed       = 30,
	  workerTime          = 0,
	  transportUnloadMethod = 2,
	  upright             = true,
          script              = [[btransportcarrier.lua]],

	
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
	
	      damage                  = {
	        default = 20,
	        planes  = [[200]],
	        subs    = 10,
	      },
	
	      explosionGenerator      = [[custom:WEAPEXP_PUFF]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      model                   = [[baamissile.s3o]],
	      range                   = 530,
	      reloadtime              = 4.5,
	      smokedelay              = [[0.1]],
	      smokeTrail              = true,
	      soundHit                = [[OTAunit/XPLOSML2]],
	      soundStart              = [[OTAunit/ROCKLIT3]],
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
	
	      damage                  = {
	        default = 650,
	        subs    = 45,
	      },
	
	      model                   = [[bsmallmissile.s3o]],
	      edgeEffectiveness       = 0.5,
	      explosionGenerator      = [[custom:xamelimpact]],
	      flightTime              = 4,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      range                   = 800,
	      reloadtime              = 6,
	      smokeTrail              = true,
	      soundHit                = [[TAWF114b]],
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
	      damage           = 160,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
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
	      damage           = 160,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 7,
	      footprintZ       = 7,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[b7x7heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ btransportcarrier = unitDef })
