unitDef = {

  unitname                      = [[ktidalcollector]],
  name                          = [[Tidal Generator]],
  description                   = [[I collect tides!]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 115,
  buildCostMetal                = 115,
  builder                       = false,

  buildPic                      = [[ktidalcollector.png]],
  buildTime                     = 35,
  category                      = [[FLOAT]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,


  damageModifier                = 0.25,
  tidalGenerator                = true,
  energyMake                    = 0,
  explodeAs                     = [[SMALL_BUILDINGEX]],
  footprintX                    = 3,
  footprintZ                    = 3,
  floater                       = true,
  idleAutoHeal                  = 0,
  mass                          = 35,
  maxDamage                     = 1500,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  minWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[ktidalcollector.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[SMALL_BUILDINGEX]],
  side                          = [[NKG]],
  sightDistance                 = 273,
  smoothAnim                    = true,
  TEDClass                      = [[ENERGY]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[ooo ooo ooo]],
  script                        = [[ktidalcollector.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Floating Solar Plant]],
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
      description      = [[Debris - Floating Solar Plant]],
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



return lowerkeys({ ktidalcollector = unitDef })
