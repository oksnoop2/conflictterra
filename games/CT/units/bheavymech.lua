	unitDef = {
	  unitname            = [[bheavymech]],
	  name                = [[Honda Combat Mech]],
	  description         = [[Assault Mech - Hardy SM armed with a powerful beam weapon. - Build Limit: 10]],
	  acceleration        = 0.12,
	  bmcode              = [[1]],
	  brakeRate           = 0.25,
	  buildCostEnergy     = 3500,
	  buildCostMetal      = 2800,
	  builder             = false,
	  buildPic            = [[bheavymech.png]],
	  buildTime           = 33,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
	  mass                = 175,
	  maxDamage           = 1250,
	  maxSlope            = 36,
	  maxVelocity         = 3,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[MedMech]],
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB]],
	  objectName          = [[bheavymech.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],

	  side                = [[NKG]],
	  sightDistance       = 600,
	  smoothAnim          = true,
	  steeringmode        = [[2]],

	  sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

	  TEDClass            = [[KBOT]],
	  turninplace         = 0,
	  turnRate            = 1056,
	  upright             = true,
	  workerTime          = 0,
	  unitRestricted      = 10,
          script              = [[bheavymech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[GUNSHIP]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SHIP SINK FLOAT GUNSHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	   Laser = {
	      name                    = [[Beam Laser]],
	      areaOfEffect            = 20,
	      beamTime                = 1,
	      craterMult              = 0.25,
	      accuracy                = 100,
	
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
	      description      = [[Wreckage - Heavy Mech]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 937,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 1400,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Heavy Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 625,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 700,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bheavymech = unitDef })