unitDef = {

  unitname                      = [[benergytruckdepot]],
  name                          = [[Raida Type Supply Truck Depot]],
  description                   = [[Power Supply Truck Depot - Immobile energy storage with a capacity of 500.  Can morph into a truck form with 25 energy storage.]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 150,
  buildCostMetal                = 120,
  builder                       = false,

  buildPic                      = [[benergytruckdepot.png]],
  buildTime                     = 40,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyStorage                 = 500,
  explodeAs                     = [[MEDIUM_UNIT]],
  footprintX                    = 4,
  footprintZ                    = 4,
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 200,
  maxDamage                     = 1150,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[benergytruck.s3o]],
  seismicSignature              = 4,
  selfDestructAs                = [[MEDIUM_UNIT]],
  side                          = [[NKG]],
  sightDistance                 = 300,
  smoothAnim                    = true,

  sounds			= {
      select = {
	"ct/generator_chatter",
	},

      ok = {
	"ct/generator_chatter",
	},
  },

  TEDClass                      = [[ENERGY]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[oooo oooo oooo oooo]],
  script                        = [[benergytruckdepot.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Power Storage]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 862,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 862,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Power Storage]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 575,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 4,
      footprintZ       = 4,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 575,
      object           = [[b4x4heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ benergytruckdepot = unitDef })
