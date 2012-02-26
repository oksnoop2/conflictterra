	unitDef = {
	  unitname            = [[pnfighter]],
	  name                = [[Fighter]],
	  description         = [[Don't talk about fight club.]],
          amphibious          = false,
	  buildCostEnergy     = 150,
	  buildCostMetal      = 150,
	  buildPic            = [[pnfighter.png]],
	  buildTime           = 12,
	  canAttack           = true,
          canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
          canSubmerge         = false,
	  category            = [[FIXEDWING]],
          collide             = false,
	  corpse              = [[DEAD]],
          cruiseAlt           = 200,
          reclaimable         = false,
	
	  explodeAs           = [[SMALL_UNIT]],
	  floater             = false,
          footprintx          = 2,
	  footprintZ          = 2,
          frontToSpeed        = 0,
	  idleAutoHeal        = 0,
          isFighter           = true,
	  mass                = 75,
          maxAcc              = 0.5,
	  maxDamage           = 350,
	  maxVelocity         = 10,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[pnfighter.s3o]],
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
	  sightDistance       = 700,
	  smoothAnim          = true,
          speedToFront        = 0,
          script              = [[pnfightermkii.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Machine_Gun]],
	      badTargetCategory  = [[GUNSHIP]],
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
		default = 5,
		Cruiser = 5,
		Building = 5,
		Mech = 5,
		Tank = 5,
		Aircraft = 20,
		Ship = 5,
		Sub = 5,
	      },
	
	      edgeEffectiveness       = 1,
	      explosionGenerator      = [[custom:ct_impact_fighter]],
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      pitchtolerance          = [[18000]],
	      range                   = 700,
	      reloadtime              = 0.5,
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
	      damage           = 262,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 60,
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
	      damage           = 175,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 30,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ pnfighter = unitDef })