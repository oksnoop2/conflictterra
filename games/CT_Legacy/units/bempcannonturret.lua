	unitDef = {
	  unitname            = [[bempcannonturret]],
	  name                = [[Kizetsu Type EMP Cannon Turret]],
	  description         = [[EMP Cannon Turret Mode - Immobile EMP beam turret.  Can penetrate shields.  Can morph back into EMP Cannon Tank.]],
	  acceleration        = 0,
	  bmcode              = [[0]],
	  brakeRate           = 0,
	  buildCostEnergy     = 400,
	  buildCostMetal      = 320,
	  builder             = false,
	  buildPic            = [[bempcannonturret.png]],
	  buildTime           = 14,
	  canAttack           = true,
	  canstop             = [[1]],
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  defaultmissiontype  = [[GUARD_NOMOVE]],
	  explodeAs           = [[BIG_UNIT]],
          footprintx          = 5,
	  footprintZ          = 5,
	  levelground         = false,
	  idleAutoHeal        = 0,
	  mass                = 950,
	  maxDamage           = 3000,
          maxSlope            = 18,
	  maxVelocity         = 0,
          maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[bempcannonturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],

	  sounds			= {
	      select = {
		"evolutionRTS/turretselect",
		},

	      ok = {
		"evolutionRTS/turretselect",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  TEDClass            = [[TANK]],
	  turninplace         = 0,
	  workerTime          = 0,
	  unitRestricted      = 10,
          script              = [[bempcannonturret.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Stun]],
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Stun = {
	      name                    = [[Electromagnetic Beam]],
	      areaOfEffect            = 32,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 500,
		Building = 500,
		Mech = 500,
		Tank = 500,
		Aircraft = 500,
		Ship = 500,
		Sub = 500,
	      },
	
	      duration                = 0.01,
	      explosionGenerator      = [[custom:STUNNER_Expl]],
	      heightMod               = 1,
	      intensity               = 10,
	      interceptedByShieldType = 2,
	      lineOfSight             = true,
	      minIntensity            = 1,
	      paralyzer               = true,
	      paralyzeTime            = 4,
	      range                   = 1000,
	      reloadtime              = 10,
	      rgbColor                = [[1 1 0]],
	      soundHit                = [[ct/empfire]],
	      soundStart              = [[ct/empfire]],
	      soundTrigger            = true,
	      thickness               = 1,
	      tolerance               = 6000,
	      turret                  = true,
	      weaponType              = [[LightningCannon]],
	      weaponVelocity          = 1000,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - EMP Cannon Turret Mode]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 2250,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 760,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - EMP Cannon Turret Mode]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1500,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 360,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bempcannonturret = unitDef })
