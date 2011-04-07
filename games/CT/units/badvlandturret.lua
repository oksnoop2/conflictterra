	unitDef = {
	  unitname            = [[badvlandturret]],
	  name                = [[High-Power Beam Turret]],
	  description         = [[A powerful beam weapon emplacement.]],
	  acceleration        = 0,
	  brakeRate           = 0,
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
	
	  explodeAs           = [[SMALL_BUILDING]],
          footprintx          = 5,
	  footprintZ          = 5,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 1300,
	  maxDamage           = 5000,
          maxSlope            = 18,
	  maxVelocity         = 0,
          maxWaterDepth       = 0,
	  minCloakDistance    = 150,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[badvlandturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDING]],
	  side                = [[NKG]],
	  sightDistance       = 600,

	  sounds			= {
	      select = {
		"evolutionRTS/turretselect",
		},

	      ok = {
		"evolutionRTS/turretselect",
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
	      beamTime                = 1,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 2000,
		Cruiser = 2000,
		Building = 2000,
		Mech = 2000,
		Tank = 2000,
		Aircraft = 2000,
		Ship = 2000,
		Sub = 2000,
	      },
	
	      energypershot           = 0,
	      explosionGenerator      = [[custom:megapartgun]],
	      interceptedByShieldType = 1,
	      largeBeamLaser          = true,
	      laserFlareSize          = 5,
	      lineOfSight             = true,
	      minIntensity            = 1,
	      range                   = 600,
	      reloadtime              = 10,
	      rgbColor                = [[1 0 0]],
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
