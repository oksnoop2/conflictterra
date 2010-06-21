unitDef = {

  unitname                      = [[kmex]],
  name                          = [[Raw Material Extractor]],
  description                   = [[Extractor]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildAngle                    = 8192,
  buildCostEnergy               = 75,
  buildCostMetal                = 75,
  builder                       = false,

  buildPic                      = [[kmex.png]],
  buildTime                     = 75,
  canattack                     = [[false]],
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable         = false,

  energyUse                     = 0,
  explodeAs                     = [[TINY_BUILDINGEX]],
  extractsMetal                 = 0.001,
  floater                       = false,
  footprintX                    = 3,
  footprintZ                    = 3,
  iconType                      = [[mex]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  levelGround                   = false,
  mass                          = 37.5,
  maxDamage                     = 400,
  maxSlope                      = 255,
  maxVelocity                   = 0,
  maxWaterDepth                 = 5000,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[kmex.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[TINY_BUILDINGEX]],
  side                          = [[NKG]],
  sightDistance                 = 273,
  smoothAnim                    = true,
  TEDClass                      = [[METAL]],
  turnRate                      = 0,

  waterline                     = 1,
  workerTime                    = 0,
  yardMap                       = [[ooooooooo]],
  script                        = [[kmex.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Extractor]],
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
      description      = [[Debris - Extractor]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 8000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 275,
      object           = [[b3x3heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ kmex = unitDef })
