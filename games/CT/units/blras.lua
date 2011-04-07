	unitDef = {
	  unitname            = [[blras]],
	  name                = [[Minamoto Class Battleship]],
	  description         = [[Long Range Artillery Battleship - Very long range ship armed with a very powerful cannon.  Does more damage to buildings. - Build Limit: 2]],
	  acceleration        = 0.03,
	  brakeRate           = 0.03,
	  buildCostEnergy     = 4600,
	  buildCostMetal      = 3680,
	  builder             = false,
	  buildPic            = [[blras.png]],
	  buildTime           = 45,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[SHIP]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  explodeAs           = [[BIG_UNIT]],
          floater             = true,
	  footprintX          = 8,
	  footprintZ          = 8,
          collisionVolumeOffsets = [[0 0 0]],
          collisionVolumeScales  = [[96 96 296]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  idleAutoHeal        = 0,
	  mass                = 2300,
	  maxDamage           = 5500,
	  maxVelocity         = 1,
	  minCloakDistance    = 75,
	  minWaterDepth       = 15,
	  movementClass       = [[SHIP8x8]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[blras.s3o]],
          radarDistance       = 2400,
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  turnRate            = 90,
          waterline           = 5,
	  unitRestricted      = 2,
          script              = [[blras.lua]],
	
	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash_big",
		"custom:orc_machinegun_muzzle_big",
	    },
	
	  },

	  sounds			= {
	      select = {
		"ct/shipbell",
		},
	      ok = {
		"ct/shipbell",
		},
	  },



	  weapons             = {
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Heavy Naval Artillery Cannon]],
	      areaOfEffect            = 192,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 1000,
		Cruiser = 1000,
		Building = 2000,
		Mech = 1000,
		Tank = 1000,
		Aircraft = 1000,
		Ship = 1000,
		Sub = 1000,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:LRPC_Expl]],
	      holdtime                = [[1]],
	      interceptedByShieldType = 1,
	      range                   = 2400,
	      reloadtime              = 7,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_Whamsound]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 1100,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Long Range Artillery Ship]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 4125,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 1840,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Long Range Artillery Ship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 2750,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 8,
	      footprintZ       = 8,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 920,
	      object           = [[b8x8heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ blras = unitDef })