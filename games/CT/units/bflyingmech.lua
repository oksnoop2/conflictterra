	unitDef = {
	  unitname            = [[bflyingmech]],
	  name                = [[Fuma Aerial Combat Mech]],
	  description         = [[Aerial Raider Mech - Airborne "mech" designed to harass enemy lines and outposts.  Fires multiple rapid cannons and two AA missiles.]],
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
	  maxDamage           = 575,
	  maxVelocity         = 5,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS SUB]],
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
	  turnRate            = 693,
          script              = [[bflyingmech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Machine_Gun]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[Machine_Gun]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[AA]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[AA]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Machine_Gun = {
	      name                    = [[Rapid Fire Cannon]],
	      areaOfEffect            = 8,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	      accuracy                = 200,
	
	      damage                  = {
		Cruiser = 15,
		Building = 15,
		Mech = 15,
		Tank = 15,
		Aircraft = 15,
		Ship = 15,
		Sub = 15,
	      },
	
	      explosionGenerator      = [[custom:FLAK_BURST_Expl]],
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      range                   = 300,
	      reloadtime              = 0.5,
	      rgbColor                = [[1 0.95 0.4]],
	      seperation              = 2,
              size                    = 0.75,
	      soundStart              = [[ct/single_machine_gun]],
	      soundTrigger            = true,
	      soundStartVolume        = 0.5,
	      stages                  = 50,
	      sprayAngle              = 1180,
	      tolerance               = 8000,
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
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
		Cruiser = 50,
		Building = 10,
		Mech = 10,
		Tank = 10,
		Aircraft = 50,
		Ship = 10,
		Sub = 10,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
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
	      description      = [[Wreckage - Flying Mech]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 431,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 325,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Flying Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 287,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 162,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bflyingmech = unitDef })