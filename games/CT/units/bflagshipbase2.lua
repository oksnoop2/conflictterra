unitDef = {

  unitname                      = [[bflagshipbase2]],
  name                          = [[Mobile Headquarters]],
  description                   = [[Docked Oda Class Cruiser.  Acts as a temporary base, providing defence and unit production. - Build Limit: 1]],
  amphibious                    = false,
  acceleration                  = 0,
  brakeRate                     = 0,
  buildCostEnergy               = 1000,
  buildCostMetal                = 1000,
  builder                       = true,
  reclaimable                   = false,

  buildoptions                  = {

	[[bengineer]],
	[[bminer]],
	[[breztank]],
	[[bsupplydepotmobile]],
	[[bmechcruiser]],
	[[btankcruiser]],
	[[baircruiser]],
  },



  buildPic                      = [[bflagshipbase2.png]],
  buildTime                     = 60,

  useBuildingGroundDecal	= true,
  buildingGroundDecalType	= "grounddecals/resourcedropzone.png",
  buildingGroundDecalSizeX	= 31,
  buildingGroundDecalSizeY	= 31,
  buildingGroundDecalDecaySpeed	= 1,

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
		"custom:ct_cannon_narrow",
	    },
	
	  },

  workerTime                    = 1,
  yardMap                       = [[cccccccccccccccooooooo cccccccccccccccooooooo cccccccccccccccooooooo oocccccccooccccooooooo oocccccccooccccooooooo oocccccccooccccooooooo oocccccccooccccooooooo oocccccccoocccccoooooc oocccccccoocccccoooooc oocccccccoocccccoooooc oocccccccoocccccoooooc oocccccccoocccccoooooc oocccccccooccccccooocc oocccccccooccccccooocc oocccccccooccccccooocc oocccccccooccccccooocc oocccccccooccooccooocc oocccccccooccoocccoccc oocccccccoocccccccoccc ccccccccccccccccccoccc cccccccccccccccccccccc cccccccccccccccccccccc]],
  script                        = [[bflagshipbase2.lua]],

	  weapons             = {
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
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
		default = 200,
		Cruiser = 200,
		Building = 200,
		Mech = 200,
		Tank = 200,
		Aircraft = 200,
		Ship = 200,
		Sub = 200,

		Meteor = 0,
		Drone = 200,
		Spare1 = 200,
		Spare2 = 200,
		Spare3 = 200,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
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
		default = 5,
		Cruiser = 100,
		Building = 5,
		Mech = 5,
		Tank = 5,
		Aircraft = 100,
		Ship = 5,
		Sub = 5,

		Meteor = 0,
		Drone = 5,
		Spare1 = 5,
		Spare2 = 5,
		Spare3 = 5,
	      },
	
	      edgeEffectiveness       = 0.85,
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      range                   = 1000,
	      reloadtime              = 0.5,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
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
      damage           = 10000,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 22,
      footprintZ       = 21,
      metal            = 500,
      mass             = 2000,
      object           = [[wrecks/bflagshipbase2wreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 15000,
    },


    DEAD2 = {
      description      = [[Debris - Mobile Headquarters]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 5000,
      energy           = 0,
      footprintX       = 17,
      footprintZ       = 16,
      metal            = 250,
      mass             = 750,
      object           = [[b17x16heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 7500,
    },


  },



}



return lowerkeys({ bflagshipbase2 = unitDef })
