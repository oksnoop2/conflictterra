	unitDef = {
	  unitname            = [[blaserplane]],
	  name                = [[Suzaku Type Fighter]],
	  description         = [[Laser Fighter - Top-of-the-line fighter armed with new beam weaponry. - Build Limit: 20]],
          amphibious          = false,
	  buildCostEnergy     = 300,
	  buildCostMetal      = 240,
	  buildPic            = [[blaserplane.png]],
	  buildTime           = 24,
	  canAttack           = true,
          canDropFlare        = false,
          canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
          canSubmerge         = false,
	  category            = [[FIXEDWING]],
          collide             = false,
	  corpse              = [[DEAD]],
          cruiseAlt           = 200,
          reclaimable         = false,
	
	  defaultmissiontype  = [[VTOL_standby]],
	  explodeAs           = [[SMALL_UNIT]],
          floater             = false,
          footprintx          = 2,
	  footprintZ          = 2,
          frontToSpeed        = 0.5,
	  idleAutoHeal        = 0,
          isFighter           = true,
	  maneuverleashlength = [[1280]],
	  mass                = 150,
          maxAcc              = 0.5,
	  maxDamage           = 550,
	  maxVelocity         = 11,
	  minCloakDistance    = 75,
	  noChaseCategory     = [[TERRAFORM LAND SINK SHIP SWIM FLOAT SUB HOVER]],
	  objectName          = [[blaserplane.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[SMALL_UNIT]],

	  sounds			= {
	      select = {
		"argh/Argh_Jet.wav",
		},

	      ok = {
		"argh/Argh_Jet.wav",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
          speedToFront        = 0.5,
	  TEDClass            = [[VTOL]],
	  unitRestricted      = 20,
          script              = [[blaserplane.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 45,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	    {
	      def                = [[Laser]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 45,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[Laser]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 45,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	
	    {
	      def                = [[Laser]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 45,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Laser = {
	      name                    = [[Burst Laser]],
	      areaOfEffect            = 8,
	      coreThickness           = 0.5,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 160,
		Building = 80,
		Mech = 80,
		Tank = 80,
		Aircraft = 80,
		Ship = 80,
		Sub = 10,
	      },
	
	      duration                = 0.01,
	      energypershot           = 0,
	      explosionGenerator      = [[custom:megapartgun]],
	      interceptedByShieldType = 1,
	      heightMod               = 0.5,
	      range                   = 1000,
	      reloadtime              = 0.5,
	      rgbColor                = [[1 0 0]],
	      soundStart              = [[ct/pew1]],
	      targetMoveError         = 0.15,
	      thickness               = 3.76646385884692,
	      tolerance               = 10000,
	      turret                  = false,
	      weaponType              = [[LaserCannon]],
	      weaponVelocity          = 1500,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Laser Plane]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 412,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 412,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Laser Plane]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 275,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 275,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ blaserplane = unitDef })