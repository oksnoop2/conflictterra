	unitDef = {
	  unitname            = [[badvhovermech]],
	  name                = [[Yagyu Hover Combat Mech]],
	  description         = [[High-Tech Hover Assault Mech - Newer hovercraft half-mech armed with powerful beam weapons. - Build Limit: 10]],
	  acceleration        = 1,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 1050,
	  buildCostMetal      = 1050,
	  builder             = false,
	  buildPic            = [[badvhovermech.png]],
	  buildTime           = 57,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canHover            = true,
	  canStop             = true,
	  category            = [[HOVER]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,

	  customParams = {
	  	RequireTech   = [[Ace Pilot's Presence]],
	  },
	
	  explodeAs           = [[MEDIUM_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  mass                = 350,
	  maxDamage           = 850,
	  maxSlope            = 36,
	  maxVelocity         = 1.75,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[HOVER4x4]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[badvhovermech.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[MEDIUM_UNIT]],

	  side                = [[NKG]],
	  sightDistance       = 600,
	  smoothAnim          = true,



	  sounds			= {
	      select = {
		"ct/hoverengine",
		},
	      ok = {
		"ct/hoverengine",
		},
	  },
	 

	  turnInPlace         = 1,
	  turnRate            = 1000,
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
		default = 160,
		Cruiser = 160,
		Building = 160,
		Mech = 160,
		Tank = 160,
		Aircraft = 160,
		Ship = 160,
		Sub = 160,

		Meteor = 0,
		Drone = 160,
		Spare1 = 160,
		Spare2 = 160,
		Spare3 = 160,
	      },
	
	      duration                = 0.02,
	      energypershot           = 0,
	      explosionGenerator      = [[custom:ct_impact_beamshot_blue]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      heightMod               = 0.5,
	      lineOfSight             = true,
	      range                   = 600,
	      reloadtime              = 1.5,
	      rgbColor                = [[0 0 1]],
	      soundStart              = [[ct/pew1]],
	      targetMoveError         = 0.15,
	      thickness               = 3,
	      tolerance               = 10000,
	      turret                  = false,
	      weaponType              = [[LaserCannon]],
	      weaponVelocity          = 1500,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Yagyu Hover Combat Mech]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 425,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 525,
	      object           = [[wrecks/badvhovermechwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15600,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Yagyu Hover Combat Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 212,
	      energy           = 0,
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 262,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 7800,
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvhovermech = unitDef })