	unitDef = {
	  unitname            = [[badvfighter]],
	  name                = [[Otorii Type Fighter]],
	  description         = [[Advanced Fighter - Powerful anti-aircraft fighter armed with two air cannons and two missiles. - Build Limit: 20]],
          amphibious          = false,
	  buildCostEnergy     = 300,
	  buildCostMetal      = 300,
	  buildPic            = [[badvfighter.png]],
	  buildTime           = 24,
	  canAttack           = true,
          canDropFlare        = false,
          canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
          canSubmerge         = false,
	  category            = [[FIXEDWING]],
          collide             = false,
	  corpse              = [[DEAD]],
          cruiseAlt           = 200,
	  reclaimable         = false,
	
	  explodeAs           = [[SMALL_UNIT]],
          floater             = false,
          footprintx          = 2,
	  footprintZ          = 2,
	  idleAutoHeal        = 0,
          frontToSpeed        = 0.5,
          isFighter           = true,
	  mass                = 150,
          maxAcc              = 0.5,
	  maxDamage           = 500,
	  maxVelocity         = 11,
	  minCloakDistance    = 75,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[badvfighter.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[SMALL_UNIT]],

	  sounds			= {
	      select = {
		"argh/Argh_Jet.wav",
		},

	      ok = {
		"argh/Argh_Jet.wav",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 700,
	  smoothAnim          = true,
          speedToFront        = 0.5,
	  unitRestricted      = 20,
          script              = [[badvfighter.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Machine_Gun]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 60,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
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
	      name                    = [[Machine Gun]],
	      areaOfEffect            = 8,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 10,
		Cruiser = 15,
		Building = 10,
		Mech = 10,
		Tank = 10,
		Aircraft = 30,
		Ship = 10,
		Sub = 10,
	      },
	
	      edgeEffectiveness       = 1,
	      explosionGenerator      = [[custom:FLAK_BURST_Expl]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 700,
	      reloadtime              = 0.3,
	      rgbColor                = [[1 0.95 0.5]],
	      separation              = 2,
	      size                    = 1,
	      sizeDecay               = 0,
	      soundStart              = [[ct/single_machine_gun]],
	      soundTrigger            = true,
	      stages                  = 50,
	      sweepfire               = false,
	      tolerance               = 8000,
	      turret                  = false,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 2500,
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
		default = 20,
		Cruiser = 200,
		Building = 20,
		Mech = 20,
		Tank = 20,
		Aircraft = 200,
		Ship = 20,
		Sub = 20,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      model                   = [[baamissile.s3o]],
	      range                   = 530,
	      reloadtime              = 4.5,
	      smokedelay              = [[0.1]],
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[evolutionRTS/aircraft_missile_01]],
	      startVelocity           = 200,
	      tolerance               = 22000,
	      tracks                  = true,
	      turnRate                = 30000,
	      weaponAcceleration      = 550,
	      weaponTimer             = 5,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Advanced Fighter]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 375,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 120,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Advanced Fighter]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 250,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 60,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvfighter = unitDef })