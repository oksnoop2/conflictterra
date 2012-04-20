	unitDef = {
	  unitname            = [[baabuggy]],
	  name                = [[Yumi Type Vehicle]],
	  description         = [[Anti-Air Vehicle - Fires two homing AA missiles and an anti-Cruiser Beam.]],
	  acceleration        = 1,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 300,
	  buildCostMetal      = 300,
	  builder             = false,
	  buildPic            = [[baabuggy.png]],
	  buildTime           = 13,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  explodeAs           = [[MEDIUM_UNIT]],
	  footprintX          = 3,
	  footprintZ          = 3,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  mass                = 110,
	  maxDamage           = 500,
	  maxSlope            = 18,
	  maxVelocity         = 3,
	  maxWaterDepth       = 22,
	  movementClass       = [[TANK3x3]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[baabuggy.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[MEDIUM_UNIT]],

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

	  side                = [[NKG]],
	  sightDistance       = 700,
	  smoothAnim          = true,
	  
	  trackOffset         = 3,
	  trackStrength       = 6,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 24,
	  
	  turnInPlace         = false,
	  turnInPlaceSpeedLimit= 1.5,
	  turnRate            = 500,
	  workerTime          = 0,
	  script              = [[baabuggy.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
	      onlyTargetCategory = [[CRUISER]],
	    },	
	
	    {
	      def                = [[AA]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    AA         = {
	      name                    = [[Homing AA Missile]],
	      areaOfEffect            = 48,
		  avoidFeature            = false,
	      avoidFriendly           = true,
	      canattackground         = false,
	      cegtag                  = [[ct_missiletail_aa]],
	      cylinderTargetting      = 1,
		  collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		--Anti-Plane
		--10 dps
		--75 dps aircraft
		default = 20,
		Cruiser = 20,
		Building = 20,
		Land = 20,
		Aircraft = 150,
		Ship = 20,
		Sub = 20,

		Meteor = 0,
		Drone = 20,
		Spare1 = 20,
		Spare2 = 20,
		Spare3 = 20,
	      },
	
	      explosionGenerator      = [[custom:ct_impact_missile_aa]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      model                   = [[projectiles/baamissile.s3o]],
	      range                   = 600,
	      reloadtime              = 2,
	      smokedelay              = [[0.1]],
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[]],
	      startVelocity           = 200,
	      texture2                = [[ct_smoketrail]],
	      tolerance               = 22000,
	      tracks                  = true,
	      turret                  = true,
	      turnRate                = 30000,
	      weaponAcceleration      = 550,
	      weaponTimer             = 5,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 900,
	    },
		
	    Laser = {
	      name                    = [[Anti-Cruiser Laser]],
	      areaOfEffect            = 8,
		  avoidFeature            = false,
	      avoidFriendly           = false,
	      beamTime                = 0.2,
	      craterMult              = 0.25,
	      accuracy                = 0,
	      canattackground         = false,
	      collideFriendly         = false,
	      energypershot           = 0,
	      explosionGenerator      = [[custom:ct_impact_beamshot_blue]],
        
	      damage                  = {
		--Anti-Cruiser
		--25 dps
		--100 dps cruiser
		default = 5,
		Cruiser = 20,
		Building = 5,
		Land = 5,
		Aircraft = 5,
		Ship = 5,
		Sub = 5,

		Meteor = 0,
		Drone = 5,
		Spare1 = 5,
		Spare2 = 5,
		Spare3 = 5,
              },
        
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 600,
	      reloadtime              = 0.2,
	      rgbColor                = [[0 0 1]],
	      separation              = 2,
	      thickness               = 1,
	      minIntensity            = 1,
	      size                    = 0.4,
	      soundStart              = [[ct/empfire]],
	      soundStartVolume        = 0.5,
	      soundTrigger            = true,
	      stages                  = 50,
	      targetBorder            = 1,
	      tolerance               = 8000,
	      turret                  = true,
	      weaponType              = [[BeamLaser]],
	      weaponVelocity          = 2500,
	    },		
	
	  },
	
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Yumi Type Jeep]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 250,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 150,
	      object           = [[wrecks/baabuggywreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 4500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Yumi Type Jeep]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 125,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 75,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2250,
	    },
	
	  },
	
	}
	
	return lowerkeys({ baabuggy = unitDef })