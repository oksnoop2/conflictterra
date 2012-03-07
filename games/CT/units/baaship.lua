	unitDef = {
	  unitname            = [[baaship]],
	  name                = [[Taira Class Battleship]],
	  description         = [[Anti-Air Battleship - Fires two homing AA missiles]],
	  acceleration        = 0.05,
	  brakeRate           = 0.06,
	  buildCostEnergy     = 400,
	  buildCostMetal      = 320,
	  builder             = false,
	  buildPic            = [[baaship.png]],
	  buildTime           = 23,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[SHIP]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,

	  explodeAs           = [[MEDIUM_UNIT]],
	  floater             = true,
	  footprintX          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  collisionVolumeOffsets = [[0 0 0]],
	  collisionVolumeScales  = [[38 32 104]],
	  collisionVolumeTest    = 1,
	  collisionVolumeType    = [[box]],
	  mass                = 375,
	  maxDamage           = 3500,
	  maxVelocity         = 2.25,
	  minWaterDepth       = 5,
	  movementClass       = [[SHIP4x4]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[baaship.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[MEDIUM_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 750,
	    
	  --sfxtypes            = {
	
	    --explosiongenerators = {
		--"custom:orc_machinegun_flash",
		--"custom:orc_machinegun_muzzle",
	    --},
	
	  --},

	  sounds			= {
	      select = {
		"ct/shipbell",
		},
	      ok = {
		"ct/shipbell",
		},
	  },

	  smoothAnim          = true,
	  turnRate            = 416,
	  workerTime          = 0,
	  waterline           = 4,
	  script              = [[baaship.lua]],
	
	  weapons             = {
	
	
	    {
	      def                = [[AA]],
	      badTargetCategory  = [[GUNSHIP CRUISER]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP CRUISER]],
	    },

	    {
	      def                = [[AA]],
	      badTargetCategory  = [[GUNSHIP CRUISER]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP CRUISER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	
	    AA           = {
	      name                    = [[Vertical Launch AA Missile]],
	      areaOfEffect            = 64,
	      canattackground         = true,
	      cylinderTargetting      = 1,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 7,
		Cruiser = 70,
		Building = 7,
		Mech = 7,
		Tank = 7,
		Aircraft = 70,
		Ship = 7,
		Sub = 7,

		Meteor = 0,
		Drone = 7,
		Spare1 = 7,
		Spare2 = 7,
		Spare3 = 7,
	      },
	
	      explosionGenerator      = [[custom:ct_impact_missile_aa]],
	      flightTime              = 4,
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      model                   = [[projectiles/baamissile.s3o]],
	      range                   = 840,
	      reloadtime              = 1.5,
	      smokedelay              = [[0.1]],
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[]],
	      soundTrigger            = true,
	      startVelocity           = 520,
	      tolerance               = 9950,
	      tracks                  = true,
	      turnRate                = 68000,
	      turret                  = true,
              vlaunch                 = true,
	      weaponAcceleration      = 160,
	      weaponTimer             = 1,
	      weaponType              = [[StarburstLauncher]],
	      weaponVelocity          = 820,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Air Ship]],
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
	      metal            = 160,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Air Ship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1750,
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
	
	return lowerkeys({ baaship = unitDef })