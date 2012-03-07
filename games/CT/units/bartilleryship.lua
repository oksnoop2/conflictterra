	unitDef = {
	  unitname            = [[bartilleryship]],
	  name                = [[Miyamoto Class Battleship]],
	  description         = [[Artillery Battleship - Long range, powerful anti-building bombardment.]],
	  acceleration        = 0.03,
	  activateWhenBuilt   = true,
	  brakeRate           = 0.13,
	  buildCostEnergy     = 700,
	  buildCostMetal      = 560,
	  builder             = false,
	  buildPic            = [[bartilleryship.png]],
	  buildTime           = 25,
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
	  collisionVolumeOffsets = [[0 0 0]],
	  collisionVolumeScales  = [[40 48 176]],
	  collisionVolumeTest    = 1,
	  collisionVolumeType    = [[box]],
	  highTrajectory      = 2,
	  idleAutoHeal        = 0,
	  mass                = 350,
	  maxDamage           = 3750,
	  maxVelocity         = 1.8,
	  minWaterDepth       = 10,
	  movementClass       = [[SHIP4x4]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bartilleryship.s3o]],
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
	  turnRate            = 199,
	  waterline           = 5,
	  script              = [[bartilleryship.lua]],
	
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
	      name                    = [[Naval Artillery Cannon]],
	      areaOfEffect            = 64,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 190,
		Cruiser = 190,
		Building = 280,
		Mech = 190,
		Tank = 190,
		Aircraft = 190,
		Ship = 190,
		Sub = 190,

		Meteor = 0,
		Drone = 190,
		Spare1 = 190,
		Spare2 = 190,
		Spare3 = 190,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:ct_impact_artillery]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      myGravity               = 0.1,
	      range                   = 750,
	      reloadtime              = 7.5,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_Whamsound]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Artillery Ship]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 2812,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 280,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Artillery Ship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1875,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 140,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bartilleryship = unitDef })