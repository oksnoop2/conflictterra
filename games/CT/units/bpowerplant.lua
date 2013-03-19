--Energy Station Unit Def by Sanada
--Notes:  NOT Balanced Version 1

unitDef = {

  unitname                      = [[bpowerplant]],
  name                          = [[Energy Station]],
  description                   = [[Creates +3 energy. Requires no energy to build.]],
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
  collisionVolumeScales         = [[64 50 64]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  energyUse                     = -3,
  energyMake                    = 0,
  explodeAs                     = [[MEDIUM_BUILDING]],
  footprintX                    = 4,
  footprintZ                    = 4,
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
		"custom:ct_damage_fire",
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

  yardMap                       = [[oooo oooo oooo oooo]],
  script                        = [[bpowerplant.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Energy Station]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 750,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 4,
      footprintZ       = 4,
      metal            = 62,
      object           = [[wrecks/bpowerplantwreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 1860,
    },


    DEAD2 = {
      description      = [[Debris - Energy Station]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 375,
      energy           = 0,
      footprintX       = 4,
      footprintZ       = 4,
      metal            = 31,
      object           = [[b4x4heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 930,
    },


  },



}



return lowerkeys({ bpowerplant = unitDef })
