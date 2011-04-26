	unitDef = {
	  unitname            = [[bsiegemech]],
	  name                = [[Ishida Combat Mech]],
	  description         = [[Siege Mech - Medium SM designed to take out enemy structures.  Armed with a heavy gun and two rapid fire cannons.]],
	  acceleration        = 0.12,
	  brakeRate           = 0.225,
	  buildCostEnergy     = 375,
	  buildCostMetal      = 375,
	  builder             = false,
	  buildPic            = [[bsiegemech.png]],
	  buildTime           = 20,
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
	  maneuverleashlength = [[640]],
	  mass                = 65,
	  maxDamage           = 750,
	  maxSlope            = 36,
	  maxVelocity         = 3,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[Mech3x3]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[bsiegemech.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNITEX]],

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_cannon_artillery",
		"custom:ct_cannon_artillery_side",
		"custom:ct_machinegun",
	    },
	
	  },



	  sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  turnInPlace         = 1,
	  turnRate            = 1000,
	  upright             = true,
          script              = [[bsiegemech.lua]],
	
	  weapons             = {

	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	    {
	      def                = [[Machine_Gun]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Artillery Cannon]],
	      areaOfEffect            = 64,
              craterMult              = 0.25,
	      accuracy                = 500,
	
	      damage                  = {
		default = 100,
		Cruiser = 100,
		Building = 500,
		Mech = 100,
		Tank = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,

		Meteor = 0,
		Drone = 100,
		Spare1 = 100,
		Spare2 = 100,
		Spare3 = 100,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:LRPC_Expl]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      myGravity               = 0.1,
	      range                   = 750,
	      reloadtime              = 4.5,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_Whamsound]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },

	    Machine_Gun = {
	      name                    = [[Rapid Fire Cannon]],
	      areaOfEffect            = 8,
	      burst                   = 2,
	      burstrate               = 0.001,
	      craterMult              = 0.25,
	      accuracy                = 200,
	
	      damage                  = {
		default = 15,
		Cruiser = 15,
		Building = 15,
		Mech = 15,
		Tank = 15,
		Aircraft = 15,
		Ship = 15,
		Sub = 15,

		Meteor = 0,
		Drone = 15,
		Spare1 = 15,
		Spare2 = 15,
		Spare3 = 15,
	      },
	
	      explosionGenerator      = [[custom:FLAK_BURST_Expl]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 200,
	      reloadtime              = 0.2,
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
	      description      = [[Wreckage - Ishida Combat Mech]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 375,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 187,
	      object           = [[wrecks/bsiegemechwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 5400,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Ishida Combat Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 162,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 63,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2700,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bsiegemech = unitDef })