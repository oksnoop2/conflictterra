	unitDef = {
	  unitname            = [[baircruiser]],
	  name                = [[Heike Class Cruiser]],
	  description         = [[Cruiser that is able to contruct aircraft.  Must deploy into the Heike Class Cruiser Airport in order to build aircraft.]],
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
          collisionVolumeScales  = [[112 100 240]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  corpse              = [[DEAD]],
          cruiseAlt           = 175,
          reclaimable         = false,
	
	  explodeAs           = [[LARGE_UNIT]],
	  floater             = true,
          footprintx          = 6,
	  footprintZ          = 6,
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
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
	    },
	
	  },

	  turnRate            = 250,
	  upright             = true,
          script              = [[baircruiser.lua]],
	
	  weapons             = {

	    {
	      def                = [[Ground]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 -1 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[AA]],
	      badTargetCategory  = [[GUNSHIP]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 90,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    AA         = {
	      name                    = [[Homing AA Missile]],
	      areaOfEffect            = 48,
	      avoidFriendly           = true,
	      canattackground         = false,
	      cylinderTargetting      = 1,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 200,
		Building = 20,
		Mech = 20,
		Tank = 20,
		Aircraft = 200,
		Ship = 20,
		Sub = 10,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      model                   = [[baamissile.s3o]],
	      range                   = 600,
	      reloadtime              = 3,
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

	    Ground = {
	      name                    = [[Air-to-Ground Missile]],
	      areaOfEffect            = 160,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 250,
		Building = 250,
		Mech = 250,
		Tank = 250,
		Aircraft = 250,
		Ship = 250,
		Sub = 250,
	      },
	
	      model                   = [[bsmallmissile.s3o]],
	      edgeEffectiveness       = 0.5,
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      range                   = 600,
	      reloadtime              = 3,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[nexuiz/rocket_fire]],
	      tolerance               = 4000,
	      trajectoryHeight        = 0.5,
	      tracks                  = true,
	      turnRate                = 1000,
	      turret                  = true,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 400,
	      startVelocity           = 400,
	      weaponAcceleration      = 70,
	    },

          },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Heike Class Cruiser]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 2250,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 7,
	      footprintZ       = 16,
	      metal            = 150,
	      object           = [[wrecks/baircruiserwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Heike Class Cruiser]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1125,
	      energy           = 0,
	      footprintX       = 7,
	      footprintZ       = 7,
	      metal            = 75,
	      object           = [[b7x7heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	    },
	
	  },
	
	}
	
	return lowerkeys({ baircruiser = unitDef })
