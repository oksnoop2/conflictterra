	unitDef = {
	  unitname            = [[blanddefship]],
	  name                = [[Yamada Class Battery]],
	  description         = [[Very powerful anti-land battery.  Immobile.  Can transform into a mobile, but unarmed, form. - Build Limit: 2]],
	  acceleration        = 0,
	  brakeRate           = 0,
	  buildCostEnergy     = 1500,
	  buildCostMetal      = 1500,
	  builder             = false,
	  buildPic            = [[blanddefship2.png]],
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
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[blanddefship2.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[LARGE_BUILDING]],

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash_big",
		"custom:orc_machinegun_muzzle_big",
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
          script              = [[blanddefship2.lua]],
	
	  weapons             = {


	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[SWIM LAND SHIP SINK FLOAT HOVER]],
	    },

	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[SWIM LAND SHIP SINK FLOAT HOVER]],
	    },

	    {
	      def                = [[Artillery]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 100,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	    {
	      def                = [[Artillery]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[1 0 0]],
	      maxAngleDif        = 100,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	    {
	      def                = [[Artillery]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 -1]],
	      maxAngleDif        = 100,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	    {
	      def                = [[Artillery]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[-1 0 0]],
	      maxAngleDif        = 100,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },



  },





  weaponDefs          = {



	    Artillery             = {
	      name                    = [[Heavy Artillery Cannon]],
	      areaOfEffect            = 32,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 750,
		Cruiser = 750,
		Building = 750,
		Mech = 750,
		Tank = 750,
		Aircraft = 750,
		Ship = 750,
		Sub = 750,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:LRPC_Expl]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      myGravity               = 0.1,
	      range                   = 1000,
	      reloadtime              = 4,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_Whamsound]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },

	   Laser = {
	      name                    = [[Beam Laser]],
	      areaOfEffect            = 20,
	      beamTime                = 1,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 1500,
		Cruiser = 1500,
		Building = 1500,
		Mech = 1500,
		Tank = 1500,
		Aircraft = 1500,
		Ship = 1500,
		Sub = 1500,
	      },
	
	      energypershot           = 0,
	      explosionGenerator      = [[custom:megapartgun]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      largeBeamLaser          = true,
	      laserFlareSize          = 5,
	      lineOfSight             = true,
	      minIntensity            = 1,
	      range                   = 600,
	      reloadtime              = 8,
	      rgbColor                = [[1 0 0]],
	      soundStart              = [[argh/Argh_PlasmaBreach]],
	      targetMoveError         = 0.3,
	      thickness               = 10,
	      coreThickness           = 0.5,
	      tolerance               = 10000,
	      turret                  = true,
	      weaponType              = [[BeamLaser]],
	      weaponVelocity          = 1400,
	    },
  },


	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Land Defense Ship]],
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
	      description      = [[Debris - Anti-Land Defense Ship]],
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
	
	return lowerkeys({ blanddefship = unitDef })
