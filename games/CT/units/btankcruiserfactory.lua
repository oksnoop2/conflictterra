--Deployed Mori Class Cruiser Unit Def by Sanada
--Notes:  Balanced Version 1

unitDef = {

  unitname                      = [[btankcruiserfactory]],
  name                          = [[Deployed TK-SS-001 Mori Class Cruiser]],
  description                   = [[Produces tanks and vehicles. Can Mobilize into the Mori Class Cruiser.]],
  amphibious                    = false,
  buildCostEnergy               = 300,
  buildCostMetal                = 300,
  builder                       = true,

  buildoptions                  = {
	[[bengineer]],
	[[bminer]],
	[[bscoutvehicle]],
	[[bassaulttank]],
	[[baabuggy]],
	[[bartillery]],
	[[breztruck]],
	[[bgeneraltank]],
	[[bheavyassaulttank]],
	[[bbarragetank]],
	[[bvhsamobile]],
  },

  buildPic                      = [[btankcruiserfactory.png]],
  buildTime                     = 30,
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
  maxDamage                     = 10000,
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
		"custom:ct_damage_fire",
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
      damage           = 5000,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 13,
      footprintZ       = 18,
      mass             = 2000,
      metal            = 150,
      object           = [[wrecks/btankcruiserfactorywreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 4500,
    },


    DEAD2 = {
      description      = [[Debris - Deployed Mori Class Cruiser]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 2500,
      energy           = 0,
      footprintX       = 13,
      footprintZ       = 18,
      mass             = 750,
      metal            = 75,
      object           = [[b7x7heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 2250,
    },
	
  },

}

return lowerkeys({ btankcruiserfactory = unitDef })