unitDef = {

  unitname                      = [[badvjammertower]],
  name                          = [[Radar Jamming Tower]],
  description                   = [[Advanced Jamming Tower - A more advanced radar jammer, this model is capable of somewhat farther range.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 800,
  buildCostMetal                = 640,
  builder                       = false,

  buildPic                      = [[badvjammertower.png]],
  buildTime                     = 80,
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
  maxangledifl                  = [[1]],
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

  TEDClass                      = [[SPECIAL]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[oo oo]],
  script                        = [[badvjammertower.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Advanced Jammer Tower]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 8000,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 275,
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
      damage           = 8000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 275,
      object           = [[b2x2heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ badvjammertower = unitDef })
