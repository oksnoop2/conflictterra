	unitDef = {
	  unitname            = [[bheavyassaultmech]],
	  name                = [[Izanagi Assault Mech]],
	  description         = [[Heavy Assault Mech - Prototype SM capable of dealing high damage to Buildings and Units alike. - Build Limit: 3]],
	  acceleration        = 1,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 2000,
	  buildCostMetal      = 2000,
	  builder             = false,
	  buildPic            = [[bheavyassaultmech.png]],
	  buildTime           = 90,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,

	  customParams = {
	  	RequireTech   = [[Ace Pilot's Presence]],
	  },
	
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 6,
	  footprintZ          = 6,
	  idleAutoHeal        = 0,
	  mass                = 6000,
	  maxDamage           = 50000,
	  maxSlope            = 36,
	  maxVelocity         = 2,
	  maxWaterDepth       = 22,
	  movementClass       = [[Mech6x6]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bheavyassaultmech.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],
	  selfDestructCountdown = 10,

	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_cannon_tank",
		"custom:ct_cannon_artillery",
		"custom:ct_cannon_artillery_side",
	    },
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

	  turnInPlace         = 1,
	  turnRate            = 1000,
	  upright             = true,
	  unitRestricted      = 3,
	  script              = [[bheavyassaultmech.lua]],
	
	  weapons             = {

	    {
	      def                = [[Artillery]],
	      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
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
	
	    Artillery             = {
	      name                    = [[Heavy Artillery Cannon]],
	      areaOfEffect            = 32,
		  avoidFeature            = false,
	      burst                   = 2,
	      burstrate               = 0.01,
	      craterMult              = 0.25,
	      accuracy                = 500,
		  collideFriendly         = false,
	
	      damage                  = {
		--Anti-Building
		default = 150,
		Cruiser = 150,
		Building = 300,
		Land = 150,
		Aircraft = 150,
		Ship = 150,
		Sub = 150,

		Meteor = 0,
		Drone = 150,
		Spare1 = 150,
		Spare2 = 150,
		Spare3 = 150,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:ct_impact_artillery]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      myGravity               = 0.1,
	      range                   = 1000,
	      reloadtime              = 2,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_Whamsound]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
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
	      impulseFactor           = 0,
	      range                   = 340,
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
	      description      = [[Wreckage - Izanagi Assault Mech]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 25000,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 6,
	      footprintZ       = 6,
	      metal            = 1000,
	      object           = [[wrecks/bheavyassaultmechwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 30000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Izanagi Assault Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 12500,
	      energy           = 0,
	      footprintX       = 6,
	      footprintZ       = 6,
	      metal            = 500,
	      object           = [[b6x6heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15000,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bheavyassaultmech = unitDef })