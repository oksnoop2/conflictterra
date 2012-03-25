	unitDef = {
	  unitname            = [[bacemech]],
	  name                = [[Maeda Combat Mech]],
	  description         = [[Ace Mech - High powered and well armed Anti-Unit SM. Unlocks stronger units. - Build Limit: 3]],
	  acceleration        = 1,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 1000,
	  buildCostMetal      = 1000,
	  builder             = false,
	  buildPic            = [[bacemech.png]],
	  buildTime           = 60,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,

	  customParams = {
	  	ProvideTech   = [[Ace Pilot's Presence, Raised Strategic Importance]],
	  },
	
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  mass                = 175,
	  maxDamage           = 1250,
	  maxSlope            = 36,
	  maxVelocity         = 5,
	  maxWaterDepth       = 22,
	  movementClass       = [[Mech4x4]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bacemech.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],

	  side                = [[NKG]],
	  sightDistance       = 600,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_cannon_narrow",
		"custom:ct_jumpjet",
		"custom:ct_jumpjet_land",		
	    },
	
	  },

	  turnInPlace         = 1,
	  turnRate            = 1000,
	  upright             = true,
	  unitRestricted      = 3,
	  script              = [[bacemech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SHIP SINK FLOAT HOVER]],
	    },

	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SHIP SINK FLOAT HOVER]],
	    },

	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	   Laser = {
	      name                    = [[Beam Laser]],
	      areaOfEffect            = 20,
		  avoidFeature            = false,
	      beamTime                = 1,
	      craterMult              = 0.25,
	      accuracy                = 100,
		  collideFriendly         = false,
	
	      damage                  = {
		--Anti-Land
		default = 250,
		Cruiser = 250,
		Building = 250,
		Land = 500,
		Aircraft = 250,
		Ship = 250,
		Sub = 250,

		Meteor = 0,
		Drone = 250,
		Spare1 = 250,
		Spare2 = 250,
		Spare3 = 250,

	      },
	
	      energypershot           = 0,
	      explosionGenerator      = [[custom:ct_impact_beam_blue]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      largeBeamLaser          = true,
	      laserFlareSize          = 2,
	      lineOfSight             = true,
	      minIntensity            = 1,
	      range                   = 600,
	      reloadtime              = 4,
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

	    Cannon = {
	      name                    = [[Light Cannon]],
	      areaOfEffect            = 32,
		  avoidFeature            = false,
	      craterMult              = 0.25,
	      accuracy                = 200,
		  collideFriendly         = false,
	
	      damage                  = {
		--Anti-Land
		default = 50,
		Cruiser = 50,
		Building = 50,
		Land = 100,
		Aircraft = 50,
		Ship = 50,
		Sub = 50,

		Meteor = 0,
		Drone = 50,
		Spare1 = 50,
		Spare2 = 50,
		Spare3 = 50,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:ct_impact_cannon]],
	      interceptedByShieldType = 1,
	      range                   = 600,
	      reloadtime              = 1,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Maeda Combat Mech]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 625,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 500,
	      object           = [[wrecks/bacemechwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 30000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Maeda Combat Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 312,
	      energy           = 0,
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 250,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15000,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bacemech = unitDef })