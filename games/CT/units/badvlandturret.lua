	--High-Powered Beam Turret Unit Def by Sanada
	--Notes:  NOT Balanced Version 1

	unitDef = {
	  unitname            = [[badvlandturret]],
	  name                = [[BJ-004 High-Power Beam Turret]],
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
	      description      = [[Wreckage - High-Power Beam Turret]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 2500,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 275,
	      object           = [[wrecks/badvlandturretwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 8250,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - High-Power Beam Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1250,
	      energy           = 0,
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 138,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 4125,
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvlandturret = unitDef })
