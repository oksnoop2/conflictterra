unitDef = {

  unitname                      = [[badvjammertower]],
  name                          = [[Advanced Radar Jamming Tower]],
  description                   = [[A more advanced radar jammer, this model is capable of somewhat farther range.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  brakeRate                     = 0,
  buildCostEnergy               = 450,
  buildCostMetal                = 450,
  builder                       = false,

  buildPic                      = [[badvjammertower.png]],
  buildTime                     = 45,
  canAttack                     = false,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[32 96 32]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  energyUse                     = 5,
  explodeAs                     = [[SMALL_BUILDING]],
  footprintX                    = 2,
  footprintZ                    = 2,
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 210,
  maxDamage                     = 3500,
  maxSlope                      = 36,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 85,
  noAutoFire                    = false,
  objectName                    = [[badvjammertower.s3o]],

  onoffable                     = true,
  radarDistanceJam              = 1000,
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
  script                        = [[badvjammertower.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Advanced Jammer Tower]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 2625,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 320,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Advanced Jammer Tower]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 1750,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 160,
      object           = [[b2x2heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ badvjammertower = unitDef })
