	unitDef = {
	  unitname            = [[bheavyflyingmech]],
	  name                = [[Hattori Aerial Combat Mech]],
	  description         = [[Cruiser Destroyer Mech - Fires a powerful beam specifically to destroy Cruisers.]],
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
	  collide             = true,
	  corpse              = [[DEAD]],
	  cruiseAlt           = 350,
	  reclaimable         = false,

	  customParams = {
	  	RequireTech   = [[Ace Pilot's Presence]],
	  },
	
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
	  script              = [[bheavyflyingmech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[CRUISER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	   Laser = {
	      name                    = [[Beam Laser]],
	      areaOfEffect            = 20,
	      beamTime                = 0.5,
	      canattackground         = false,
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
	      explosionGenerator      = [[custom:ct_impact_beam_blue]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      largeBeamLaser          = true,
	      laserFlareSize          = 5,
	      lineOfSight             = true,
	      minIntensity            = 1,
	      range                   = 600,
	      reloadtime              = 6,
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
	      description      = [[Wreckage - Hattori Aerial Combat Mech]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 650,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 675,
	      object           = [[wrecks/bheavyflyingmechwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 20100,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Hattori Aerial Combat Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 325,
	      energy           = 0,
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 337,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 10050,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bheavyflyingmech = unitDef })