unitDef = {

  unitname                      = [[baircruiserfactory]],
  name                          = [[Deployed Azai Class Cruiser]],
  description                   = [[Produces aircraft. Can mobilize into the Azai Class Cruiser.]],
  amphibious                    = false,
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
  collisionVolumeScales         = [[160 160 288]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 10,
  footprintZ                    = 18,
  idleAutoHeal                  = 0,
  isAirBase                     = false,
  mass                          = 275,
  maxDamage                     = 10000,
  maxSlope                      = 15,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
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

  sfxtypes            		= {
	
	    explosiongenerators = {
		"custom:ct_buildlight_green",
		"custom:ct_buildlight_red",
	    },
	
  },

  smoothAnim                    = true,
  workerTime                    = 1,
  yardMap                       = [[oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo ccoooooocc ccoooooocc ccoooooocc ccoooooocc ccoooooocc ccoooooocc ccoooooocc]],
  script                        = [[baircruiserfactory.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Deployed Azai Class Cruiser]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 1500,
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
      description      = [[Debris - Deployed Azai Class Cruiser]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 750,
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