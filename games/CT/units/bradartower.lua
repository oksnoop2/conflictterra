unitDef = {

  unitname                      = [[bradartower]],
  name                          = [[Radar Outpost]],
  description                   = [[Detects units, even cloaked enemies. Uses 10 energy per second to operate.]],
  amphibious                    = false,
  activateWhenBuilt             = true,
  buildCostEnergy               = 100,
  buildCostMetal                = 100,
  builder                       = false,

  buildPic                      = [[bradartower.png]],
  buildTime                     = 20,
  canAttack                     = false,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[16 64 16]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  energyUse                     = 10,
  explodeAs                     = [[SMALL_BUILDING]],
  footprintX                    = 1,
  footprintZ                    = 1,
  idleAutoHeal                  = 0,
  isTargetingUpgrade            = false,
  levelGround                   = false,
  mass                          = 27.5,
  maxDamage                     = 500,
  maxSlope                      = 36,
  maxWaterDepth                 = 0,
  noAutoFire                    = false,
  objectName                    = [[bradartower.s3o]],

  onoffable                     = true,
  radarDistance                 = 2000, --3000 (adv range...)
  seismicSignature              = 4,
  selfDestructAs                = [[SMALL_BUILDING]],
  side                          = [[NKG]],
  sightDistance                 = 400,
  smoothAnim                    = true,
  yardMap                       = [[o o]],
  script                        = [[bradartower.lua]],

  sounds			= {
      select = {
	"ct/radar_chatter",
	},

      ok = {
	"ct/radar_chatter",
	},
  },



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Radar Outpost]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 250,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 2,
      footprintZ       = 2,
      metal            = 50,
      object           = [[wrecks/bradartowerwreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 1500,
    },


    DEAD2 = {
      description      = [[Debris - Radar Outpost]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 125,
      energy           = 0,
      footprintX       = 2,
      footprintZ       = 2,
      metal            = 25,
      object           = [[b2x2heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 750,
    },


  },



}



return lowerkeys({ bradartower = unitDef })
