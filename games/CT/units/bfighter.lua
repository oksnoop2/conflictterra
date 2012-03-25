	unitDef = {
	  unitname            = [[bfighter]],
	  name                = [[Hayabusa Type Fighter MkII]],
	  description         = [[Light Fighter - Fires two rapid fire air cannons to destroy enemy aircraft. Not as strong against Cruisers.]],
	  amphibious          = false,
	  buildCostEnergy     = 150,
	  buildCostMetal      = 150,
	  buildPic            = [[bfightermkii.png]],
	  buildTime           = 12,
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
	
	  explodeAs           = [[SMALL_UNIT]],
	  floater             = false,
	  footprintx          = 2,
	  footprintZ          = 2,
	  frontToSpeed        = 0,
	  idleAutoHeal        = 0,
	  isFighter           = true,
	  mass                = 75,
	  maxAcc              = 0.5,
	  maxDamage           = 350,
	  maxVelocity         = 10,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[bfightermkii.s3o]],
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
	  speedToFront        = 0,
	  script              = [[bfightermkii.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Machine_Gun]],
	      badTargetCategory  = [[GUNSHIP CRUISER]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 60,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP CRUISER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Machine_Gun = {
	      name                    = [[Machine Gun]],
	      areaOfEffect            = 8,
		  avoidFeature            = false,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		--Anti-Plane
		default = 2,
		Cruiser = 2,
		Building = 2,
		Land = 2,
		Aircraft = 10,
		Ship = 2,
		Sub = 2,

		Meteor = 0,
		Drone = 2,
		Spare1 = 2,
		Spare2 = 2,
		Spare3 = 2,
	      },
	
	      edgeEffectiveness       = 1,
	      explosionGenerator      = [[custom:ct_impact_fighter]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 700,
	      reloadtime              = 0.25,
	      rgbColor                = [[1 0.95 0.5]],
	      separation              = 2,
	      size                    = 1,
	      sizeDecay               = 0,
	      soundStart              = [[ct/single_machine_gun]],
	      soundTrigger            = true,
	      stages                  = 50,
	      sweepfire               = true,
	      tolerance               = 8000,
	      turret                  = false,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 2500,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Hayabusa Type Fighter MkII]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 175,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 75,
	      object           = [[wrecks/bfightermkiiwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2100,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Hayabusa Type Fighter MkII]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 87,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 37,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1050,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bfighter = unitDef })