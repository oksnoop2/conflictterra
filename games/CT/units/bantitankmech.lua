	unitDef = {
	  unitname            = [[bantitankmech]],
	  name                = [[Enkei Combat Support Mech]],
	  description         = [[Anti-Tank Mech - Slightly old cloakable SM model built to destroy tanks.  Fires two armor piercing rounds.]],
	  acceleration        = 0.12,
	  bmcode              = [[1]],
	  brakeRate           = 0.19,
	  buildCostEnergy     = 400,
	  buildCostMetal      = 320,
	  builder             = false,
	  buildPic            = [[bantitankmech.png]],
	  buildTime           = 21,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[LAND]],
	  corpse              = [[DEAD]],

	  cloakCost           = 5,
	  cloakCostMoving     = 5,
	  init_Cloaked        = false,
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[SMALL_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
	  mass                = 45,
	  maxDamage           = 800,
	  maxSlope            = 36,
	  maxVelocity         = 3,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[MedMech]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[bantitankmech.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNIT]],

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
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
	  steeringmode        = [[2]],
	  TEDClass            = [[KBOT]],
	  turninplace         = 0,
	  turnRate            = 1106,
	  upright             = true,
	  workerTime          = 0,
          script              = [[bantitankmech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[AntiTank]],
	      badTargetCategory  = [[GUNSHIP SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },

	    {
	      def                = [[AntiTank]],
	      badTargetCategory  = [[GUNSHIP SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },

	
	  },
	
	
	  weaponDefs          = {
	
	    AntiTank = {
	      name                    = [[Armor Piercing Cannon]],
	      areaOfEffect            = 32,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 100,
		Building = 100,
		Mech = 100,
		Tank = 300,
		Aircraft = 100,
		Ship = 100,
		Sub = 5,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
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
	      description      = [[Wreckage - Anti-Tank Mech]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 450,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 160,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Tank Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 300,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 80,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bantitankmech = unitDef })