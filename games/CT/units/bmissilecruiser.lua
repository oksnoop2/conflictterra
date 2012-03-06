	unitDef = {
	  unitname            = [[bmissilecruiser]],
	  name                = [[Sanada Class Cruiser]],
	  description         = [[Bombardment Cruiser - Offensive cruiser which attacks the ground with a flurry of rockets.]],
	  acceleration        = 0.15,
	  activateWhenBuilt   = true,
	  airStrafe           = 0,
	  amphibious          = false,
	  brakeRate           = 3.75,
	  buildCostEnergy     = 800,
	  buildCostMetal      = 800,
	  builder             = false,
	  buildPic            = [[bmissilecruiser.png]],
	  buildTime           = 30,
	  canAttack           = true,
	  canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  canSubmerge         = false,
	  category            = [[CRUISER]],
	  collide             = true,
	  collisionVolumeOffsets = [[0 0 0]],
	  collisionVolumeScales  = [[96 96 200]],
	  collisionVolumeTest    = 1,
	  collisionVolumeType    = [[box]],
	  corpse              = [[DEAD]],
	  cruiseAlt           = 300,
	  reclaimable         = false,
	
	  explodeAs           = [[LARGE_UNIT]],
	  floater             = true,
	  footprintx          = 6,
	  footprintZ          = 6,
	  hoverAttack         = true,
	  idleAutoHeal        = 0,
	  mass                = 2500,
	  maxDamage           = 3000,
	  maxVelocity         = 4,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS SUB FIXEDWING GUNSHIP CRUISER]],
	  objectName          = [[bmissilecruiser.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[LARGE_UNIT]],
	  showNanoFrame       = false,
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

	  turnRate            = 500,
	  upright             = true,
	  script              = [[bmissilecruiser.lua]],
	
	  weapons                = {
	
	    {
	      def                = [[Large]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[-1 0 1]],
	      maxAngleDif        = 190,		  
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
		
	    {
	      def                = [[Large]],
	      badTargetCategory  = [[SINK FLOAT]],
		  mainDir            = [[1 0 1]],
	      maxAngleDif        = 190,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },		
	
	  },
	
	
	  weaponDefs             = {
	
	    Large = {
	      name                    = [[Large Anti-Mech Rocket]],
		  accuracy                = 400,
	      areaOfEffect            = 140,
		  burst                   = 3,
		  burstrate               = 0.5,
	      collideFriendly         = false,		  
	      cegTag                  = [[ct_missiletail_big]],
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 200,
		Cruiser = 200,
		Building = 200,
		Mech = 200,
		Tank = 200,
		Aircraft = 200,
		Ship = 200,
		Sub = 200,

		Meteor = 0,
		Drone = 200,
		Spare1 = 200,
		Spare2 = 200,
		Spare3 = 200,
	      },
	
	      model                   = [[projectiles/blargemissile.s3o]],
	      edgeEffectiveness       = 0.5,
	      explosionGenerator      = [[custom:ct_impact_missile_large]],
	      flightTime              = 4,
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 600,
	      reloadtime              = 6,
	      smokeTrail              = true,
		  sprayAngle              = 900,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[nexuiz/rocket_fire]],
	      texture2		          = [[ct_smoketrail]],
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
	      description      = [[Wreckage - Sanada Class Cruiser]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 1500,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 6,
	      footprintZ       = 6,
	      metal            = 400,
	      object           = [[wrecks/bmissilecruiserwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 12000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Sanada Class Cruiser]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 750,
	      energy           = 0,
	      footprintX       = 6,
	      footprintZ       = 6,
	      metal            = 200,
	      object           = [[b6x6heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 6000,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bmissilecruiser = unitDef })
