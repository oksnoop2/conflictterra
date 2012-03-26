	unitDef = {
	  unitname            = [[bsnipermech]],
	  name                = [[Saiga Combat Support Mech]],
	  description         = [[Sniper Mech - Long range SM that does heavy damage to Units. Invisible to radar and able to cloak.]],
	  acceleration        = 1,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 350,
	  buildCostMetal      = 350,
	  builder             = false,
	  buildPic            = [[bsnipermech.png]],
	  buildTime           = 22,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],

	  cloakCost           = 5,
	  cloakCostMoving     = 5,
	  init_Cloaked        = false,
	  reclaimable         = false,
	
	  explodeAs           = [[MEDIUM_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  mass                = 375,
	  maxDamage           = 600,
	  maxSlope            = 36,
	  maxVelocity         = 3.5,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 150,
	  movementClass       = [[Mech4x4]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
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
	  sightDistance       = 1100,
	  smoothAnim          = true,
	  stealth             = true,
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
		  avoidFeature            = false,
	      craterMult              = 0.25,
	      accuracy                = 50,
		  collideFriendly         = false,
	
	      damage                  = {
		--Anti-Land
		--33 dps
		--66 dps land
		default = 200,
		Cruiser = 200,
		Building = 200,
		Land = 400,
		Aircraft = 200,
		Ship = 200,
		Sub = 200,

		Meteor = 0,
		Drone = 200,
		Spare1 = 200,
		Spare2 = 200,
		Spare3 = 200,
	      },
	
	      explosionGenerator      = [[custom:ct_impact_cannon]],
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