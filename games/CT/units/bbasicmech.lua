	unitDef = {
	  unitname            = [[bbasicmech]],
	  name                = [[Hojo Combat Mech]],
	  description         = [[Front-Line Mech - Anti-Unit rapid fire SM. Can Jump.]],
	  acceleration        = 1,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 200,
	  buildCostMetal      = 200,
	  builder             = false,
	  buildPic            = [[bbasicmech.png]],
	  buildTime           = 12,
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
	  mass                = 32.5,
	  maxDamage           = 500,
	  maxSlope            = 36,
	  maxVelocity         = 4,
	  maxWaterDepth       = 22,
	  movementClass       = [[Mech3x3]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bbasicmech.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[MEDIUM_UNIT]],

	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_machinegun",
		"custom:ct_jumpjet",
		"custom:ct_jumpjet_land",
	    },
	  },

	  side                = [[NKG]],
	  sightDistance       = 600,
	  smoothAnim          = true,
	  turnInPlace         = 1,
	  turnRate            = 1000,
	  upright             = true,
	  script              = [[bbasicmech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Machine_Gun]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Machine_Gun = {
	      name                    = [[Rapid Fire Cannon]],
	      areaOfEffect            = 8,
		  avoidFeature            = false,
	      burst                   = 2,
	      burstrate               = 0.001,
	      craterMult              = 0.25,
	      accuracy                = 750,
		  collideFriendly         = false,
	
	      damage                  = {
		--Anti-Land
		--20 dps
		--40 dps land
		default = 3,
		Cruiser = 3,
		Building = 3,
		Land = 6,
		Aircraft = 3,
		Ship = 3,
		Sub = 3,

		Meteor = 0,
		Drone = 3,
		Spare1 = 3,
		Spare2 = 3,
		Spare3 = 3,
	      },
	
	      explosionGenerator      = [[custom:ct_impact_machinegun]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 500,
	      reloadtime              = 0.3,
	      rgbColor                = [[1 0.95 0.4]],
	      separation              = 2,
	      size                    = 1.25,
	      soundStart              = [[ct/machine_gun]],
	      soundStartVolume        = 0.5,
	      soundTrigger            = true,
	      stages                  = 50,
	      sprayAngle              = 1180,
	      tolerance               = 8000,
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Hojo Combat Mech]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 250,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 137,
	      object           = [[wrecks/bbasicmechwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3900,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Hojo Combat Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 125,
	      energy           = 0,
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 68,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1900,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bbasicmech = unitDef })