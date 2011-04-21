	unitDef = {
	  unitname            = [[bflyingmech]],
	  name                = [[Fuma Aerial Combat Mech]],
	  description         = [[Cruiser Destroyer Mech - Airborne "mech" designed to destroy cruisers.  Fires beam weapons and two AA missiles.  Cannot attack ground.]],
	  acceleration        = 0.154,
	  amphibious          = false,
	  brakeRate           = 3.75,
	  buildCostEnergy     = 450,
	  buildCostMetal      = 450,
	  builder             = false,
	  buildPic            = [[bflyingmech.png]],
	  buildTime           = 25,
	  canAttack           = true,
          canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[GUNSHIP]],
	  collide             = false,
	  corpse              = [[DEAD]],
          cruiseAlt           = 50,
          reclaimable         = false,
	
	  explodeAs           = [[MEDIUM_UNIT]],
	  floater             = false,
          footprintx          = 3,
	  footprintZ          = 3,
          hoverAttack         = true,
	  idleAutoHeal        = 0,
	  mass                = 125,
	  maxDamage           = 500,
	  maxVelocity         = 5,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[bflyingmech.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[MEDIUM_UNIT]],

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
	    },
	
	  },



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
          script              = [[bflyingmech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[AA]],
	      badTargetCategory  = [[GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[AA]],
	      badTargetCategory  = [[GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Laser = {
	      name                    = [[Burst Laser]],
	      areaOfEffect            = 8,
	      coreThickness           = 0.5,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 10,
		Cruiser = 50,
		Building = 10,
		Mech = 10,
		Tank = 10,
		Aircraft = 10,
		Ship = 10,
		Sub = 10,

		Meteor = 0,
		Drone = 10,
		Spare1 = 10,
		Spare2 = 10,
		Spare3 = 10,
	      },
	
	      duration                = 0.01,
	      energypershot           = 0,
	      explosionGenerator      = [[custom:megapartgun]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      heightMod               = 0.5,
	      range                   = 750,
	      reloadtime              = 1,
	      rgbColor                = [[1 0 0]],
	      soundStart              = [[ct/pew1]],
	      targetMoveError         = 0.07,
	      thickness               = 4,
	      tolerance               = 2000,
	      turret                  = true,
	      weaponType              = [[LaserCannon]],
	      weaponVelocity          = 2000,
	    },

	    AA         = {
	      name                    = [[Homing AA Missile]],
	      areaOfEffect            = 48,
	      avoidFriendly           = true,
	      canattackground         = false,
	      cylinderTargetting      = 1,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 10,
		Cruiser = 20,
		Building = 10,
		Mech = 10,
		Tank = 10,
		Aircraft = 50,
		Ship = 10,
		Sub = 10,

		Meteor = 0,
		Drone = 10,
		Spare1 = 10,
		Spare2 = 10,
		Spare3 = 10,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      model                   = [[baamissile.s3o]],
	      range                   = 300,
	      reloadtime              = 6,
	      smokedelay              = [[0.1]],
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[evolutionRTS/aircraft_missile_01]],
	      startVelocity           = 200,
	      tolerance               = 22000,
	      tracks                  = true,
	      turnRate                = 30000,
	      turret                  = true,
	      weaponAcceleration      = 550,
	      weaponTimer             = 5,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Fuma Aerial Combat Mech]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 250,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 225,
	      object           = [[wrecks/bflyingmechwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 6600,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Fuma Aerial Combat Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 125,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 112,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3300,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bflyingmech = unitDef })