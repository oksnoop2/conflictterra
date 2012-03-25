	unitDef = {
	  unitname            = [[bassaultmech]],
	  name                = [[Honda Combat Mech MkII]],
	  description         = [[Assault Mech - Improved Anti-Unit SM armed with dual rapid fire beam cannons. Can Jump.]],
	  acceleration        = 1,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 825,
	  buildCostMetal      = 825,
	  builder             = false,
	  buildPic            = [[bassaultmech.png]],
	  buildTime           = 45,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,

	  customParams = {
	  	RequireTech   = [[Ace Pilot's Presence]],
	  },
	
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  mass                = 175,
	  maxDamage           = 1250,
	  maxSlope            = 36,
	  maxVelocity         = 5,
	  maxWaterDepth       = 22,
	  movementClass       = [[Mech4x4]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bassaultmech.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],

	  side                = [[NKG]],
	  sightDistance       = 600,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_machinegun_blue",
		"custom:ct_jumpjet",
		"custom:ct_jumpjet_land",		
	    },
	  },

	  turnInPlace         = 1,
	  turnRate            = 1000,
	  upright             = true,
	  script              = [[bassaultmech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Laser = {
	      name                    = [[Burst Laser]],
	      areaOfEffect            = 8,
		  avoidFeature            = false,
	      burst                   = 2,
	      burstrate               = 0.001,
	      coreThickness           = 0.5,
	      craterMult              = 0.25,
	      accuracy                = 200,
		  collideFriendly         = false,
	
	      damage                  = {
		--Anti-Land
		default = 10,
		Cruiser = 10,
		Building = 10,
		Land = 20,
		Aircraft = 10,
		Ship = 10,
		Sub = 10,

		Meteor = 0,
		Drone = 10,
		Spare1 = 10,
		Spare2 = 10,
		Spare3 = 10,
	      },
	
	      duration                = 0.01,
	      energypershot           = 0,
	      explosionGenerator      = [[custom:ct_impact_beamshot_blue]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      heightMod               = 0.5,
	      lineOfSight             = true,
	      range                   = 600,
	      reloadtime              = 0.15,
	      rgbColor                = [[0 0 1]],
	      soundStart              = [[ct/pew1]],
	      targetMoveError         = 0.15,
	      thickness               = 3,
	      tolerance               = 10000,
	      turret                  = true,
	      weaponType              = [[LaserCannon]],
	      weaponVelocity          = 1500,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Honda Combat Mech MkII]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 625,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 412,
	      object           = [[wrecks/bassaultmechwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 12300,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Honda Combat Mech MkII]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 312,
	      energy           = 0,
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 206,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 6150,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bassaultmech = unitDef })