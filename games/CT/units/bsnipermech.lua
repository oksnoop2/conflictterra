	unitDef = {
	  unitname            = [[bsnipermech]],
	  name                = [[Saiga Combat Support Mech]],
	  description         = [[Sniper Mech - Long range SM that does heavy damage to units.]],
	  acceleration        = 0.12,
	  brakeRate           = 0.19,
	  buildCostEnergy     = 500,
	  buildCostMetal      = 500,
	  builder             = false,
	  buildPic            = [[bsnipermech.png]],
	  buildTime           = 25,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  explodeAs           = [[MEDIUM_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  mass                = 375,
	  maxDamage           = 625,
	  maxSlope            = 36,
	  maxVelocity         = 3.5,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 150,
	  movementClass       = [[Mech4x4]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[bsnipermech.s3o]],
	  seismicSignature    = 16,
	  selfDestructAs      = [[MEDIUM_UNIT]],

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
		"custom:ct_cannon_artillery",
		"custom:ct_cannon_artillery_side",
	    },
	
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  turnInPlace         = 1,
	  turnRate            = 1000,
	  upright             = true,
          script              = [[bsnipermech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Sniper]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Sniper = {
	      name                    = [[Sniper Cannon]],
	      alphaDecay              = 0.12,
	      areaOfEffect            = 16,
	      craterMult              = 0.25,
	      accuracy                = 50,
	
	      damage                  = {
		default = 600,
		Cruiser = 600,
		Building = 300,
		Mech = 600,
		Tank = 600,
		Aircraft = 600,
		Ship = 600,
		Sub = 600,

		Meteor = 0,
		Drone = 600,
		Spare1 = 600,
		Spare2 = 600,
		Spare3 = 600,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 1000,
	      reloadtime              = 6,
	      rgbColor                = [[0.5 1 1]],
	      separation              = 0.5,
	      size                    = 0.8,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[ct/snipershot]],
	      stages                  = 32,
	      tolerance               = 8000,
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 900,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Saiga Combat Support Mech]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 312,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 250,
	      object           = [[wrecks/bsnipermechwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 7500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Saiga Combat Support Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 156,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 112,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3250,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bsnipermech = unitDef })