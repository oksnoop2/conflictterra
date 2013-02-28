--Enhanced Energy Station Unit Def by Sanada
--Notes:  NOT Balanced Version 1

unitDef = {

  unitname                      = [[badvpowerplant]],
  name                          = [[Heavy Duty Energy Station]],
  description                   = [[Creates +15 energy.]],
  amphibious                    = false,
  activateWhenBuilt             = true,
  buildCostEnergy               = 500,
  buildCostMetal                = 500,
  builder                       = false,

  buildPic                      = [[badvpowerplant.png]],
  buildTime                     = 30,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[128 50 128]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  
  energyUse                     = -15,
  explodeAs                     = [[MEDIUM_BUILDING]],
  footprintX                    = 8,
  footprintZ                    = 8,
  idleAutoHeal                  = 0,
  mass                          = 400,
  maxDamage                     = 2750,
  maxSlope                      = 18,
  levelGround                   = false,
  maxWaterDepth                 = 0,
  noAutoFire                    = false,
  objectName                    = [[badvpowerplant.s3o]],

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

  yardMap                       = [[oooooooo oooooooo oooooooo oooooooo oooooooo oooooooo oooooooo oooooooo]],
  script                        = [[badvpowerplant.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Heavy Duty Energy Station]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 1375,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 8,
      footprintZ       = 8,
      metal            = 250,
      object           = [[wrecks/badvpowerplantwreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 7500,
    },


    DEAD2 = {
      description      = [[Debris - Heavy Duty Energy Station]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 687,
      energy           = 0,
      footprintX       = 8,
      footprintZ       = 8,
      metal            = 125,
      object           = [[b4x4heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 3750,
    },


  },



}



return lowerkeys({ badvpowerplant = unitDef })
