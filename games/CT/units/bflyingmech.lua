	unitDef = {
	  unitname            = [[bflyingmech]],
	  name                = [[Fuma Aerial Combat Mech]],
	  description         = [[Cruiser Destroyer Mech - Airborne half-mech armed with Cruiser destroying beam cannons and two AA missiles.]],
	  acceleration        = 0.15,
	  amphibious          = false,
	  brakeRate           = 3.75,
	  buildCostEnergy     = 300,
	  buildCostMetal      = 300,
	  builder             = false,
	  buildPic            = [[bflyingmech.png]],
	  buildTime           = 20,
	  canAttack           = true,
	  canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[GUNSHIP]],
	  collide             = true,
	  corpse              = [[DEAD]],
	  cruiseAlt           = 350,
	  reclaimable         = false,
	
	  explodeAs           = [[MEDIUM_UNIT]],
	  floater             = false,
	  footprintx          = 4,
	  footprintZ          = 4,
	  hoverAttack         = true,
	  idleAutoHeal        = 0,
	  mass                = 125,
	  maxDamage           = 500,
	  maxVelocity         = 5,
	  verticalSpeed       = 30,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[bflyingmech.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[MEDIUM_UNIT]],

	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_missile_smokecloud",
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
	  sightDistance       = 850,
	  smoothAnim          = true,
	  turnRate            = 750,
	  script              = [[bflyingmech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[CRUISER]],
	    },

	    {
	      def                = [[Laser]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[CRUISER]],
	    },

	    {
	      def                = [[AA]],
	      badTargetCategory  = [[GUNSHIP]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[AA]],
	      badTargetCategory  = [[GUNSHIP]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Laser = {
	      name                    = [[Burst Laser]],
	      areaOfEffect            = 8,
		  avoidFeature            = false,
	      coreThickness           = 0.5,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		--Anti-Cruiser
		--20 dps
		--80 dps cruiser
		default = 10,
		Cruiser = 40,
		Building = 10,
		Land = 10,
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
	      explosionGenerator      = [[custom:ct_impact_beamshot_blue]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      heightMod               = 0.5,
	      range                   = 750,
	      reloadtime              = 1,
	      rgbColor                = [[0 0 1]],
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
		  avoidFeature            = false,
	      avoidFriendly           = true,
	      canattackground         = false,
	      cylinderTargetting      = 1,
	      cegtag                  = [[ct_missiletail_aa]],
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		--Anti-Plane
		--3 dps
		--66 dps aircraft
		default = 10,
		Cruiser = 10,
		Building = 10,
		Land = 10,
		Aircraft = 50,
		Ship = 10,
		Sub = 10,

		Meteor = 0,
		Drone = 10,
		Spare1 = 10,
		Spare2 = 10,
		Spare3 = 10,
	      },
	
	      explosionGenerator      = [[custom:ct_impact_missile_aa]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      model                   = [[projectiles/baamissile.s3o]],
	      range                   = 750,
	      reloadtime              = 6,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[]],
	      startVelocity           = 200,
	      texture2                = [[ct_smoketrail]],
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