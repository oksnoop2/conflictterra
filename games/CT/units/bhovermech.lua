	unitDef = {
	  unitname            = [[bhovermech]],
	  name                = [[Ukita Hover Combat Mech]],
	  description         = [[Hover Assault Mech - Hover-equipped half-mech that is able to instantly move between land and sea.  Armed with both rockets and torpedoes.]],
	  acceleration        = 1,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 350,
	  buildCostMetal      = 350,
	  builder             = false,
	  buildPic            = [[bhovermech.png]],
	  buildTime           = 19,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canHover            = true,
	  canStop             = true,
	  category            = [[HOVER]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  explodeAs           = [[SMALL_UNIT]],
	  footprintX          = 2,
	  footprintZ          = 2,
	  idleAutoHeal        = 0,
	  mass                = 120,
	  maxDamage           = 550,
	  maxSlope            = 36,
	  maxVelocity         = 1.75,
	  minCloakDistance    = 75,
	  movementClass       = [[HOVER2x2]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP]],
	  objectName          = [[bhovermech.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNIT]],

	  side                = [[NKG]],
	  sightDistance       = 600,
          sonarDistance       = 600,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"ct/hoverengine",
		},
	      ok = {
		"ct/hoverengine",
		},
	  },

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_missile_smokecloud",
	    },
	
	  },

	  turnInPlace         = 1,
	  turnRate            = 1000,
          script              = [[bhovermech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Launcher]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[Launcher]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[Torpedo]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 45,
	      onlyTargetCategory = [[SWIM SUB FLOAT SHIP]],
	    },

	    {
	      def                = [[Torpedo]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 45,
	      onlyTargetCategory = [[SWIM SUB FLOAT SHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Launcher = {
	      name                    = [[Small Rocket]],
	      areaOfEffect            = 48,
	      cegTag                  = [[ct_missiletail_small]],
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 35,
		Cruiser = 35,
		Building = 35,
		Mech = 35,
		Tank = 35,
		Aircraft = 35,
		Ship = 35,
		Sub = 35,

		Meteor = 0,
		Drone = 35,
		Spare1 = 35,
		Spare2 = 35,
		Spare3 = 35,
	      },
	
	      model                   = [[projectiles/bsmallmissile.s3o]],
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 600,
	      reloadtime              = 1,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[nexuiz/rocket_fire]],
	      texture2		      = [[ct_smoketrail]],
	      tolerance               = 8000,
	      tracks                  = false,
	      trajectoryHeight        = 0.5,
	      turret                  = true,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 550,
	      startVelocity           = 450,
	      weaponAcceleration      = 100,
	    },

	    Torpedo = {
	      name                    = [[Torpedo]],
	      areaOfEffect            = 16,
	      avoidFriendly           = false,
	      burnblow                = true,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 400,
		Cruiser = 400,
		Building = 400,
		Mech = 400,
		Tank = 400,
		Aircraft = 400,
		Ship = 400,
		Sub = 400,

		Meteor = 0,
		Drone = 400,
		Spare1 = 400,
		Spare2 = 400,
		Spare3 = 400,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      model                   = [[projectiles/btorpedo.s3o]],
	      propeller               = [[1]],
	      range                   = 500,
	      reloadtime              = 2,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[]],
	      startVelocity           = 140,
	      tolerance               = 42767,
	      tracks                  = true,
	      turnRate                = 8000,
	      turret                  = false,
	      waterWeapon             = true,
	      weaponAcceleration      = 15,
	      weaponTimer             = 4,
	      weaponType              = [[TorpedoLauncher]],
	      weaponVelocity          = 140,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Ukita Hover Combat Mech]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 275,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 175,
	      object           = [[wrecks/bhovermechwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 5100,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Ukita Hover Combat Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 167,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 87,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2550,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bhovermech = unitDef })