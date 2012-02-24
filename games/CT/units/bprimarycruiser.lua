	unitDef = {
	  unitname            = [[bprimarycruiser]],
	  name                = [[Oda Class Cruiser]],
	  description         = [[Expeditionary Cruiser -  Exploratory figurehead of the NKG Air Fleet.  Able to Deploy into the Mobile Headquarters. - Build Limit: 1]],
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
	  category            = [[GUNSHIP]],
          collisionVolumeOffsets = [[0 0 0]],
          collisionVolumeScales  = [[160 100 300]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
          collide             = false,
	  corpse              = [[DEAD]],
          cruiseAlt           = 175,
	
          energyMake          = 5,
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
          metalMake           = 0,
	  metalStorage        = 0,
	  minCloakDistance    = 100,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS SUB]],
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
	  unitRestricted      = 1,
          script              = [[bprimarycruiser.lua]],


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
	      explosionGenerator      = [[custom:megapartgun]],
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
