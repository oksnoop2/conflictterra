	unitDef = {
	  unitname            = [[bprimarycruiser]],
	  name                = [[Oda Class Cruiser]],
	  description         = [[Expeditionary Cruiser - First NKG vessel on the scene. Able to Deploy into the Mobile Headquarters. - Build Limit: 1]],
	  acceleration        = 0.16,
	  activateWhenBuilt   = true,
	  airStrafe           = 0,
	  amphibious          = true,
	  brakeRate           = 1.88,
	  buildCostEnergy     = 500,
	  buildCostMetal      = 500,
	  builder             = false,
	  reclaimable         = false,

	  buildPic            = [[bprimarycruiser.png]],
	  buildRange3D        = false,
	  buildTime           = 30,
	  canAttack           = true,
	  canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canReclaim          = true,
	  canStop             = true,
	  canSubmerge         = false,
	  category            = [[CRUISER]],
	  
	  collisionVolumeOffsets = [[0 0 0]],
	  collisionVolumeScales  = [[90 110 360]],
	  collisionVolumeTest    = 1,
	  collisionVolumeType    = [[ellipsoid]],
	  
	  collide             = true,
	  corpse              = [[DEAD]],
	  cruiseAlt           = 400,
	
	  energyMake          = 0,
	  energyStorage       = 0,
	  energyUse           = 0,
	  explodeAs           = [[BIG_UNIT]],
	  floater             = true,
	  footprintx          = 10,
	  footprintZ          = 10,
	  hoverAttack         = true,
	  idleAutoHeal        = 0,
	  mass                = 2500,
	  maxDamage           = 5000,
	  maxVelocity         = 4,
	  verticalSpeed       = 30,	  
	  metalMake           = 0,
	  metalStorage        = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[bprimarycruiser.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[BIG_UNIT]],
	  showNanospray       = 0,
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
	  --unitRestricted      = 1,
	  script              = [[bprimarycruiser.lua]],


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
		Cruiser = 16,
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
	      collideFriendly         = false,		  
	      cegtag                  = [[ct_missiletail_aa]],
	      cylinderTargetting      = 1,
	      craterMult              = 0.25,
	
	      damage                  = {
		--Anti-Plane
		default = 20,
		Cruiser = 20,
		Building = 20,
		Land = 20,
		Aircraft = 125,
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
	      description      = [[Wreckage - Oda Class Cruiser]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 2500,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 10,
	      footprintZ       = 20,
	      mass             = 2000,
	      metal            = 250,
	      object           = [[wrecks/bprimarycruiserwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Oda Class Cruiser]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1250,
	      energy           = 0,
	      footprintX       = 10,
	      footprintZ       = 10,
	      metal            = 125,
	      mass             = 750,
	      object           = [[b10x10heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 7500,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bprimarycruiser = unitDef })
