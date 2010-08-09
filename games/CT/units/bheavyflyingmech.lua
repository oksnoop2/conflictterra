	unitDef = {
	  unitname            = [[bheavyflyingmech]],
	  name                = [[Hattori Aerial Combat Mech]],
	  description         = [[Aerial Assault Mech - Stronger model of the airborne "mech."  Fires a powerful beam. - Build Limit: 10]],
	  acceleration        = 0.24,
	  amphibious          = false,
	  bankscale           = [[1]],
	  bmcode              = [[1]],
	  brakeRate           = 4.41,
	  buildCostEnergy     = 5000,
	  buildCostMetal      = 4000,
	  builder             = false,
	  buildPic            = [[bheavyflyingmech.png]],
	  buildTime           = 40,
	  canAttack           = true,
          canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  canSubmerge         = false,
	  category            = [[GUNSHIP]],
	  collide             = false,
	  corpse              = [[DEAD]],
          cruiseAlt           = 75,
          reclaimable         = false,
	
	  defaultmissiontype  = [[VTOL_standby]],
	  explodeAs           = [[BIG_UNIT]],
	  floater             = false,
          footprintx          = 4,
	  footprintZ          = 4,
          hoverAttack         = true,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[1280]],
	  mass                = 500,
	  maxDamage           = 1300,
	  maxVelocity         = 4,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP SUB]],
	  objectName          = [[bheavyflyingmech.s3o]],
	  scale               = [[1]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[BIG_UNIT]],

	  sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 500,
	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[VTOL]],
	  turnRate            = 792,
	  workerTime          = 0,
	  unitRestricted      = 10,
          script              = [[bheavyflyingmech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[GUNSHIP]],
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
	      description      = [[Wreckage - Heavy Flying Mech]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 975,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 2000,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Heavy Flying Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 650,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 1000,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bheavyflyingmech = unitDef })