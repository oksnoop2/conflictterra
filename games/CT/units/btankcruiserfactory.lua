unitDef = {

  unitname                      = [[btankcruiserfactory]],
  name                          = [[Takeda Class Cruiser Tank Factory]],
  description                   = [[Produces tanks.  Can morph back into the Takeda Class Cruiser.]],
  amphibious                    = false,
  acceleration                  = 0,
  brakeRate                     = 0,
  buildCostEnergy               = 450,
  buildCostMetal                = 450,
  builder                       = true,

  buildoptions                  = {

	[[bminer]],
	[[bscoutvehicle]],
	[[bassaulttank]],

	[[bmissiletank]],
	[[baabuggy]],
	[[breztank]],
	[[bartillery]],
  },



  buildPic                      = [[btankcruiserfactory.png]],
  buildTime                     = 40,
  canMove                       = true,
  canPatrol                     = true,
  canStop                       = true,
  canBeAssisted                 = false,
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[208 100 240]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 13,
  footprintZ                    = 15,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 4500,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[btankcruiser.s3o]],

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
  yardMap                       = [[ooooooooooooo ooooooooooooo ooooooooooooo ooooooooooooo ooooooooooooo ooooooooooooo ooooooooooooo ooooooooooooo ooooooooooooo ccccccccccccc ccccccccccccc ccccccccccccc ccccccccccccc ccccccccccccc ccccccccccccc]],
  script                        = [[btankcruiserfactory.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Takeda Class Cruiser Tank Factory]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 2250,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 8,
      footprintZ       = 13,
      mass             = 2000,
      metal            = 225,
      object           = [[wrecks/btankcruiserfactorywreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 6600,
    },


    DEAD2 = {
      description      = [[Debris - Takeda Class Cruiser Tank Factory]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 1125,
      energy           = 0,
      footprintX       = 7,
      footprintZ       = 7,
      mass             = 750,
      metal            = 112,
      object           = [[b7x7heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 3300,
    },


  },



}



return lowerkeys({ btankcruiserfactory = unitDef })
