	unitDef = {
	  unitname            = [[knsspreadrocketaa]],
	  name                = [[Anti-Air Turret]],
	  description         = [[Anti-Air Turret - Anti-air missile firing turret.  Cheap and easy to build.]],
	  acceleration        = 0,
	  bmcode              = [[0]],
	  brakeRate           = 0,
	  buildCostEnergy     = 350,
	  buildCostMetal      = 350,
	  builder             = false,
	  buildPic            = [[knsspreadrocketaa.png]],
	  buildTime           = 20,
	  canAttack           = true,
	  canstop             = [[1]],
	  category            = [[SINK]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[GUARD_NOMOVE]],
	  explodeAs           = [[BIG_UNITEX]],
          footprintx          = 8,
	  footprintZ          = 8,
	  floater             = true,
	  idleAutoHeal        = 0,
	  levelGround         = true,
	  mass                = 40,
	  maxDamage           = 3750,
          maxSlope            = 18,
	  maxVelocity         = 0,
          minWaterDepth       = 0,
	  minCloakDistance    = 150,
	  noAutoFire          = false,
	  noChaseCategory     = [[FIXEDWING LAND SINK SHIP SATELLITE SWIM GUNSHIP FLOAT SUB HOVER]],
	  objectName          = [[knsspreadrocketaa.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNITEX]],

	  sfxtypes            = {
	
	    explosiongenerators = {
	      [[custom:STORMMUZZLE]],
	      [[custom:STORMBACK]],
	    },
	
	  },

	  side                = [[NKG]],
	  sightDistance       = 660,
	  smoothAnim          = true,
	  TEDClass            = [[TANK]],
	  turnRate            = 0,
	  workerTime          = 0,
	  yardMap             = [[oooooooo oooooooo oooooooo oooooooo oooooooo oooooooo oooooooo oooooooo]],
          script              = [[knsspreadrocketaa.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[AA]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    AA         = {
	      name                    = [[Homing AA Missile]],
	      areaOfEffect            = 48,
	      avoidFriendly           = true,
	      canattackground         = true,
	      cylinderTargetting      = 1,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 20,
		Building = 20,
		Mech = 20,
		Tank = 20,
		Aircraft = 200,
		Ship = 20,
		Sub = 10,
	      },
	
	      explosionGenerator      = [[custom:WEAPEXP_PUFF]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      model                   = [[baamissile.s3o]],
	      range                   = 530,
	      projectiles             = 16,
	      sprayAngle              = 4000,
	      dance                   = 20,
	      wobble                  = 7000,
	      reloadtime              = 3,
	      smokedelay              = [[0.1]],
	      smokeTrail              = true,
	      soundHit                = [[OTAunit/XPLOSML2]],
	      soundStart              = [[OTAunit/ROCKLIT3]],
	      startVelocity           = 200,
	      tolerance               = 22000,
	      tracks                  = false,
	      turret                  = true,
	      turnRate                = 30000,
	      weaponAcceleration      = 550,
	      weaponTimer             = 5,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 1750,
	      wobble                  = 1000,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Air Turret]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 160,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Air Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 160,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ knsspreadrocketaa = unitDef })
