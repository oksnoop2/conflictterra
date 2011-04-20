unitDef = {

  unitname                      = [[bjammertower]],
  name                          = [[Radar Jamming Outpost]],
  description                   = [[Easy-to-install, but complex, radar jammer.  Has a small range.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  brakeRate                     = 0,
  buildCostEnergy               = 300,
  buildCostMetal                = 300,
  builder                       = false,

  buildPic                      = [[bjammertower.png]],
  buildTime                     = 30,
  canAttack                     = false,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[32 64 32]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  energyUse                     = 10,
  explodeAs                     = [[SMALL_BUILDING]],
  footprintX                    = 2,
  footprintZ                    = 2,
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 210,
  maxDamage                     = 550,
  maxSlope                      = 36,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 85,
  noAutoFire                    = false,
  objectName                    = [[bjammertower.s3o]],

  onoffable                     = true,
  radarDistanceJam              = 750,
  seismicSignature              = 16,
  selfDestructAs                = [[SMALL_BUILDING]],
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,

  sounds			= {
      select = {
	"ct/jammer_chatter",
	},

      ok = {
	"ct/jammer_chatter",
	},
  },

  yardMap                       = [[oo oo]],
  script                        = [[bjammertower.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Radar Jamming Outpost]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 275,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 2,
      footprintZ       = 2,
      metal            = 150,
      object           = [[wrecks/bjammertowerwreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 4500,
    },


    DEAD2 = {
      description      = [[Debris - Radar Jamming Outpost]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 137,
      energy           = 0,
      footprintX       = 2,
      footprintZ       = 2,
      metal            = 75,
      object           = [[b2x2heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 2250,
    },


  },



}



return lowerkeys({ bjammertower = unitDef })
