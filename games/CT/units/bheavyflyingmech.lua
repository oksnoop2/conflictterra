	unitDef = {
	  unitname            = [[bheavyflyingmech]],
	  name                = [[Hattori Aerial Combat Mech]],
	  description         = [[Cruiser Destroyer Mech - Fires a powerful beam to deal heavy damage to Cruisers. - Build Limit: 10]],
	  acceleration        = 0.24,
	  amphibious          = false,
	  brakeRate           = 4.41,
	  buildCostEnergy     = 1350,
	  buildCostMetal      = 1350,
	  builder             = false,
	  buildPic            = [[bheavyflyingmech.png]],
	  buildTime           = 75,
	  canAttack           = true,
          canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  canSubmerge         = false,
	  category            = [[GUNSHIP]],
	  collide             = false,
	  corpse              = [[DEAD]],
          cruiseAlt           = 75,
          reclaimable         = false,
	
	  explodeAs           = [[BIG_UNIT]],
	  floater             = false,
          footprintx          = 4,
	  footprintZ          = 4,
          hoverAttack         = true,
	  idleAutoHeal        = 0,
	  mass                = 500,
	  maxDamage           = 1300,
	  maxVelocity         = 4,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB FIXEDWING]],
	  objectName          = [[bheavyflyingmech.s3o]],
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
	  turnRate            = 750,
	  unitRestricted      = 10,
          script              = [[bheavyflyingmech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
	      onlyTargetCategory = [[GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	   Laser = {
	      name                    = [[Beam Laser]],
	      areaOfEffect            = 20,
	      beamTime                = 0.5,
	      craterMult              = 0.25,
	      collideFriendly         = false,
	      accuracy                = 100,
	
	      damage                  = {
		default = 500,
		Cruiser = 2000,
		Building = 500,
		Mech = 500,
		Tank = 500,
		Aircraft = 500,
		Ship = 500,
		Sub = 500,

		Meteor = 0,
		Drone = 500,
		Spare1 = 500,
		Spare2 = 500,
		Spare3 = 500,
	      },
	
	      energypershot           = 0,
	      explosionGenerator      = [[custom:megapartgun]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      largeBeamLaser          = true,
	      laserFlareSize          = 5,
	      lineOfSight             = true,
	      minIntensity            = 1,
	      range                   = 600,
	      reloadtime              = 6,
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