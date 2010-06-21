	unitDef = {
	  unitname            = [[bfighter]],
	  name                = [[Tori Type Fighter]],
	  description         = [[Fighter - Fast, light fighter armed with four air cannons.]],
          amphibious          = false,
	  buildCostEnergy     = 150,
	  buildCostMetal      = 120,
	  buildPic            = [[bfighter.png]],
	  buildTime           = 12,
	  canAttack           = true,
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
	  explodeAs           = [[GUNSHIPEX]],
	  floater             = false,
          footprintx          = 2,
	  footprintZ          = 2,
          frontToSpeed        = 0,
	  idleAutoHeal        = 0,
          isFighter           = true,
	  maneuverleashlength = [[1280]],
	  mass                = 75,
          maxAcc              = 0.5,
	  maxDamage           = 350,
	  maxVelocity         = 10,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM SATELLITE SUB]],
	  objectName          = [[bfighter.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[GUNSHIPEX]],

	  sfxtypes            = {
	
	    explosiongenerators = {
	      [[custom:ffmuzzle]],
	      [[custom:ffejector]],
	      [[custom:ff_engine]],
	      [[custom:FF_PUFF]],
	      [[custom:ff_wingtips]],
	    },
	
	  },

	  sounds			= {
	      select = {
		"argh/Argh_Jet.wav",
		},

	      ok = {
		"argh/Argh_Jet.wav",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 700,
          size                = [[1]],
          sizedecay           = [[0]],
	  smoothAnim          = true,
          speedToFront        = 0,
          stages              = [[50]],
	  TEDClass            = [[VTOL]],
          script              = [[bfighter.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Machine_Gun]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 60,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	
	    {
	      def                = [[Machine_Gun]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 60,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[Machine_Gun]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 60,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	
	    {
	      def                = [[Machine_Gun]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 60,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Machine_Gun = {
	      name                    = [[Machine Gun]],
	      areaOfEffect            = 8,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 30,
		Building = 10,
		Mech = 10,
		Tank = 10,
		Aircraft = 30,
		Ship = 10,
		Sub = 0.3,
	      },
	
	      edgeEffectiveness       = 1,
	      explosionGenerator      = [[custom:BRAWLIMPACTS]],
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      pitchtolerance          = [[18000]],
	      range                   = 700,
	      reloadtime              = 0.2,
	      rgbColor                = [[1 0.95 0.5]],
	      separation              = 2,
	      size                    = 1,
	      sizeDecay               = 0,
	      soundStart              = [[ct/single_machine_gun]],
	      soundTrigger            = true,
	      stages                  = 50,
	      sweepfire               = true,
	      tolerance               = 8000,
	      turret                  = false,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 2500,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Fighter]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 160,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Fighter]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 160,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bfighter = unitDef })