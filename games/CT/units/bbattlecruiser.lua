	unitDef = {
	  unitname            = [[bbattlecruiser]],
	  name                = [[Uesugi Class Cruiser]],
	  description         = [[Battle Cruiser - Pride of the NKG, the battle cruiser is able to punch through even the hardiest of lines. - Build Limit: 8]],
	  acceleration        = 0.15,
	  activateWhenBuilt   = true,
          airStrafe           = 0,
	  amphibious          = false,
	  bankscale           = [[0.5]],
	  bmcode              = [[0]],
	  brakeRate           = 3.75,
	  buildCostEnergy     = 5000,
	  buildCostMetal      = 4000,
	  builder             = false,
	  buildPic            = [[bbattlecruiser2.png]],
	  buildTime           = 60,
	  canAttack           = true,
          canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
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
	
	  defaultmissiontype  = [[VTOL_standby]],
	  explodeAs           = [[LARGE_UNIT]],
	  floater             = true,
          footprintx          = 7,
	  footprintZ          = 7,
          hoverAttack         = true,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[500]],
	  mass                = 2500,
	  maxDamage           = 9000,
	  maxVelocity         = 3,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB]],
	  objectName          = [[bbattlecruiser2.s3o]],
	  scale               = [[1]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[LARGE_UNIT]],

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  steeringmode        = [[1]],

	  sounds			= {
	      select = {
		"ct/cruiserengine",
		},
	      ok = {
		"ct/cruiserengine",
		},
	  },

	  TEDClass            = [[VTOL]],
	  turnRate            = 297,
	  upright             = true,
	  workerTime          = 0,
	  unitRestricted      = 8,
          script              = [[bbattlecruiser2.lua]],
	
	  weapons                = {
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP]],
	      mainDir            = [[0 1 0]],
	      maxAngleDif        = 200,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },

	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP]],
	      mainDir            = [[1 0 0]],
	      maxAngleDif        = 200,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },

	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP]],
	      mainDir            = [[0 -1 0]],
	      maxAngleDif        = 200,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },

	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP]],
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
		Cruiser = 160,
		Building = 160,
		Mech = 160,
		Tank = 160,
		Aircraft = 160,
		Ship = 160,
		Sub = 10,
	      },
	
	      duration                = 0.02,
	      energypershot           = 0,
	      explosionGenerator      = [[custom:megapartgun]],
	      interceptedByShieldType = 1,
	      heightMod               = 0.5,
	      lineOfSight             = true,
	      range                   = 1000,
	      reloadtime              = 0.5,
	      rgbColor                = [[1 0 0]],
	      soundStart              = [[ct/pew1]],
	      targetMoveError         = 0.15,
	      thickness               = 3.76646385884692,
	      tolerance               = 10000,
	      turret                  = true,
	      weaponType              = [[LaserCannon]],
	      weaponVelocity          = 1500,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Battle Cruiser]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 6750,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 2000,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Battle Cruiser]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 4500,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 7,
	      footprintZ       = 7,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 1000,
	      object           = [[b7x7heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bbattlecruiser = unitDef })
