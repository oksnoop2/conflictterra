	unitDef = {
	  unitname            = [[bbomber]],
	  name                = [[Fukurou Type Bomber MkII]],
	  description         = [[Bomber - Deals high damage to Buildings but much less to Units.]],
	  amphibious          = false,
	  buildCostEnergy     = 250,
	  buildCostMetal      = 250,
	  builder             = false,
	  buildPic            = [[bbombermkii.png]],
	  buildTime           = 18,
	  canAttack           = true,
	  canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  canSubmerge         = false,
	  category            = [[FIXEDWING]],
	  collide             = false,
	  corpse              = [[DEAD]],
	  cruiseAlt           = 300,
	  reclaimable         = false,
	  
	  customParams = {
		  nofriendlyfire = true,
	  },
	
	  explodeAs           = [[SMALL_UNIT]],
	  fireState           = 0,
	  floater             = false,
	  footprintx          = 3,
	  footprintZ          = 3,
	  idleAutoHeal        = 0,
	  mass                = 250,
	  maxAcc              = 0.5,
	  maxDamage           = 500,
	  maxVelocity         = 9,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bbombermkii.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[SMALL_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 500,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"argh/Argh_Jet.wav",
		},

	      ok = {
		"argh/Argh_Jet.wav",
		},
	  },

	  script              = [[bbomber.lua]],
	
	  weapons             = {
	
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
	      burst                   = 10,
	      burstrate               = 0.07,
	      commandfire             = true,
	      craterMult              = 0.25,
	      collideFriendly         = false,
	
	      damage                  = {
		--Anti-Building
		default = 25,
		Cruiser = 25,
		Building = 100,
		Land = 25,
		Aircraft = 25,
		Ship = 25,
		Sub = 25,

		Meteor = 0,
		Drone = 25,
		Spare1 = 25,
		Spare2 = 25,
		Spare3 = 25,
	      },
	
	      dropped                 = true,
	      edgeEffectiveness       = 0.7,
	      explosionGenerator      = [[custom:ct_impact_bombs]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      manualBombSettings      = true,
	      model                   = [[projectiles/bbombs.s3o]],
	      myGravity               = 0.7,
	      range                   = 500,
	      reloadtime              = 10,
	      soundHit                = [[ct/shot3]],
	      sprayangle              = 64000,
	      startvelocity           = 200,
	      weaponType              = [[AircraftBomb]],
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Fukurou Type Bomber MkII]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 250,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 125,
	      object           = [[wrecks/bbombermkiiwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3600,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Fukurou Type Bomber MkII]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 125,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 62,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1800,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bbomber = unitDef })