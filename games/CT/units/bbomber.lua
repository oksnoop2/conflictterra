	unitDef = {
	  unitname            = [[bbomber]],
	  name                = [[Fukurou Type Bomber MkII]],
	  description         = [[Bomber - Light bomber that does high damage to buildings.]],
          amphibious          = false,
	  buildCostEnergy     = 250,
	  buildCostMetal      = 250,
	  builder             = false,
	  buildPic            = [[bbombermkii.png]],
	  buildTime           = 18,
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
          cruiseAlt           = 300,
          reclaimable         = false,
	
	  explodeAs           = [[SMALL_UNIT]],
          fireState           = 0,
          floater             = false,
          footprintx          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  mass                = 250,
          maxAcc              = 0.5,
	  maxDamage           = 500,
	  maxVelocity         = 9,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[bbombermkii.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[SMALL_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 500,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"argh/Argh_Jet.wav",
		},

	      ok = {
		"argh/Argh_Jet.wav",
		},
	  },

          script              = [[bbomber.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Bomb]],
	      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	
	    Bomb = {
	      name                    = [[Bombs]],
	      areaOfEffect            = 256,
	      avoidFeature            = false,
	      avoidFriendly           = false,
	      burst                   = 10,
	      burstrate               = 0.07,
	      commandfire             = true,
	      craterMult              = 0.25,
	      collideFriendly         = true,
	
	      damage                  = {
		default = 10,
		Cruiser = 10,
		Building = 100,
		Mech = 10,
		Tank = 10,
		Aircraft = 10,
		Ship = 100,
		Sub = 10,
	      },
	
	      dropped                 = true,
	      edgeEffectiveness       = 0.7,
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      manualBombSettings      = true,
	      model                   = [[bbombs.s3o]],
	      myGravity               = 0.7,
	      range                   = 500,
	      reloadtime              = 10,
	      soundHit                = [[ct/shot3]],
	      sprayangle              = 64000,
	      startvelocity           = 200,
	      weaponType              = [[AircraftBomb]],
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Bomber]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 375,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 200,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Bomber]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 250,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 100,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bbomber = unitDef })