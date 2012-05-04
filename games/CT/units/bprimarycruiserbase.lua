unitDef = {

  unitname                      = [[bprimarycruiserbase]],
  name                          = [[Mobile Headquarters]],
  description                   = [[Deployed Oda Class Cruiser. Builds the essentials to establishing a base. Can Mobilize into the Oda Class Cruiser. - Build Limit: 1]],
  amphibious                    = false,
  buildCostEnergy               = 500,
  buildCostMetal                = 500,
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

  buildPic                      = [[bprimarycruiserbase.png]],
  buildTime                     = 30,

  useBuildingGroundDecal        = true,
  buildingGroundDecalType       = "grounddecals/resourcedropzone.png",
  buildingGroundDecalSizeX      = 36,
  buildingGroundDecalSizeY      = 36,
  buildingGroundDecalDecaySpeed = 1,

  canAttack                     = true,
  canMove                       = true,
  canPatrol                     = true,
  canStop                       = true,
  canBeAssisted                 = false,
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[368 160 368]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  commander                     = true,
  corpse                        = [[DEAD]],

  energyMake                    = 0,
  energyStorage                 = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 24,
  footprintZ                    = 23,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 20000,
  maxSlope                      = 15,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  metalStorage                  = 0,
  noAutoFire                    = false,
  noChaseCategory               = [[MINERALS SUB]],
  objectName                    = [[bprimarycruiserbase.s3o]],
  radarDistance                 = 1000,
  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[NKG]],
  sightDistance                 = 500,
  smoothAnim                    = true,

  sounds			= {
      select = {
	"",
	},
      ok = {
	"",
	},
  },

  sfxtypes            = {
    explosiongenerators = {
	"custom:ct_cannon_narrow",
	"custom:ct_buildlight_green",
	"custom:ct_buildlight_red",
    },
  },

  workerTime                    = 1,
  --unitRestricted                = 1,  
  yardMap                       = [[cooocccccoooooocccccoooc cooocccccoooooocccccoooc cccccccccooooooccccccccc cccccccccooooooccccccccc cccccccccooooooccccccccc cccccccccooooooooooooooo ccccccccccoooocooooooooo ccccccccccoooocooooooooo ccccccccccoooocooooooooo ccccccccccoooocooooooooo ccccccccccoooocooooooooo ccccccccccoooocooooooooo ccccccccccoooocooooooooo ccccccccccoooocooooooooo ccccccccccoooocooooooooo cccccccccccooccooooooooo cccccccccccooccooooooooo cccccccccccooccooooooooo cccccccccccooccccccccccc cccccccccccooccccccccccc cccccccccccooccccccccccc cooocccccccoocccccccoooc cooocccccccoocccccccoooc]],
  script                        = [[bprimarycruiserbase.lua]],

	  weapons             = {
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[-1 0 1]],
	      maxAngleDif        = 270,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[1 0 1]],
	      maxAngleDif        = 270,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[-1 0 -1]],
	      maxAngleDif        = 270,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[1 0 -1]],
	      maxAngleDif        = 270,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[Flak]],
	      badTargetCategory  = [[GUNSHIP CRUISER]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP CRUISER]],
	    },

	    {
	      def                = [[Flak]],
	      badTargetCategory  = [[GUNSHIP CRUISER]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP CRUISER]],
	    },

	    {
	      def                = [[Flak]],
	      badTargetCategory  = [[GUNSHIP CRUISER]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP CRUISER]],
	    },

	    {
	      def                = [[Flak]],
	      badTargetCategory  = [[GUNSHIP CRUISER]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP CRUISER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Light Cannon]],
	      areaOfEffect            = 32,
		  avoidFeature            = false,
	      craterMult              = 0.25,
	      collideFriendly         = false,
	
	      damage                  = {
		--Anti-Land
		default = 100,
		Cruiser = 100,
		Building = 100,
		Land = 200,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,

		Meteor = 0,
		Drone = 100,
		Spare1 = 100,
		Spare2 = 100,
		Spare3 = 100,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:ct_impact_cannon]],
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
		  avoidFeature            = false,
	      burnblow                = true,
	      canattackground         = false,
	      color                   = 1,
	      craterMult              = 0.25,
	      collideFriendly         = false,
	
	      damage                  = {
		--Anti-Plane
		default = 5,
		Cruiser = 25,
		Building = 5,
		Land = 5,
		Aircraft = 25,
		Ship = 5,
		Sub = 5,

		Meteor = 0,
		Drone = 5,
		Spare1 = 5,
		Spare2 = 5,
		Spare3 = 5,
	      },
	
	      edgeEffectiveness       = 0.85,
	      explosionGenerator      = [[custom:ct_impact_flak]],
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
      footprintX       = 24,
      footprintZ       = 23,
      metal            = 250,
      mass             = 2000,
      object           = [[wrecks/bprimarycruiserbasewreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 15000,
    },


    DEAD2 = {
      description      = [[Debris - Mobile Headquarters]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 5000,
      energy           = 0,
      footprintX       = 24,
      footprintZ       = 23,
      metal            = 125,
      mass             = 750,
      object           = [[b17x16heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 7500,
    },


  },



}



return lowerkeys({ bprimarycruiserbase = unitDef })
