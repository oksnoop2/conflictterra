	unitDef = {
	  unitname            = [[baircruiser]],
	  name                = [[Azai Class Cruiser]],
	  description         = [[Cruiser that is able to contruct aircraft.  Must Deploy into the Deployed Azai Class Cruiser in order to build aircraft.]],
	  acceleration        = 0.15,
	  activateWhenBuilt   = true,
          airStrafe           = 0,
	  amphibious          = false,
	  brakeRate           = 3.75,
	  buildCostEnergy     = 300,
	  buildCostMetal      = 300,
	  builder             = false,
	  buildPic            = [[baircruiser.png]],
	  buildTime           = 30,
	  canAttack           = true,
          canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  canSubmerge         = false,
	  category            = [[GUNSHIP]],
	  collide             = false,
          collisionVolumeOffsets = [[0 0 0]],
          collisionVolumeScales  = [[160 160 240]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  corpse              = [[DEAD]],
          cruiseAlt           = 175,
          reclaimable         = false,
	
	  explodeAs           = [[LARGE_UNIT]],
	  floater             = true,
          footprintx          = 10,
	  footprintZ          = 10,
          hoverAttack         = true,
	  idleAutoHeal        = 0,
	  mass                = 2500,
	  maxDamage           = 4500,
	  maxVelocity         = 3,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS SUB]],
	  objectName          = [[baircruiser.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[LARGE_UNIT]],
	  showNanoFrame       = false,
	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"ct/cruiserengine",
		},
	      ok = {
		"ct/cruiserengine",
		},
	  },

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_missile_smokecloud",
	    },
	
	  },

	  turnRate            = 250,
	  upright             = true,
          script              = [[baircruiser.lua]],
	
	  weapons             = {

	    {
	      def                = [[Laser]],
	      mainDir            = [[1 0 0]],
	      maxAngleDif        = 200,
	      onlyTargetCategory = [[GUNSHIP]],
	    },

	    {
	      def                = [[Laser]],
	      mainDir            = [[-1 0 0]],
	      maxAngleDif        = 200,
	      onlyTargetCategory = [[GUNSHIP]],
	    },

	    {
	      def                = [[AA]],
	      mainDir            = [[0 1 0]],
	      maxAngleDif        = 220,
	      onlyTargetCategory = [[FIXEDWING]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Laser = {
	      name                    = [[Cruiser to Cruiser Beam Cannon]],
	      areaOfEffect            = 8,
	      burst                   = 4,
	      burstRate               = 0.25,
	      coreThickness           = 0.5,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 4,
		Cruiser = 16,
		Building = 4,
		Mech = 4,
		Tank = 4,
		Aircraft = 4,
		Ship = 4,
		Sub = 4,

		Meteor = 0,
		Drone = 4,
		Spare1 = 4,
		Spare2 = 4,
		Spare3 = 4,
	      },
	
	      duration                = 0.02,
	      energypershot           = 0,
	      explosionGenerator      = [[custom:ct_impact_beamshot_blue]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      heightMod               = 0.5,
	      lineOfSight             = true,
	      range                   = 750,
	      reloadtime              = 1,
	      rgbColor                = [[0 0 1]],
	      soundStart              = [[ct/pew1]],
	      targetMoveError         = 0.15,
	      thickness               = 1.5,
	      tolerance               = 10000,
	      turret                  = true,
	      weaponType              = [[LaserCannon]],
	      weaponVelocity          = 1500,
	    },

	    AA         = {
	      name                    = [[Homing AA Missile]],
	      areaOfEffect            = 48,
	      avoidFriendly           = true,
	      burst                   = 2,
	      burstrate               = 0.01,
	      canattackground         = false,
	      cegtag                  = [[ct_missiletail_aa]],
	      cylinderTargetting      = 1,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 20,
		Cruiser = 20,
		Building = 20,
		Mech = 20,
		Tank = 20,
		Aircraft = 125,
		Ship = 20,
		Sub = 20,

		Meteor = 0,
		Drone = 20,
		Spare1 = 20,
		Spare2 = 20,
		Spare3 = 20,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      model                   = [[projectiles/baamissile.s3o]],
	      range                   = 800,
	      reloadtime              = 3,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[]],
	      startVelocity           = 200,
	      tolerance               = 22000,
	      texture2		      = [[ct_smoketrail]],
	      tracks                  = true,
	      turret                  = true,
	      turnRate                = 30000,
	      weaponAcceleration      = 550,
	      weaponTimer             = 5,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 900,
	    },

          },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Azai Class Cruiser]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 2250,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 10,
	      footprintZ       = 16,
	      mass             = 2000,
	      metal            = 150,
	      object           = [[wrecks/baircruiserwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 4500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Azai Class Cruiser]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1125,
	      energy           = 0,
	      footprintX       = 10,
	      footprintZ       = 10,
	      mass             = 750,
	      metal            = 75,
	      object           = [[b10x10heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2250,
	    },
	
	  },
	
	}
	
	return lowerkeys({ baircruiser = unitDef })
