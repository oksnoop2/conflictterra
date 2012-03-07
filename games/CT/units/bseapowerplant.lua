unitDef = {
  unitname                      = [[bseapowerplant]],
  name                          = [[Floating Solar Panels]],
  description                   = [[Provide a small but decent supply of power. Adds +15 energy.]],
  amphibious                    = false,
  activateWhenBuilt             = true,
  buildCostEnergy               = 115,
  buildCostMetal                = 92,
  builder                       = false,

  buildPic                      = [[bseapowerplant.png]],
  buildTime                     = 35,
  category                      = [[FLOAT]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyUse                     = -15,
  energyMake                    = 0,
  explodeAs                     = [[SMALL_BUILDING]],
  footprintX                    = 3,
  footprintZ                    = 3,
  floater                       = true,
  idleAutoHeal                  = 0,
  mass                          = 35,
  maxDamage                     = 1500,
  maxSlope                      = 18,
  minWaterDepth                 = 0,
  noAutoFire                    = false,
  objectName                    = [[bseapowerplant.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[SMALL_BUILDING]],
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,

  sounds			= {
      select = {
	"ct/generator_chatter",
	},

      ok = {
	"ct/generator_chatter",
	},
  },

  yardMap                       = [[ooo ooo ooo]],
  script                        = [[bseapowerplant.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Floating Solar Plant]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 1125,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 46,
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
      damage           = 750,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 23,
      object           = [[b3x3heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bseapowerplant = unitDef })
