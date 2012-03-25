	unitDef = {
	  unitname            = [[badvairturret]],
	  name                = [[Anti-Air Missile Turret]],
	  description         = [[Fires a salvo of three powerful Anti-Air Missiles. Seeks and destroys enemies.]],
	  buildCostEnergy     = 500,
	  buildCostMetal      = 500,
	  builder             = false,
	  buildPic            = [[badvairturret.png]],
	  buildTime           = 30,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[SINK]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  customParams = {
	  	RequireTech   = [[Raised Strategic Importance]],
	  },	
	
	  explodeAs           = [[SMALL_BUILDING]],
	  footprintx          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  levelGround         = true,
	  mass                = 140,
	  maxDamage           = 5000,
	  maxSlope            = 18,
	  maxWaterDepth       = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[bairturret.s3o]],
	  seismicSignature    = 16,
	  selfDestructAs      = [[SMALL_BUILDING]],

	  sounds			= {
	      select = {
		"",
		},

	      ok = {
		"",
		},
	  },

	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_missile_smokecloud",
	    },
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  yardMap             = [[oooo oooo oooo oooo]],
	  script              = [[badvairturret.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[AA]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP CRUISER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    AA         = {
	      name                    = [[Homing AA Missile]],
	      areaOfEffect            = 48,
	      avoidFriendly           = true,
		  avoidFeature            = false,
	      burst                   = 3,
	      burstrate               = 0.5,
	      canattackground         = false,
	      cegtag                  = [[ct_missiletail_aa]],
	      cylinderTargetting      = 1,
	      craterMult              = 0.25,
		  collideFriendly         = false,		  
	
	      damage                  = {
		--Anti-Plane
		default = 20,
		Cruiser = 175,
		Building = 20,
		Land = 20,
		Aircraft = 175,
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
	      range                   = 900,
	      reloadtime              = 3,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[]],
	      startVelocity           = 200,
	      tolerance               = 22000,
	      texture2		          = [[ct_smoketrail]],
	      tracks                  = true,
	      turret                  = true,
	      turnRate                = 30000,
	      weaponAcceleration      = 550,
	      weaponTimer             = 5,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 900,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Air Missile Turret]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 2500,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 250,
	      object           = [[wrecks/bairturretwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 7500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Air Missile Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1250,
	      energy           = 0,
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 125,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3750,
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvairturret = unitDef })
