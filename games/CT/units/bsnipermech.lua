	unitDef = {
	  unitname            = [[bsnipermech]],
	  name                = [[Saiga Combat Support Mech]],
	  description         = [[Sniper Mech - Stealthy long range SM that does heavy damage to units.]],
	  acceleration        = 0.12,
	  bmcode              = [[1]],
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
	  canstop             = [[1]],
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[MEDIUM_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
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

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  steeringmode        = [[2]],
	  stealth             = true,
	  TEDClass            = [[KBOT]],
	  turninplace         = 0,
	  turnRate            = 1338,
	  upright             = true,
	  workerTime          = 0,
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
		Cruiser = 600,
		Building = 300,
		Mech = 600,
		Tank = 600,
		Aircraft = 600,
		Ship = 600,
		Sub = 10,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
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
	      description      = [[Wreckage - Sniper Mech]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 468,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 300,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Sniper Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 312,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 150,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bsnipermech = unitDef })