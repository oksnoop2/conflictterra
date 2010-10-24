unitDef = {

  unitname                      = [[bmeteor]],
  name                          = [[Meteor]],
  description                   = [[Meteor]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 1,
  buildCostMetal                = 1,
  builder                       = false,

  buildPic                      = [[bmex.png]],
  buildTime                     = 1,
  canattack                     = [[false]],
  category                      = [[MINERALS]],
--  corpse                        = [[DEAD]],
  reclaimable                   = false,
  repairable			= false,
  energyUse                     = 0,
  explodeAs                     = [[ROCK_MINEDOUT]],
  extractsMetal                 = 0.000,
  floater                       = false,
  footprintX                    = 1,
  footprintZ                    = 1,
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 37.5,
  maxDamage                     = 500,
  maxSlope                      = 255,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bmeteor.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[ROCK_MINEDOUT]],
  side                          = [[NKG]],
  sightDistance                 = 250,

  smoothAnim                    = true,
  TEDClass                      = [[METAL]],
  turnRate                      = 0,

  waterline                     = 1,
  workerTime                    = 0,
  yardMap                       = [[o]],
  script                        = [[bmeteor.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Meteor]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 10,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 30,
      object           = [[b3x3heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Meteor]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 2250,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 15,
      object           = [[b3x3heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bmeteor = unitDef })
