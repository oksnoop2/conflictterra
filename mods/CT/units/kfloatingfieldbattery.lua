unitDef = {

  unitname                      = [[kfloatingfieldbattery]],
  name                          = [[Floating Field Battery]],
  description                   = [[I float!]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 150,
  buildCostMetal                = 150,
  builder                       = false,

  buildPic                      = [[kfloatingfieldbattery.png]],
  buildTime                     = 40,
  category                      = [[FLOAT]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,


  energyStorage                 = 750,
  explodeAs                     = [[ESTOR_BUILDINGEX]],
  footprintX                    = 3,
  footprintZ                    = 3,
  floater                       = true,
  idleAutoHeal                  = 0,
  levelGround                   = true,
  mass                          = 75,
  maxDamage                     = 750,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  minWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[kfloatingfieldbattery.s3o]],
  seismicSignature              = 4,
  selfDestructAs                = [[ESTOR_BUILDINGEX]],
  side                          = [[NKG]],
  sightDistance                 = 273,
  smoothAnim                    = true,
  TEDClass                      = [[ENERGY]],
  turnRate                      = 0,
  workerTime                    = 0,
  waterline                     = 5,
  yardMap                       = [[ooo ooo ooo]],
  script                        = [[kfloatingfieldbattery.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Sea Power Storage]],
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
      description      = [[Debris - Sea Power Storage]],
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



return lowerkeys({ kfloatingfieldbattery = unitDef })
