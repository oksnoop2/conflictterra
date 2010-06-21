unitDef = {

  unitname                      = [[bmetalstorage]],
  name                          = [[Metal Storage Facility]],
  description                   = [[Metal Storage - Increases stockpile capacity for raw resources by 500.]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 150,
  buildCostMetal                = 150,
  builder                       = false,

  buildPic                      = [[bmetalstorage.png]],
  buildTime                     = 40,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,


  explodeAs                     = [[SMALL_BUILDINGEX]],
  floater                       = false,
  footprintX                    = 3,
  footprintZ                    = 3,
  idleAutoHeal                  = 0,
  levelGround                   = true,
  mass                          = 40,
  maxDamage                     = 750,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalStorage                  = 500,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bmetalstorage.s3o]],
  seismicSignature              = 4,
  selfDestructAs                = [[SMALL_BUILDINGEX]],
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,
  TEDClass                      = [[METAL]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[ooo ooo ooo]],
  script                        = [[bmetalstorage.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Metal Storage]],
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
      description      = [[Debris - Metal Storage]],
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



return lowerkeys({ bmetalstorage = unitDef })
