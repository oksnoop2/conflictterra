unitDef = {

  unitname                      = [[badvsubpens]],
  name                          = [[Advanced Submarine Pens]],
  description                   = [[Produces more advanced submarines and hover mechs.]],
  acceleration                  = 0,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 1000,
  buildCostMetal                = 800,
  builder                       = true,

  buildoptions                  = {
    [[bseaengineer2]],
    [[badvamphmech]],

    [[badvsubmarine]],
    [[badvaasub]],
    [[bamphmech]],
    [[bsubmarine]],
    [[baasub]],
  },



  buildPic                      = [[badvsubpens.png]],
  buildTime                     = 60,
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  canBeAssisted                 = false,
  category                      = [[FLOAT]],
  collisionVolumeOffsets        = [[0 64 0]],
  collisionVolumeScales         = [[230 125 230]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 15,
  footprintZ                    = 15,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 10000,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  metalMake                     = 0,
  minCloakDistance              = 150,
  minWaterDepth                 = 40,
  noAutoFire                    = false,
  objectName                    = [[badvsubpens.s3o]],

  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,
  TEDClass                      = [[PLANT]],
  turnRate                      = 0,
  
  waterline                     = 5,
  workerTime                    = 1,
  yardMap                       = [[ooocccccccccooo ooocccccccccooo ooocccccccccooo ooocccccccccooo ooocccccccccooo ooocccccccccooo ooocccccccccooo ooocccccccccooo ooocccccccccooo ooocccccccccooo ooocccccccccooo ooocccccccccooo ooocccccccccooo ooocccccccccooo ooocccccccccooo]],
  script                        = [[badvsubpens.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Advanced Submarine Pens]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 7500,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 7,
      footprintZ       = 6,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 400,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Advanced Submarine Pens]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 5000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 15,
      footprintZ       = 15,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 200,
      object           = [[b15x15heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ badvsubpens = unitDef })
