unitDef = {

  unitname                      = [[bpowerplant]],
  name                          = [[Energy Station]],
  description                   = [[Creates +2 energy. Requires no energy to build.]],
  amphibious                    = false,
  activateWhenBuilt             = true,
  buildCostEnergy               = 0,
  buildCostMetal                = 125,
  builder                       = false,

  buildPic                      = [[bpowerplant.png]],
  buildTime                     = 12,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[80 100 128]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  energyUse                     = -3,
  energyMake                    = 0,
  explodeAs                     = [[MEDIUM_BUILDING]],
  footprintX                    = 6,
  footprintZ                    = 9,
  idleAutoHeal                  = 0,
  mass                          = 35,
  maxDamage                     = 1500,
  maxSlope                      = 18,
  maxWaterDepth                 = 0,
  noAutoFire                    = false,
  objectName                    = [[bpowerplant.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[MEDIUM_BUILDING]],
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,

  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_buildlight_blue",
	    },
	
  },  
  
  sounds			= {
      select = {
	"ct/generator_chatter",
	},

      ok = {
	"ct/generator_chatter",
	},
  },

  yardMap                       = [[o]],
  script                        = [[bpowerplant.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Energy Station]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 750,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 5,
      footprintZ       = 8,
      metal            = 62,
      object           = [[b5x5heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 1860,
    },


    DEAD2 = {
      description      = [[Debris - Energy Station]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 375,
      energy           = 0,
      footprintX       = 5,
      footprintZ       = 8,
      metal            = 31,
      object           = [[b5x5heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 930,
    },


  },



}



return lowerkeys({ bpowerplant = unitDef })
