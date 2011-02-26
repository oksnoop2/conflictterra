unitDef = {

  unitname                      = [[bbeacon]],
  name                          = [[Cruiser Beacon]],
  description                   = [[Beacon used to call in Cruisers.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = false,
  brakeRate                     = 0,
  buildCostEnergy               = 400,
  buildCostMetal                = 400,
  builder                       = true,

  buildoptions                  = {
	[[bsupplydepotmobile]],
	[[bflagship2]],
	[[bmechcruiser]],
	[[btankcruiser]],
	[[baircruiser]],
  },



  buildPic                      = [[bbeacon.png]],
  buildTime                     = 45,
  canMove                       = true,
  canPatrol                     = true,
  canStop                       = true,
  canBeAssisted                 = false,
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[224 200 224]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 14,
  footprintZ                    = 14,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 8500,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bbeacon.s3o]],

  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,

	  sounds			= {
	      select = {
		"ct/cruiserengine",
		},
	      ok = {
		"ct/cruiserengine",
		},
  },

  workerTime                    = 1,
  yardMap                       = [[ooccccccccccoo ooccccccccccoo cccccccccccccc cccccccccccccc cccccccccccccc cccccccccccccc cccccccccccccc cccccccccccccc cccccccccccccc cccccccccccccc cccccccccccccc cccccccccccccc ooccccccccccoo ooccccccccccoo]],
  script                        = [[bbeacon.lua]],




  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Cruiser Beacon]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 7500,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 7,
      footprintZ       = 6,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 600,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Cruiser Beacon]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 5000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 16,
      footprintZ       = 16,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 300,
      object           = [[b16x16heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bbeacon = unitDef })
