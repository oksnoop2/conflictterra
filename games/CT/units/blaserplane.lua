	unitDef = {
	  unitname            = [[blaserplane]],
	  name                = [[Suzaku Type Fighter MkIII]],
	  description         = [[Anti-Cruiser Fighter - New fighter model armed with anti-Cruiser beam weaponry. Only attacks Cruisers.]],
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
	  cruiseAlt           = 400,
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
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP LAND SINK HOVER SHIP FLOAT SUB]],
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
	  script              = [[blaserplane.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
	      onlyTargetCategory = [[CRUISER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Laser = {
	      name                    = [[Anti-Cruiser Laser]],
	      areaOfEffect            = 8,
		  avoidFeature            = false,
	      avoidFriendly           = false,
	      beamTime                = 0.2,
	      craterMult              = 0.25,
	      accuracy                = 0,
	      canattackground         = false,
	      collideFriendly         = false,
	      energypershot           = 0,
	      explosionGenerator      = [[custom:ct_impact_beamshot_blue]],
        
	      damage                  = {
		--Anti-Cruiser
		--50 dps
		--175 dps cruiser
		default = 10,
		Cruiser = 35,
		Building = 10,
		Land = 10,
		Aircraft = 10,
		Ship = 10,
		Sub = 10,

		Meteor = 0,
		Drone = 10,
		Spare1 = 10,
		Spare2 = 10,
		Spare3 = 10,
              },
        
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 500,
	      reloadtime              = 0.2,
	      rgbColor                = [[0 0 1]],
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
	      description      = [[Wreckage - Suzaku Type Fighter MkIII]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 375,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 75,
	      object           = [[wrecks/blaserplanemkiiiwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2100,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Suzaku Type Fighter MkIII]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 187,
	      energy           = 0,
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 37,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1050,
	    },
	
	  },
	
	}
	
	return lowerkeys({ blaserplane = unitDef })