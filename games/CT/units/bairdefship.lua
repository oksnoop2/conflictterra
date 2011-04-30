	unitDef = {
	  unitname            = [[bairdefship]],
	  name                = [[Sanada Class Battery]],
	  description         = [[Very powerful anti-air battery.  Immobile.  Can transform into a mobile, but unarmed, form. - Build Limit: 2]],
	  acceleration        = 0,
	  brakeRate           = 0,
	  buildCostEnergy     = 1500,
	  buildCostMetal      = 1500,
	  builder             = false,
	  buildPic            = [[bairdefship.png]],
	  buildTime           = 90,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[SINK GUNSHIP]],
          collisionVolumeOffsets = [[0 8 0]],
          collisionVolumeScales  = [[128 85 128]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  explodeAs           = [[LARGE_BUILDING]],
	  floater             = true,
          footprintx          = 8,
	  footprintZ          = 8,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 3000,
	  maxDamage           = 10000,
	  maxSlope            = 18,
	  maxVelocity         = 0,
	  maxWaterDepth       = 0,
	  minCloakDistance    = 150,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[bairdefship.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[LARGE_BUILDING]],
	    
	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_cannon_narrow",
	    },
	
	  },

	  sounds			= {
	      select = {
		"evolutionRTS/turretselect",
		},

	      ok = {
		"evolutionRTS/turretselect",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  yardMap             = [[oooooooo oooooooo oooooooo oooooooo oooooooo oooooooo oooooooo oooooooo]],
	  unitRestricted      = 2,
          script              = [[bairdefship.lua]],
	
	  weapons             = {

	    {
	      def                = [[Flak]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	    {
	      def                = [[Flak]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[Flak]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	    {
	      def                = [[Flak]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[Flak]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	    {
	      def                = [[Flak]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },



  },





  weaponDefs          = {



	    Flak          = {
	      name                    = [[Flak Cannon]],
	      areaOfEffect            = 64,
	      burnblow                = true,
	      canattackground         = false,
	      color                   = 1,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 25,
		Cruiser = 75,
		Building = 25,
		Mech = 25,
		Tank = 25,
		Aircraft = 75,
		Ship = 25,
		Sub = 25,

		Meteor = 0,
		Drone = 25,
		Spare1 = 25,
		Spare2 = 25,
		Spare3 = 25,
	      },
	
	      edgeEffectiveness       = 0.85,
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      range                   = 900,
	      reloadtime              = 1,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      weaponTimer             = 1,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 2000,
	    },
  },


	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Air Defense Ship]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 15000,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 1600,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Air Defense Ship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 10000,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 8,
	      footprintZ       = 8,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 800,
	      object           = [[b8x8heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bairdefship = unitDef })
