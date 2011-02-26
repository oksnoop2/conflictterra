	unitDef = {
	  unitname            = [[blandnavalturret]],
	  name                = [[Anti-Ship Turret]],
	  description         = [[Fires three shells that do much more damage to ships.  Should be built near shore.]],
	  acceleration        = 0,
	  activateWhenBuilt   = true,
	  brakeRate           = 0,
	  buildCostEnergy     = 275,
	  buildCostMetal      = 275,
	  builder             = false,
	  buildPic            = [[blandnavalturret.png]],
	  buildTime           = 20,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[SINK]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  explodeAs           = [[SMALL_BUILDING]],
          footprintx          = 3,
	  footprintZ          = 3,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 125,
	  maxDamage           = 875,
          maxSlope            = 36,
	  maxVelocity         = 0,
          maxWaterDepth       = 0,
	  minCloakDistance    = 150,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[blandnavalturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDING]],
	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  yardMap             = [[ooo ooo ooo]],

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
	    },
	
	  },

	  sounds			= {
	      select = {
		"evolutionRTS/turretselect",
		},

	      ok = {
		"evolutionRTS/turretselect",
		},
	  },


          script              = [[blandnavalturret.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[LAND SINK]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Light Cannon]],
	      areaOfEffect            = 32,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 5,
		Building = 5,
		Mech = 5,
		Tank = 5,
		Aircraft = 5,
		Ship = 300,
		Sub = 5,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      range                   = 1000,
	      reloadtime              = 1,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Naval Turret]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 2625,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 140,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Naval Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1750,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 70,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ blandnavalturret = unitDef })
