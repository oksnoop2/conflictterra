unitDef = {

  unitname                      = [[badvenergystorage]],
  name                          = [[High Capacity Power Storage Facility]],
  description                   = [[Advanced Power Storage - Provides even more excess power produced.  Increases stockpile capacity by 1000.]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 500,
  buildCostMetal                = 500,
  builder                       = false,

  buildPic                      = [[badvenergystorage.png]],
  buildTime                     = 60,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyStorage                 = 1000,
  explodeAs                     = [[ESTOR_BUILDINGEX]],
  footprintX                    = 4,
  footprintZ                    = 4,
  idleAutoHeal                  = 0,
  levelGround                   = true,
  mass                          = 400,
  maxDamage                     = 2150,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[badvenergystorage.s3o]],
  seismicSignature              = 4,
  selfDestructAs                = [[ESTOR_BUILDINGEX]],
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,
  TEDClass                      = [[ENERGY]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[oooo oooo oooo oooo]],
  script                        = [[badvenergystorage.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Advanced Power Storage]],
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
      description      = [[Debris - Advanced Power Storage]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 8000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 4,
      footprintZ       = 4,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 275,
      object           = [[b4x4heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ badvenergystorage = unitDef })
