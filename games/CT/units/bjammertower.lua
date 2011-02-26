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

  energyUse                     = 1.5,
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
      description      = [[Wreckage - Jammer Tower]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 412,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 100,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Jammer Tower]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 275,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 50,
      object           = [[b2x2heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bjammertower = unitDef })
