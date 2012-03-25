	unitDef = {
	  unitname            = [[badvlandturret]],
	  name                = [[High-Power Beam Turret]],
	  description         = [[Fires a powerful Anti-Unit beam cannon. Slow to reload.]],
	  buildCostEnergy     = 550,
	  buildCostMetal      = 550,
	  builder             = false,
	  buildPic            = [[badvlandturret.png]],
	  buildTime           = 40,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[SINK]],
	  collisionVolumeTest = 1,
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  customParams = {
	  	RequireTech   = [[Raised Strategic Importance]],
	  },	
	
	  explodeAs           = [[SMALL_BUILDING]],
	  footprintx          = 5,
	  footprintZ          = 5,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 1300,
	  maxDamage           = 5000,
	  maxSlope            = 18,
	  maxWaterDepth       = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[badvlandturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDING]],
	  side                = [[NKG]],
	  sightDistance       = 600,

	  sounds			= {
	      select = {
		"",
		},

	      ok = {
		"",
		},
	  },

	  smoothAnim          = true,
	  workerTime          = 0,
	  yardMap             = [[ooooo ooooo ooooo ooooo ooooo]],
	  script              = [[badvlandturret.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[SWIM LAND SHIP SINK FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	   Laser = {
	      name                    = [[Beam Laser]],
	      areaOfEffect            = 20,
		  avoidFeature            = false,
	      beamTime                = 1,
	      craterMult              = 0.25,
		  collideFriendly         = false,		  
	
	      damage                  = {
		--Anti-Land
		default = 1000,
		Cruiser = 1000,
		Building = 1000,
		Land = 2000,
		Aircraft = 1000,
		Ship = 1000,
		Sub = 1000,

		Meteor = 0,
		Drone = 1000,
		Spare1 = 1000,
		Spare2 = 1000,
		Spare3 = 1000,
	      },
	
	      energypershot           = 0,
	      explosionGenerator      = [[custom:ct_impact_beam_blue]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      largeBeamLaser          = true,
	      laserFlareSize          = 5,
	      lineOfSight             = true,
	      minIntensity            = 1,
	      range                   = 600,
	      reloadtime              = 10,
	      rgbColor                = [[0 0 1]],
	      soundStart              = [[argh/Argh_PlasmaBreach]],
	      targetMoveError         = 0.3,
	      thickness               = 10,
	      coreThickness           = 0.5,
	      tolerance               = 10000,
	      turret                  = true,
	      weaponType              = [[BeamLaser]],
	      weaponVelocity          = 1400,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Advanced Anti-Land Turret]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 8625,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 400,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Advanced Anti-Land Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 5750,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 200,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvlandturret = unitDef })
