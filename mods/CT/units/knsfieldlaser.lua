	unitDef = {
	  unitname            = [[knsfieldlaser]],
	  name                = [[Naval Series Field Laser]],
	  description         = [[Anti-Land Turret - Cheap, mildly effective turret designed to counter terrestrial units.  Fires two cannons.]],
	  acceleration        = 0,
	  bmcode              = [[0]],
	  brakeRate           = 0,
	  buildCostEnergy     = 350,
	  buildCostMetal      = 350,
	  builder             = false,
	  buildPic            = [[knsfieldlaser.png]],
	  buildTime           = 20,
	  canAttack           = true,
	  canstop             = [[1]],
	  category            = [[SINK]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  explodeAs           = [[SMALL_BUILDINGEX]],
          footprintx          = 5,
	  footprintZ          = 5,
	  floater             = true,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 35,
	  maxDamage           = 4500,
          maxSlope            = 36,
	  maxVelocity         = 0,
          minWaterDepth       = 0,
	  minCloakDistance    = 150,
	  noAutoFire          = false,
	  noChaseCategory     = [[FIXEDWING LAND SHIP SATELLITE SWIM GUNSHIP SUB HOVER]],
	  objectName          = [[knsfieldlaser.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDINGEX]],
	  side                = [[NKG]],
	  sightDistance       = 473,
	  smoothAnim          = true,
	  TEDClass            = [[FORT]],
	  turnRate            = 0,
	  workerTime          = 0,
	  yardMap             = [[ooooo ooooo ooooo ooooo ooooo]],
          script              = [[knsfieldlaser.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
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
		Cruiser = 2000,
		Building = 2000,
		Mech = 2000,
		Tank = 2000,
		Aircraft = 2000,
		Ship = 2000,
		Sub = 200,
	      },
	
	      energypershot           = 0,
	      explosionGenerator      = [[custom:megapartgun]],
	      interceptedByShieldType = 1,
	      largeBeamLaser          = false,
	      laserFlareSize          = 5,
	      lineOfSight             = false,
	      minIntensity            = 1,
	      range                   = 600,
	      reloadtime              = 10,
	      rgbColor                = [[1 0 0]],
	      soundHit                = [[OTAunit/XPLOLRG1]],
	      soundStart              = [[OTAunit/ANNIGUN1]],
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
	      description      = [[Wreckage - Anti-Land Turret]],
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
	      description      = [[Debris - Anti-Land Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 160,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ knsfieldlaser = unitDef })
