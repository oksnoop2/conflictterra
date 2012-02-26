	unitDef = {
	  unitname            = [[pnrocketartillery]],
	  name                = [[Rocky]],
	  description         = [[ Adrian!!!!!!!]],
	  acceleration        = 0.02,
	  brakeRate           = 0.03,
	  buildCostEnergy     = 700,
	  buildCostMetal      = 700,
	  builder             = false,
	  buildPic            = [[pnrocketartillery.png]],
	  buildTime           = 30,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 5,
	  footprintZ          = 5,
	  highTrajectory      = 2,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  mass                = 950,
	  maxDamage           = 3000,
	  maxSlope            = 18,
	  maxVelocity         = 1,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[TANK5x5]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[pnrocketartillery.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],


	  sfxtypes            = {
	
	    explosiongenerators = {
		--"custom:orc_machinegun_flash",
		--"custom:orc_machinegun_muzzle",
		--"custom:orc_machinegun_flash_big",
		--"custom:orc_machinegun_muzzle_big",
	    },
	
	  },



	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  trackOffset         = 8,
	  trackStrength       = 10,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 45,
	  turnInPlace         = 1,
	  turnRate            = 500,
	  unitRestricted      = 5,
          script              = [[pnrocketartillery.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Rocket]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Rocket = {
	      name                    = [[Missile Barrage]],
	      areaOfEffect            = 48,
	      burst                   = 10,
	      burstrate               = 0.08,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 100,
		Building = 100,
		Mech = 100,
		Tank = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 5,
	      },
	
	      model                   = [[projectiles/bsmallmissile.s3o]],
	      dance                   = 20,
	      wobble                  = 7000,
	      edgeEffectiveness       = 0.5,
	      explosionGenerator      = [[custom:ct_impact_rocket]],
	      flightTime              = 2.5,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      range                   = 440,
	      reloadtime              = 10,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[nexuiz/rocket_fire]],
	      tolerance               = 500,
	      trajectoryHeight        = 1,
	      turret                  = true,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 250,
	      startVelocity           = 100,
	      weaponAcceleration      = 100,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Very Heavy Siege Artillery]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 2250,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 760,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Very Heavy Siege Artillery]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1500,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 380,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ pnrocketartillery = unitDef })