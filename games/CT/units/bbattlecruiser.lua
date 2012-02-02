	unitDef = {
	  unitname            = [[bbattlecruiser]],
	  name                = [[Uesugi Class Cruiser]],
	  description         = [[Battle Cruiser - Pride of the NKG, the battle cruiser is able to punch through even the hardiest of lines. - Build Limit: 8]],
	  acceleration        = 0.15,
	  activateWhenBuilt   = true,
          airStrafe           = 0,
	  amphibious          = false,
	  brakeRate           = 3.75,
	  buildCostEnergy     = 2000,
	  buildCostMetal      = 2000,
	  builder             = false,
	  buildPic            = [[bbattlecruiser.png]],
	  buildTime           = 60,
	  canAttack           = true,
          canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  canSubmerge         = false,
	  category            = [[GUNSHIP]],
	  collide             = false,
          collisionVolumeOffsets = [[0 0 0]],
          collisionVolumeScales  = [[112 100 240]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  corpse              = [[DEAD]],
          cruiseAlt           = 175,
          reclaimable         = false,
	
	  explodeAs           = [[LARGE_UNIT]],
	  floater             = true,
          footprintx          = 7,
	  footprintZ          = 7,
          hoverAttack         = true,
	  idleAutoHeal        = 0,
	  mass                = 2500,
	  maxDamage           = 6000,
	  maxVelocity         = 3,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS SUB]],
	  objectName          = [[bbattlecruiser2.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[LARGE_UNIT]],

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"ct/cruiserengine",
		},
	      ok = {
		"ct/cruiserengine",
		},
	  },

	  turnRate            = 250,
	  upright             = true,
	  unitRestricted      = 8,
          script              = [[bbattlecruiser.lua]],
	
	  weapons                = {
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP SINK FLOAT]],
	      mainDir            = [[0 1 0]],
	      maxAngleDif        = 200,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },

	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP SINK FLOAT]],
	      mainDir            = [[1 0 0]],
	      maxAngleDif        = 200,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },

	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP SINK FLOAT]],
	      mainDir            = [[0 -1 0]],
	      maxAngleDif        = 200,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },

	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP SINK FLOAT]],
	      mainDir            = [[-1 0 0]],
	      maxAngleDif        = 200,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs             = {
	
	    Laser = {
	      name                    = [[Burst Laser]],
	      areaOfEffect            = 8,
	      coreThickness           = 0.5,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 120,
		Cruiser = 120,
		Building = 60,
		Mech = 120,
		Tank = 120,
		Aircraft = 200,
		Ship = 120,
		Sub = 120,

		Meteor = 0,
		Drone = 120,
		Spare1 = 120,
		Spare2 = 120,
		Spare3 = 120,
	      },
	
	      duration                = 0.02,
	      energypershot           = 0,
	      explosionGenerator      = [[custom:megapartgun]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      heightMod               = 0.5,
	      lineOfSight             = true,
	      range                   = 750,
	      reloadtime              = 0.5,
	      rgbColor                = [[0 0 1]],
	      soundStart              = [[ct/pew1]],
	      targetMoveError         = 0.15,
	      thickness               = 3,
	      tolerance               = 10000,
	      turret                  = true,
	      weaponType              = [[LaserCannon]],
	      weaponVelocity          = 1500,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Uesugi Class Cruiser]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 3000,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 7,
	      footprintZ       = 7,
	      metal            = 1000,
	      object           = [[wrecks/bbattlecruiser2wreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 30000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Uesugi Class Cruiser]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1500,
	      energy           = 0,
	      footprintX       = 7,
	      footprintZ       = 7,
	      metal            = 500,
	      object           = [[b7x7heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15000,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bbattlecruiser = unitDef })
