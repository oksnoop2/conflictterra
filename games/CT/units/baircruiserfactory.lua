unitDef = {

  unitname                      = [[baircruiserfactory]],
  name                          = [[Heike Class Cruiser Airport]],
  description                   = [[Produces aircraft.  Can morph back into the Heike Class Cruiser.]],
  amphibious                    = false,
  acceleration                  = 0,
  brakeRate                     = 0,
  buildCostEnergy               = 300,
  buildCostMetal                = 300,
  builder                       = true,

  buildoptions                  = {
    [[bscoutplane]],
    [[bfighter]],
    [[blaserplane]],
    [[brocketplane]],
    [[bbomber]],

  },



  buildPic                      = [[baircruiserfactory.png]],
  buildTime                     = 30,
  canMove                       = true,
  canPatrol                     = true,
  canStop                       = true,
  canBeAssisted                 = false,
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[176 120 256]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 11,
  footprintZ                    = 16,
  idleAutoHeal                  = 0,
  isAirBase                     = true,
  mass                          = 275,
  maxDamage                     = 4500,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[baircruiser.s3o]],

  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[NKG]],
  sightDistance                 = 250,

	  sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

  smoothAnim                    = true,
  workerTime                    = 1,
  yardMap                       = [[ooooooooooo ooooooooooo ooooooooooo ooooooooooo coooooooooc coooooooooc coooooooooc coooooooooc ccooooooocc ccooooooocc cccoooooccc cccoooooccc cccoooooccc ccccooocccc cccccoccccc cccccoccccc]],
  script                        = [[baircruiserfactory.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Heike Class Cruiser Airport]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 2250,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 7,
      footprintZ       = 16,
      mass             = 2000,
      metal            = 150,
      object           = [[wrecks/baircruiserfactorywreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 4500,
    },


    DEAD2 = {
      description      = [[Debris - Heike Class Cruiser Airport]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 1125,
      energy           = 0,
      footprintX       = 7,
      footprintZ       = 7,
      mass             = 750,
      metal            = 75,
      object           = [[b7x7heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 2250,
    },


  },



}



return lowerkeys({ baircruiserfactory = unitDef })
