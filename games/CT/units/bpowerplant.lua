unitDef = {

  unitname                      = [[bpowerplant]],
  name                          = [[Stirling Power Generator]],
  description                   = [[Uses heat from the sun to run a generator. Requires no energy to build. Adds +2 energy.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  brakeRate                     = 0,
  buildCostEnergy               = 0,
  buildCostMetal                = 100,
  builder                       = false,

  buildPic                      = [[bpowerplant.png]],
  buildTime                     = 10,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[32 50 64]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  energyUse                     = -2,
  energyMake                    = 0,
  explodeAs                     = [[MEDIUM_BUILDING]],
  footprintX                    = 2,
  footprintZ                    = 4,
  idleAutoHeal                  = 0,
  mass                          = 35,
  maxDamage                     = 1500,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bpowerplant.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[MEDIUM_BUILDING]],
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,

  sounds			= {
      select = {
	"ct/generator_chatter",
	},

      ok = {
	"ct/generator_chatter",
	},
  },

  yardMap                       = [[ooooooooo]],
  script                        = [[bpowerplant.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Stirling Power Generator]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 750,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 2,
      footprintZ       = 4,
      metal            = 50,
      object           = [[wrecks/bpowerplantwreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 1500,
    },


    DEAD2 = {
      description      = [[Debris - Stirling Power Generator]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 375,
      energy           = 0,
      footprintX       = 2,
      footprintZ       = 4,
      metal            = 25,
      object           = [[b2x4heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 750,
    },


  },



}



return lowerkeys({ bpowerplant = unitDef })
