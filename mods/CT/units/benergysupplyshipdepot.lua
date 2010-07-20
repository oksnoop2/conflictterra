unitDef = {

  unitname                      = [[benergysupplyshipdepot]],
  name                          = [[Denda Class Supply Cruiser Depot]],
  description                   = [[Power Supply Cruiser Depot - Immobile energy storage with a capacity of 1000.  Can morph into a mobile cruiser form with 50 energy storage.]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 500,
  buildCostMetal                = 400,
  builder                       = false,

  buildPic                      = [[benergysupplyshipdepot.png]],
  buildTime                     = 60,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  explodeAs                     = [[BIG_UNIT]],
  energyStorage                 = 1000,
  floater                       = false,
  footprintX                    = 6,
  footprintZ                    = 6,
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 2500,
  maxDamage                     = 4000,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalStorage                  = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[benergysupplyship.s3o]],
  seismicSignature              = 4,
  selfDestructAs                = [[BIG_UNIT]],
  side                          = [[NKG]],
  sightDistance                 = 500,

  sounds			= {
      select = {
	"ct/generator_chatter",
	},

      ok = {
	"ct/generator_chatter",
	},
  },

  smoothAnim                    = true,
  TEDClass                      = [[METAL]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[oooooo oooooo oooooo oooooo oooooo oooooo]],
  script                        = [[benergysupplyshipdepot.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Energy Supply Cruiser Depot]],
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
      description      = [[Debris - Energy Supply Cruiser Depot]],
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



return lowerkeys({ benergysupplyshipdepot = unitDef })
