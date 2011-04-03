	unitDef = {
	  unitname            = [[kdroneroller]],
	  name                = [[Roller Drone]],
	  description         = [[Fires EMP weapon. Can take quite a few hits.]],
	  acceleration        = 0.04,
	  brakeRate           = 0.02,
	  buildCostEnergy     = 250,
	  buildCostMetal      = 250,
	  builder             = false,
	  buildPic            = [[kdroneroller.png]],
	  buildTime           = 10,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  explodeAs           = [[SMALL_UNIT]],
          footprintx          = 2,
	  footprintZ          = 2,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  maneuverleashlength = [[640]],
	  mass                = 90,
	  maxDamage           = 3000,
          maxSlope            = 18,
	  maxVelocity         = 1.5,
          maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[TANK2x2]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[kdroneroller.s3o]],
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
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

	  side                = [[Drone]],
	  sightDistance       = 300,
	  smoothAnim          = true,
	  trackOffset         = 3,
	  trackStrength       = 6,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 24,
	  turnInPlace         = 0,
	  turnRate            = 550,
          script              = [[kdroneroller.lua]],
	

	
	
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
		Cruiser = 100,
		Building = 100,
		Mech = 100,
		Tank = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,
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
	      range                   = 500,
	      reloadtime              = 3,
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
	      description      = [[Wreckage - Drone Roller]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 1125,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 72,
	      object           = [[wrecks/kdronerollerwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Drone Roller]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 750,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 36,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ kdroneroller = unitDef })
