	unitDef = {
	  unitname            = [[bempcannon]],
	  name                = [[Kizetsu Type Tank]],
	  description         = [[EMP Cannon Tank - Tank armed with a long range, very slow firing EMP beam that can pierce shields.  Must transform into Turret Mode to fire. - Build Limit: 10]],
	  acceleration        = 0.02,
	  bmcode              = [[1]],
	  brakeRate           = 0.03,
	  buildCostEnergy     = 1900,
	  buildCostMetal      = 1520,
	  builder             = false,
	  buildPic            = [[bempcannon.png]],
	  buildTime           = 22,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 5,
	  footprintZ          = 5,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  maneuverleashlength = [[640]],
	  mass                = 950,
	  maxDamage           = 3000,
	  maxSlope            = 18,
	  maxVelocity         = 1.5,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[TANK4]],
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP SUB]],
	  objectName          = [[bempcannon.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],

	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[TANK]],
	  trackOffset         = 8,
	  trackStrength       = 10,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 45,
	  turnRate            = 200,
	  workerTime          = 0,
	  unitRestricted      = 10,
          script              = [[bempcannon.lua]],

	  weapons             = {
	
	    {
	      def                = [[Stun]],
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Stun = {
	      name                    = [[Electromagnetic Beam]],
	      areaOfEffect            = 32,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 500,
		Building = 500,
		Mech = 500,
		Tank = 500,
		Aircraft = 500,
		Ship = 500,
		Sub = 500,
	      },
	
	      duration                = 0.01,
	      explosionGenerator      = [[custom:MINI_NUCLEAR_Expl]],
	      heightMod               = 1,
	      intensity               = 10,
	      interceptedByShieldType = 2,
	      lineOfSight             = true,
	      minIntensity            = 1,
	      paralyzer               = true,
	      paralyzeTime            = 4,
	      range                   = 1000,
	      reloadtime              = 10,
	      rgbColor                = [[1 1 0]],
	      soundHit                = [[OTAunit/Lashit]],
	      soundStart              = [[hackshot]],
	      soundTrigger            = true,
	      thickness               = 1,
	      tolerance               = 6000,
	      turret                  = true,
	      weaponType              = [[LightingCannon]],
	      weaponVelocity          = 1000,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - EMP Cannon Tank]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 2250,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 2250,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - EMP Cannon Tank]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1500,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 1500,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bempcannon = unitDef })