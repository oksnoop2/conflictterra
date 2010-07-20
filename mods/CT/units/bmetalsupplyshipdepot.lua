unitDef = {

  unitname                      = [[bmetalsupplyshipdepot]],
  name                          = [[Takeda Class Supply Cruiser Depot]],
  description                   = [[Metal Supply Cruiser Depot - Immobile metal storage with a capacity of 1000.  Can morph into a mobile cruiser form with 50 metal storage.]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 500,
  buildCostMetal                = 400,
  builder                       = false,

  buildPic                      = [[bmetalsupplyshipdepot.png]],
  buildTime                     = 60,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  explodeAs                     = [[BIG_UNIT]],
  floater                       = false,
  footprintX                    = 7,
  footprintZ                    = 7,
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 2500,
  maxDamage                     = 4000,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalStorage                  = 1000,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bmetalsupplyship.s3o]],
  seismicSignature              = 4,
  selfDestructAs                = [[BIG_UNIT]],
  side                          = [[NKG]],
  sightDistance                 = 500,
  smoothAnim                    = true,

  sounds			= {
      select = {
	"ct/generator_chatter",
	},

      ok = {
	"ct/generator_chatter",
	},
  },

  TEDClass                      = [[METAL]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[ooo ooo ooo]],
  script                        = [[bmetalsupplyshipdepot.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Metal Supply Cruiser Depot]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 3000,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 3000,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Metal Supply Cruiser Depot]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 2000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 7,
      footprintZ       = 7,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 2000,
      object           = [[b7x7heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bmetalsupplyshipdepot = unitDef })
