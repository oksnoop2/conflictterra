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
      damage           = 4250,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 14,
      footprintZ       = 14,
      metal            = 200,
      object           = [[wrecks/bbeaconwreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 6000,
    },


    DEAD2 = {
      description      = [[Debris - Cruiser Beacon]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 2125,
      energy           = 0,
      footprintX       = 14,
      footprintZ       = 14,
      metal            = 100,
      object           = [[b14x14heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 3000,
    },


  },



}



return lowerkeys({ bbeacon = unitDef })
