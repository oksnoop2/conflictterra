	unitDef = {
	  unitname            = [[bnavydefship]],
	  name                = [[Yoshida Class Battery]],
	  description         = [[Anti-Navy Defense Ship - Very powerful anti-navy ship.  Immobile.  Can transform into a mobile, but unarmed, form. - Build Limit: 5]],
	  acceleration        = 0,
	  bmcode              = [[0]],
	  brakeRate           = 0,
	  buildCostEnergy     = 4000,
	  buildCostMetal      = 3200,
	  builder             = false,
	  buildPic            = [[bnavydefship.png]],
	  buildTime           = 180,
	  canAttack           = true,
	  canstop             = [[1]],
	  category            = [[FLOAT]],
          collisionVolumeOffsets = [[0 8 0]],
          collisionVolumeScales  = [[128 85 128]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[GUARD_NOMOVE]],
	  explodeAs           = [[LARGE_BUILDING]],
	  floater             = true,
          footprintx          = 10,
	  footprintZ          = 10,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 3000,
	  maxDamage           = 20000,
	  maxSlope            = 18,
	  maxVelocity         = 0,
	  minWaterDepth       = 24,
	  minCloakDistance    = 150,
	  noChaseCategory     = [[FIXEDWING LAND SHIP SATELLITE SWIM GUNSHIP SUB HOVER]],
	  objectName          = [[bnavydefship.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[LARGE_BUILDING]],
	  side                = [[NKG]],
	  sightDistance       = 500,

	  sounds			= {
	      select = {
		"evolutionRTS/turretselect",
		},

	      ok = {
		"evolutionRTS/turretselect",
		},
	  },

	  smoothAnim          = true,
	  TEDClass            = [[FORT]],
	  turnRate            = 0,
	  workerTime          = 0,
	  waterline           = 15,
	  yardMap             = [[oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo]],
	  unitRestricted      = 5,
          script              = [[bnavydefship.lua]],
	
	  weapons             = {


	    {
	      def                = [[Torpedo]],
	      onlyTargetCategory = [[SWIM LAND SUB SINK FLOAT SHIP]],
	    },

	    {
	      def                = [[Torpedo]],
	      onlyTargetCategory = [[SWIM LAND SUB SINK FLOAT SHIP]],
	    },

	    {
	      def                = [[Torpedo]],
	      onlyTargetCategory = [[SWIM LAND SUB SINK FLOAT SHIP]],
	    },

	    {
	      def                = [[Torpedo]],
	      onlyTargetCategory = [[SWIM LAND SUB SINK FLOAT SHIP]],
	    },

	    {
	      def                = [[Torpedo]],
	      onlyTargetCategory = [[SWIM LAND SUB SINK FLOAT SHIP]],
	    },

	    {
	      def                = [[Torpedo]],
	      onlyTargetCategory = [[SWIM LAND SUB SINK FLOAT SHIP]],
	    },

	    {
	      def                = [[Torpedo]],
	      onlyTargetCategory = [[SWIM LAND SUB SINK FLOAT SHIP]],
	    },

	    {
	      def                = [[Torpedo]],
	      onlyTargetCategory = [[SWIM LAND SUB SINK FLOAT SHIP]],
	    },



  },





  weaponDefs          = {



	    Torpedo = {
	      name                    = [[Torpedo]],
	      areaOfEffect            = 16,
	      avoidFriendly           = false,
	      burnblow                = true,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 400,
		Building = 400,
		Mech = 400,
		Tank = 400,
		Aircraft = 400,
		Ship = 400,
		Sub = 400,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      model                   = [[btorpedo.s3o]],
	      propeller               = [[1]],
	      range                   = 500,
	      reloadtime              = 3,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[evolutionRTS/torpedolaunch]],
	      startVelocity           = 140,
	      tolerance               = 42767,
	      tracks                  = true,
	      turnRate                = 8000,
	      turret                  = true,
	      waterWeapon             = true,
	      weaponAcceleration      = 15,
	      weaponTimer             = 4,
	      weaponType              = [[TorpedoLauncher]],
	      weaponVelocity          = 140,
	    },
  },


	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Navy Defense Ship]],
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
	      metal            = 15000,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Navy Defense Ship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 10000,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 10,
	      footprintZ       = 10,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 10000,
	      object           = [[b10x10heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bnavydefship = unitDef })
