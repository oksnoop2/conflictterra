	unitDef = {
	  unitname            = [[bbasicmech]],
	  name                = [[Hojo Combat Mech]],
	  description         = [[Skirmish Mech - Light, fast, rapid fire SM.  Built for skirmishing as opposed to holding the line.]],
	  acceleration        = 0.36,
	  bmcode              = [[1]],
	  brakeRate           = 0.2,
	  buildCostEnergy     = 275,
	  buildCostMetal      = 275,
	  builder             = false,
	  buildPic            = [[bbasicmech.png]],
	  buildTime           = 15,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[MEDIUM_UNIT]],
	  footprintX          = 3,
	  footprintZ          = 3,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
	  mass                = 32.5,
	  maxDamage           = 500,
	  maxSlope            = 36,
	  maxVelocity         = 4,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[Mech3x3]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[bbasicmech.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[MEDIUM_UNIT]],

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
		"custom:buildersparks",
	    },
	
	  },

	  side                = [[NKG]],
	  sightDistance       = 300,
	  smoothAnim          = true,
	  steeringmode        = [[2]],
	  TEDClass            = [[KBOT]],
	  turnInPlace         = 1,
	  turnRate            = 1000,
	  upright             = true,
	  workerTime          = 0,
          script              = [[bbasicmech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Machine_Gun]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Machine_Gun = {
	      name                    = [[Rapid Fire Cannon]],
	      areaOfEffect            = 8,
	      burst                   = 2,
	      burstrate               = 0.001,
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
	      range                   = 300,
	      reloadtime              = 0.2,
	      rgbColor                = [[1 0.95 0.4]],
	      separation              = 2,
              size                    = 1.25,
	      soundStart              = [[ct/machine_gun]],
	      soundStartVolume        = 0.5,
	      soundTrigger            = true,
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
	      description      = [[Wreckage - Basic Mech]],
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
	      description      = [[Debris - Basic Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 250,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 60,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bbasicmech = unitDef })