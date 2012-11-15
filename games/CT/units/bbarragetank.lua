	--Okuma Type Tank Unit Def by Sanada
	--Notes:  Balanced Version 1

	unitDef = {
	  unitname            = [[bbarragetank]],
	  name                = [[Okuma Type Tank]],
	  description         = [[Barrage Tank - Fires a barrage of Anti-Unit rockets.]],
	  acceleration        = 0.5,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 600,
	  buildCostMetal      = 600,
	  builder             = false,
	  buildPic            = [[bbarragetank.png]],
	  buildTime           = 24,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,

	  customParams = {
	  	RequireTech   = [[General's Presence]],
	  },
	
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 3,
	  footprintZ          = 3,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  mass                = 390,
	  maxDamage           = 750,
	  maxSlope            = 18,
	  maxVelocity         = 2,
	  maxWaterDepth       = 22,
	  movementClass       = [[TANK3x3]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bbarragetank.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 700,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_missile_smokecloud",
	    },
	
	  },

	  trackOffset         = 8,
	  trackStrength       = 10,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 30,
	  
	  turnInPlace         = false,
	  turnInPlaceSpeedLimit= 1.5,
	  turnRate            = 500,
	  script              = [[bbarragetank.lua]],
	
	  weapons             = {

	    {
	      def                = [[Anti_Mech]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Anti_Mech = {
	      name                    = [[Anti-Mech Rocket]],
		  accuracy                = 400,
	      areaOfEffect            = 48,
		  avoidFeature            = false,
	      burst                   = 12,
	      burstrate               = 0.25,
		  canAttackGround         = true,
	      cegTag                  = [[ct_missiletail_small]],
	      craterMult              = 0.25,
		  collideFriendly         = false,
	
	      damage                  = {
		--Anti-Land
		--50 dps
		--100 dps land
		default = 25,
		Cruiser = 25,
		Building = 25,
		Land = 50,
		Aircraft = 25,
		Ship = 25,
		Sub = 25,

		Meteor = 0,
		Drone = 25,
		Spare1 = 25,
		Spare2 = 25,
		Spare3 = 25,
	      },
	
	      model                   = [[projectiles/bantimechmissile.s3o]],
		  dance                   = 75,
	      wobble                  = 3000,
	      explosionGenerator      = [[custom:ct_impact_rocket]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 600,
	      reloadtime              = 6,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[nexuiz/rocket_fire]],
		  sprayAngle              = 90,
	      texture2                = [[ct_smoketrail]],
	      tolerance               = 8000,
	      tracks                  = false,
	      trajectoryHeight        = 0.5,
	      turret                  = true,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 550,
	      startVelocity           = 450,
	      weaponAcceleration      = 100,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Okuma Type Tank]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 375,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 300,
	      object           = [[wrecks/bbarragetankwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 9000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Okuma Type Tank]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 187,
	      energy           = 0,
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 150,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 4500,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bbarragetank = unitDef })