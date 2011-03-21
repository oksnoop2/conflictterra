	unitDef = {
	  unitname            = [[blaserplane]],
	  name                = [[Suzaku Type Fighter MkIII]],
	  description         = [[Anti-Cruiser Fighter - New fighter model armed with  beam weaponry that cuts through cruisers.  Can only attack Cruisers.]],
	  amphibious          = false,
	  buildCostEnergy     = 150,
	  buildCostMetal      = 150,
	  buildPic            = [[blaserplanemkiii.png]],
	  buildTime           = 15,
	  canAttack           = true,
	  canDropFlare        = false,
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
	  footprintx          = 3,
	  footprintZ          = 3,
	  frontToSpeed        = 0.5,
	  idleAutoHeal        = 0,
	  mass                = 150,
          maxAcc              = 0.3,
	  maxDamage           = 750,
	  maxVelocity         = 10,
	  minCloakDistance    = 75,
	  noChaseCategory     = [[MINERALS FIXEDWING LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[blaserplanemkiii.s3o]],
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
	  turnRate            = 300,
	  turnRadius          = 1000,
	  script              = [[blaserplane.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
	      onlyTargetCategory = [[GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Laser = {
              name                    = [[Anti-Cruiser Laser]],
              areaOfEffect            = 8,
              avoidFriendly           = 0,
	      beamTime                = 0.2,
              craterMult              = 0.25,
              accuracy                = 0,
	      canattackground         = false,
	      collideFriendly         = false,
	      energypershot           = 0,
        
              damage                  = {
                Cruiser = 20,
                Building = 10,
                Mech = 10,
                Tank = 10,
                Aircraft = 10,
                Ship = 10,
                Sub = 10,
              },
        
              interceptedByShieldType = 1,
              lineOfSight             = true,
              range                   = 500,
              reloadtime              = 0.2,
              rgbColor                = [[1 0 0]],
              separation              = 2,
	      thickness               = 1,
	      minIntensity            = 1,
              size                    = 0.4,
              soundStart              = [[ct/empfire]],
              soundStartVolume        = 0.5,
              soundTrigger            = true,
              stages                  = 50,
              targetBorder            = 1,
              tolerance               = 8000,
              turret                  = true,
              weaponType              = [[BeamLaser]],
              weaponVelocity          = 2500,
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
	      metal            = 120,
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
	      metal            = 60,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ blaserplane = unitDef })