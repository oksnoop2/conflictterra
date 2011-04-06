unitDef = {

  unitname                      = [[bradartower]],
  name                          = [[Radar Outpost]],
  description                   = [[Temporary radar installation.  Provides a steady, but close-reaching, range of radar.  Uses 10 energy per second to operate.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  brakeRate                     = 0,
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
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bradartower.s3o]],

  onoffable                     = true,
  radarDistance                 = 1500,
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
      damage           = 375,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 40,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Radar Outpost]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 250,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 1,
      footprintZ       = 1,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 20,
      object           = [[b1x1heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bradartower = unitDef })
