unitDef = {

  unitname                      = [[bseametalstorage]],
  name                          = [[Floating Metal Storage Facility]],
  description                   = [[Sea Metal Storage - Increases stockpile capacity for raw resources by 750.]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 150,
  buildCostMetal                = 120,
  builder                       = false,

  buildPic                      = [[bseametalstorage.png]],
  buildTime                     = 40,
  category                      = [[FLOAT]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,


  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[32 20 64]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  explodeAs                     = [[SMALL_BUILDINGEX]],
  footprintX                    = 2,
  footprintZ                    = 4,
  floater                       = true,
  idleAutoHeal                  = 0,
  levelGround                   = true,
  mass                          = 40,
  maxDamage                     = 750,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  minWaterDepth                 = 0,
  metalStorage                  = 750,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bseametalstorage.s3o]],
  seismicSignature              = 4,
  selfDestructAs                = [[SMALL_BUILDINGEX]],
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,
  TEDClass                      = [[METAL]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[ooo ooo ooo]],
  script                        = [[bseametalstorage.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Sea Metal Storage]],
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
      description      = [[Debris - Sea Metal Storage]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 8000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 4,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 275,
      object           = [[b2x4heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bseametalstorage = unitDef })
