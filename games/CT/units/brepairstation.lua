--Aircraft Repair Station Unit Def by Sanada
--Notes:  NOT Balanced Version 1

unitDef = {

  unitname                      = [[brepairstation]],
  name                          = [[Aircraft Repair Station]],
  description                   = [[Repairs damaged Aircraft. Too small for to repair Cruisers.]],
  amphibious                    = false,
  buildCostEnergy               = 450,
  buildCostMetal                = 450,
  builder                       = true,

  buildPic                      = [[brepairstation.png]],
  buildTime                     = 45,
  canMove                       = true,
  canPatrol                     = true,
  canStop                       = true,
  canBeAssisted                 = false,
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[176 80 144]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 11,
  footprintZ                    = 9,
  idleAutoHeal                  = 0,
  isAirBase                     = true,
  mass                          = 275,
  maxDamage                     = 6000,
  maxSlope                      = 15,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  noAutoFire                    = false,
  objectName                    = [[brepairstation.s3o]],

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
  workerTime                    = 0.5,
  yardMap                       = [[oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo oooooooooo]],
  script                        = [[brepairstation.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Aircraft Repair Station]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 3000,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 11,
      footprintZ       = 9,
      mass             = 2000,
      metal            = 225,
      object           = [[wrecks/brepairstationwreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 6750,
    },


    DEAD2 = {
      description      = [[Debris - Aircraft Repair Station]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 1500,
      energy           = 0,
      footprintX       = 11,
      footprintZ       = 9,
      mass             = 750,
      metal            = 112,
      object           = [[b7x7heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 3375,
    },

  },

}

return lowerkeys({ brepairstation = unitDef })