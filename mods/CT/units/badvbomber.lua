	unitDef = {
	  unitname            = [[badvbomber]],
	  name                = [[Otoko Type Bomber]],
	  description         = [[Advanced Bomber - Heavy bomber capable of dropping more bombs.  Also armed with a small anti-air turret. -  Build Limit: 20]],
          amphibious          = false,
	  buildCostEnergy     = 350,
	  buildCostMetal      = 280,
	  builder             = false,
	  buildPic            = [[badvbomber.png]],
	  buildTime           = 26,
	  canAttack           = true,
          canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = true,
          canSubmerge         = false,
	  category            = [[FIXEDWING]],
          collide             = false,
	  corpse              = [[DEAD]],
          cruiseAlt           = 300,
	  reclaimable         = false,
	
	  defaultmissiontype  = [[VTOL_standby]],
	  explodeAs           = [[SMALL_UNIT]],
          fireState           = 1,
          floater             = false,
          footprintx          = 6,
	  footprintZ          = 6,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[1380]],
	  mass                = 175,
          maxAcc              = 0.5,
	  maxDamage           = 750,
          maxFuel             = 75,
	  maxVelocity         = 5,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB]],
	  objectName          = [[badvbomber.s3o]],
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
	  sightDistance       = 500,
	  smoothAnim          = true,
          steeringmode        = [[1]],
	  TEDClass            = [[VTOL]],
          turnRate            = 402,
	  unitRestricted      = 20,
          script              = [[badvbomber.lua]],
	
	  weapons             = {

	    {
	      def                = [[Machine_Gun]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	    {
	      def                = [[Bomb]],
	      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	
	    Bomb = {
	      name                    = [[Bombs]],
	      areaOfEffect            = 256,
	      avoidFeature            = false,
	      avoidFriendly           = false,
	      burst                   = 15,
	      burstrate               = 0.07,
	      commandfire             = true,
	      craterMult              = 0.25,
	      collideFriendly         = true,
	
	      damage                  = {
		Cruiser = 10,
		Building = 50,
		Mech = 50,
		Tank = 50,
		Aircraft = 10,
		Ship = 50,
		Sub = 5,
	      },
	
	      dropped                 = true,
	      edgeEffectiveness       = 0.7,
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      manualBombSettings      = true,
	      model                   = [[bbombs.s3o]],
	      myGravity               = 0.7,
	      range                   = 500,
	      reloadtime              = 10,
	      soundHit                = [[ct/shot3]],
	      soundStart              = [[OTAunit/BOMBREL]],
	      sprayangle              = 64000,
	      startvelocity           = 200,
	      weaponType              = [[AircraftBomb]],
	    },

	    Machine_Gun = {
	      name                    = [[Machine Gun]],
	      areaOfEffect            = 8,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 30,
		Building = 10,
		Mech = 10,
		Tank = 10,
		Aircraft = 30,
		Ship = 10,
		Sub = 0.3,
	      },
	
	      canAttackGround         = false,
	      edgeEffectiveness       = 1,
	      explosionGenerator      = [[custom:FLAK_BURST_Expl]],
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      pitchtolerance          = [[18000]],
	      range                   = 700,
	      reloadtime              = 0.2,
	      rgbColor                = [[1 0.95 0.5]],
	      separation              = 2,
	      size                    = 1,
	      sizeDecay               = 0,
	      soundStart              = [[ct/single_machine_gun]],
	      soundTrigger            = true,
	      stages                  = 50,
	      sweepfire               = false,
	      tolerance               = 8000,
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 1000,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Advanced Bomber]],
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
	      metal            = 562.5,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Advanced Bomber]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 160,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 6,
	      footprintZ       = 6,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 375,
	      object           = [[b6x6heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvbomber = unitDef })