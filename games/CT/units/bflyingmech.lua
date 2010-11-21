	unitDef = {
	  unitname            = [[bflyingmech]],
	  name                = [[Fuma Aerial Combat Mech]],
	  description         = [[Aerial Raider Mech - Airborne "mech" designed to harass enemy lines and outposts.  Fires multiple rapid cannons.]],
	  acceleration        = 0.154,
	  amphibious          = false,
	  bankscale           = [[1]],
	  bmcode              = [[1]],
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
	  canstop             = [[1]],
	  category            = [[GUNSHIP]],
	  collide             = false,
	  corpse              = [[DEAD]],
          cruiseAlt           = 50,
          reclaimable         = false,
	
	  defaultmissiontype  = [[VTOL_standby]],
	  explodeAs           = [[MEDIUM_UNIT]],
	  floater             = false,
          footprintx          = 3,
	  footprintZ          = 3,
          hoverAttack         = true,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[1280]],
	  mass                = 125,
	  maxDamage           = 575,
	  maxVelocity         = 5,
	  minCloakDistance    = 75,
	  moverate1           = [[3]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS SUB]],
	  objectName          = [[bflyingmech.s3o]],
	  scale               = [[1]],
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
	  steeringmode        = [[1]],
	  TEDClass            = [[VTOL]],
	  turnRate            = 693,
	  workerTime          = 0,
          script              = [[bflyingmech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Machine_Gun]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP SINK FLOAT]],
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },

	    {
	      def                = [[Machine_Gun]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP SINK FLOAT]],
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
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
		Sub = 1,
	      },
	
	      explosionGenerator      = [[custom:FLAK_BURST_Expl]],
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      range                   = 250,
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