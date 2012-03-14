unitDef = {

  unitname                      = [[btankcruiserfactory]],
  name                          = [[Deployed Mori Class Cruiser]],
  description                   = [[Produces tanks and vehicles. Can Mobilize into the Mori Class Cruiser.]],
  amphibious                    = false,
  buildCostEnergy               = 300, --450
  buildCostMetal                = 300, --450
  builder                       = true,

  buildoptions                  = {
	[[bengineer]],
	[[bminer]],
	[[bscoutvehicle]],
	[[bassaulttank]],
	[[bmissiletank]],
	[[baabuggy]],
	[[breztank]],
	[[bartillery]],
	[[bgeneraltank]],
	[[bheavyassaulttank]],
	[[bheavymissiletank]],
	[[baatruck]],
	[[bvhsa]],
	[[bempcannon]],
  },

  buildPic                      = [[btankcruiserfactory.png]],
  buildTime                     = 30, --40
  canMove                       = true,
  canPatrol                     = true,
  canStop                       = true,
  canBeAssisted                 = false,
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[208 160 288]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 13,
  footprintZ                    = 18,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 4500,
  maxSlope                      = 15,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
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

  sfxtypes            		= {
	
	    explosiongenerators = {
		"custom:ct_buildlight_green",
		"custom:ct_buildlight_red",
	    },
	
  },

  smoothAnim                    = true,
  workerTime                    = 1,
  yardMap                       = [[ooooooooooooo ooooooooooooo ooooooooooooo ooooooooooooo ooooooooooooo ooooooooooooo ooooooooooooo ooooooooooooo ooooooooooooo ooooooooooooo ooooooooooooo ooooooooooooo ccccccccccccc ccccccccccccc ccccccccccccc ccccccccccccc ccccccccccccc ccccccccccccc]],
  script                        = [[btankcruiserfactory.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Deployed Mori Class Cruiser]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 2250,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 13,
      footprintZ       = 18,
      mass             = 2000,
      metal            = 225,
      object           = [[wrecks/btankcruiserfactorywreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 6600,
    },


    DEAD2 = {
      description      = [[Debris - Deployed Mori Class Cruiser]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 1125,
      energy           = 0,
      footprintX       = 13,
      footprintZ       = 18,
      mass             = 750,
      metal            = 112,
      object           = [[b7x7heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 3300,
    },


  },



}



return lowerkeys({ btankcruiserfactory = unitDef })
