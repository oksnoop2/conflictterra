unitDef = {

  unitname                      = [[bflagshipbaseai]],
  name                          = [[Mobile Headquarters (AI)]],
  description                   = [[Docked Oda Class Cruiser.  Acts as a temporary base, providing defence and unit production. - Build Limit: 1]],
  amphibious                    = false,
  acceleration                  = 0,
  brakeRate                     = 0,
  buildCostEnergy               = 1800,
  buildCostMetal                = 1440,
  builder                       = true,
  reclaimable                   = false,

  buildoptions                  = {

	[[bminer]],
	[[breztank]],
	-- [[bmechcruiser]],
	-- [[btankcruiser]],
	-- [[baircruiser]],
	[[bengineer1]],
  },



  buildPic                      = [[bflagshipbase2.png]],
  buildTime                     = 60,
  canAttack                     = true,
  canMove                       = true,
  canPatrol                     = true,
  canStop                       = true,
  canBeAssisted                 = false,
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[352 160 352]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  commander                     = true,
  corpse                        = [[DEAD]],

  energyMake                    = 5,
  energyStorage                 = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 22,
  footprintZ                    = 22,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 20000,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  metalStorage                  = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  noChaseCategory               = [[MINERALS SUB]],
  objectName                    = [[bflagshipbase2.s3o]],
  radarDistance                 = 1000,
  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[NKG]],
  sightDistance                 = 500,
  smoothAnim                    = true,

	  sounds			= {
	      select = {
		"evolutionRTS/turretselect",
		},

	      ok = {
		"evolutionRTS/turretselect",
		},
	  },

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
	    },
	
	  },

  workerTime                    = 1,
  yardMap                       = [[cccccccccccccccooooooo cccccccccccccccooooooo cccccccccccccccooooooo oocccccccooccccooooooo oocccccccooccccooooooo oocccccccooccccooooooo oocccccccooccccooooooo oocccccccoocccccoooooc oocccccccoocccccoooooc oocccccccoocccccoooooc oocccccccoocccccoooooc oocccccccoocccccoooooc oocccccccooccccccooocc oocccccccooccccccooocc oocccccccooccccccooocc oocccccccooccccccooocc oocccccccooccooccooocc oocccccccooccoocccoccc oocccccccoocccccccoccc ccccccccccccccccccoccc cccccccccccccccccccccc cccccccccccccccccccccc]],
  script                        = [[bflagshipbase2.lua]],

	  weapons             = {
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 100,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[Flak]],
	      badTargetCategory  = [[GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[Flak]],
	      badTargetCategory  = [[GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Light Cannon]],
	      areaOfEffect            = 32,
	      craterMult              = 0.25,
	      collideFriendly         = false,
	
	      damage                  = {
		Cruiser = 200,
		Building = 200,
		Mech = 200,
		Tank = 200,
		Aircraft = 200,
		Ship = 200,
		Sub = 5,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      range                   = 1000,
	      reloadtime              = 3,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },

	    Flak          = {
	      name                    = [[Flak Cannon]],
	      areaOfEffect            = 64,
	      burnblow                = true,
	      canattackground         = false,
	      color                   = 1,
	      craterMult              = 0.25,
	      collideFriendly         = false,
	
	      damage                  = {
		Cruiser = 100,
		Building = 5,
		Mech = 5,
		Tank = 5,
		Aircraft = 100,
		Ship = 5,
		Sub = 5,
	      },
	
	      edgeEffectiveness       = 0.85,
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      minbarrelangle          = [[-24]],
	      range                   = 1000,
	      reloadtime              = 0.5,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      unitsonly               = [[1]],
	      weaponTimer             = 1,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 2000,
	    },
	
	  },



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Mobile Headquarters]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 15000,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 7,
      footprintZ       = 6,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 720,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Mobile Headquarters]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 10000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 17,
      footprintZ       = 17,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 360,
      object           = [[b7x7heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bflagshipbaseai = unitDef })
