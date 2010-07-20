	unitDef = {
	  unitname            = [[baatruck]],
	  name                = [[Taka Type Armored Truck]],
	  description         = [[Anti-Air Truck - Light truck armed with an anti-air missile.  Can morph into a more powerful anti-air turret. - Build Limit: 20]],
	  acceleration        = 0.04,
	  bmcode              = [[1]],
	  brakeRate           = 0.02,
	  buildCostEnergy     = 400,
	  buildCostMetal      = 320,
	  builder             = false,
	  buildPic            = [[baatruck.png]],
	  buildTime           = 14,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[SMALL_UNIT]],
          footprintx          = 2,
	  footprintZ          = 2,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  maneuverleashlength = [[640]],
	  mass                = 110,
	  maxDamage           = 2100,
          maxSlope            = 18,
	  maxVelocity         = 2,
          maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[TANK3]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB]],
	  objectName          = [[baatruck.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNIT]],
	 
	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
	    },
	
	  },
	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 530,
	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[TANK]],
	  trackOffset         = 3,
	  trackStrength       = 6,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 24,
	  turninplace         = 0,
	  turnRate            = 550,
	  workerTime          = 0,
	  unitRestricted      = 20,
          script              = [[baatruck.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[AA]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    AA         = {
	      name                    = [[Homing AA Missile]],
	      areaOfEffect            = 48,
	      avoidFriendly           = true,
	      canattackground         = true,
	      cylinderTargetting      = 1,
	      collideFriendly         = false,
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
	      turret                  = true,
	      turnRate                = 30000,
	      weaponAcceleration      = 550,
	      weaponTimer             = 5,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Air Truck]],
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
	      metal            = 1575,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Air Truck]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 160,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 1050,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ baatruck = unitDef })
