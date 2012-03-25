	unitDef = {
	  unitname            = [[bmechcruiser]],
	  name                = [[Saito Class Cruiser]],
	  description         = [[Cruiser that is able to contruct Combat Mechs. Must Deploy into the Deployed Saito Class Cruiser in order to build mechs.]],
	  acceleration        = 0.15,
	  activateWhenBuilt   = true,
	  airStrafe           = 0,
	  amphibious          = false,
	  brakeRate           = 3.75,
	  buildCostEnergy     = 300, --600
	  buildCostMetal      = 300, --600
	  builder             = false,
	  buildPic            = [[bmechcruiser.png]],
	  buildTime           = 30, --45
	  canAttack           = true,
	  canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  canSubmerge         = false,
	  category            = [[CRUISER]],
	  collide             = true,
	  
	  collisionVolumeOffsets = [[0 0 0]],
	  collisionVolumeScales  = [[110 140 290]],
	  collisionVolumeTest    = 1,
	  collisionVolumeType    = [[ellipsoid]],
	  
	  corpse              = [[DEAD]],
	  cruiseAlt           = 400,
	  reclaimable         = false,

	  explodeAs           = [[LARGE_UNIT]],
	  floater             = true,
	  footprintx          = 10,
	  footprintZ          = 10,
	  hoverAttack         = true,
	  idleAutoHeal        = 0,
	  mass                = 2500,
	  maxDamage           = 5000,
	  maxVelocity         = 3,
	  verticalSpeed       = 30,	  
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[bmechcruiser.s3o]],
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
	  script              = [[bmechcruiser.lua]],
	
	  weapons             = {

	    {
	      def                = [[Laser]],
	      mainDir            = [[1 0 0]],
	      maxAngleDif        = 200,
	      onlyTargetCategory = [[CRUISER]],
	    },

	    {
	      def                = [[Laser]],
	      mainDir            = [[-1 0 0]],
	      maxAngleDif        = 200,
	      onlyTargetCategory = [[CRUISER]],
	    },

	    {
	      def                = [[AA]],
	      mainDir            = [[0 1 0]],
	      maxAngleDif        = 220,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Laser = {
	      name                    = [[Cruiser to Cruiser Beam Cannon]],
	      areaOfEffect            = 8,
		  avoidFeature            = false,
	      burst                   = 4,
	      burstRate               = 0.25,
	      coreThickness           = 0.5,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		--Anti-Cruiser
		default = 4,
		Cruiser = 10,
		Building = 4,
		Land = 4,
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
		  avoidFeature            = false,
	      avoidFriendly           = true,
	      burst                   = 2,
	      burstrate               = 0.01,
	      canattackground         = false,
	      cegtag                  = [[ct_missiletail_aa]],
	      collideFriendly         = false,		  
	      cylinderTargetting      = 1,
	      craterMult              = 0.25,
	
	      damage                  = {
		--Anti-Plane
		default = 20,
		Cruiser = 20,
		Building = 20,
		Land = 20,
		Aircraft = 80,
		Ship = 20,
		Sub = 20,

		Meteor = 0,
		Drone = 20,
		Spare1 = 20,
		Spare2 = 20,
		Spare3 = 20,
	      },
	
	      explosionGenerator      = [[custom:ct_impact_missile_aa]],
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
	      texture2                = [[ct_smoketrail]],
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
	      description      = [[Wreckage - Saito Class Cruiser]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 1500,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 6,
	      footprintZ       = 15,
	      mass             = 2000,
	      metal            = 150,
	      object           = [[wrecks/bmechcruiserwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 4500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Saito Class Cruiser]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 750,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 7,
	      footprintZ       = 7,
	      mass             = 750,
	      metal            = 75,
	      object           = [[b7x7heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2250,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bmechcruiser = unitDef })