unitDef = {

  unitname                      = [[kfloatingfieldmetalmaker]],
  name                          = [[Floating Field Metal Maker]],
  description                   = [[Floating Spinny!]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 1000,
  buildCostMetal                = 1000,
  builder                       = false,

  buildPic                      = [[kfloatingfieldmetalmaker.png]],
  buildTime                     = 120,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  DamageModifier                = 0.3,
  energyUse                     = 60,
  energyMake                    = 0,
  metalMake                     = 0,
  metalUse                      = -1,
  explodeAs                     = [[ESTOR_BUILDINGEX]],
  footprintX                    = 3,
  footprintZ                    = 3,
  floater                       = true,
  idleAutoHeal                  = 0,
  mass                          = 50,
  maxDamage                     = 650,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  minWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[kfloatingfieldmetalmaker.s3o]],

  onoffable                     = true,
  seismicSignature              = 0,
  selfDestructAs                = [[ESTOR_BUILDINGEX]],
  side                          = [[NKG]],
  sightDistance                 = 273,
  smoothAnim                    = true,
  TEDClass                      = [[METAL]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[ooo ooo ooo]],
  script                        = [[kfloatingfieldmetalmaker.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Metal Converter]],
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
      description      = [[Debris - Metal Converter]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 8000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 5,
      footprintZ       = 5,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 275,
      object           = [[b5x5heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ kfloatingfieldmetalmaker = unitDef })
