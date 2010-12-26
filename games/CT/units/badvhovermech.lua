	unitDef = {
	  unitname            = [[badvhovermech]],
	  name                = [[Yagyu Hover Combat Mech]],
	  description         = [[High-Tech Hover Assault Mech - Newer hovercraft "mech" armed with powerful beam weapons. - Build Limit: 10]],
	  acceleration        = 0.07,
	  bmcode              = [[1]],
	  brakeRate           = 0.08,
	  buildCostEnergy     = 700,
	  buildCostMetal      = 560,
	  builder             = false,
	  buildPic            = [[badvhovermech.png]],
	  buildTime           = 30,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canHover            = true,
	  canstop             = [[1]],
	  category            = [[HOVER]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[MEDIUM_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
	  mass                = 350,
	  maxDamage           = 850,
	  maxSlope            = 36,
	  maxVelocity         = 1.75,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[HOVER4x4]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[badvhovermech.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[MEDIUM_UNIT]],

	  side                = [[NKG]],
	  sightDistance       = 600,
	  smoothAnim          = true,
	  steeringmode        = [[1]],



	  sounds			= {
	      select = {
		"ct/hoverengine",
		},
	      ok = {
		"ct/hoverengine",
		},
	  },
	 

	  TEDClass            = [[TANK]],
	  turninplace         = 0,
	  turnRate            = 410,
	  workerTime          = 0,
	  unitRestricted      = 10,
          script              = [[badvhovermech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 45,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Laser = {
	      name                    = [[Burst Laser]],
	      areaOfEffect            = 8,
	      coreThickness           = 0.5,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 160,
		Building = 160,
		Mech = 160,
		Tank = 160,
		Aircraft = 160,
		Ship = 160,
		Sub = 10,
	      },
	
	      duration                = 0.02,
	      energypershot           = 0,
	      explosionGenerator      = [[custom:megapartgun]],
	      interceptedByShieldType = 1,
	      heightMod               = 0.5,
	      lineOfSight             = true,
	      range                   = 600,
	      reloadtime              = 1.5,
	      rgbColor                = [[1 0 0]],
	      soundStart              = [[ct/pew1]],
	      targetMoveError         = 0.15,
	      thickness               = 3.76646385884692,
	      tolerance               = 10000,
	      turret                  = false,
	      weaponType              = [[LaserCannon]],
	      weaponVelocity          = 1500,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Advanced Amphibious Mech]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 637.5,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 280,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Advanced Amphibious Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 425,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 140,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvhovermech = unitDef })