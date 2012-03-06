	unitDef = {
	  unitname            = [[bantitankmech]],
	  name                = [[Enkei Combat Support Mech]],
	  description         = [[Anti-Tank Mech - Deals heavy damage to tanks and vehicles.  Able to drop up to 4 anti-tank mines.]],
	  acceleration        = 1,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 325,
	  buildCostMetal      = 325,
	  buildDistance       = 220,
	  
	  buildPic            = [[bantitankmech.png]],
	  buildTime           = 17,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],	  
	  reclaimable         = false,
	
	  explodeAs           = [[SMALL_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  mass                = 45,
	  maxDamage           = 800,
	  maxSlope            = 36,
	  maxVelocity         = 3,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[Mech4x4]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bantitankmech.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNIT]],

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_cannon_narrow",
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
	  sightDistance       = 600,
	  smoothAnim          = true,
	  turnInPlace         = 1,
	  turnRate            = 1000,
	  upright             = true,
	  script              = [[bantitankmech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[AntiTank]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    AntiTank = {
	      name                    = [[Armor Piercing Cannon]],
	      areaOfEffect            = 32,
	      burst                   = 2,
	      burstrate               = 0.001,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 100,
		Cruiser = 100,
		Building = 100,
		Mech = 100,
		Tank = 300,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,

		Meteor = 0,
		Drone = 100,
		Spare1 = 100,
		Spare2 = 100,
		Spare3 = 100,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:ct_impact_cannon]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      range                   = 500,
	      reloadtime              = 3,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Enkei Combat Support Mech]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 400,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 162,
	      object           = [[wrecks/bantitankmechwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 4800,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Enkei Combat Support Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 200,
	      energy           = 0,
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 81,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2400,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bantitankmech = unitDef })