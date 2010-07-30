unitDef = {

  unitname                      = [[bseamex]],
  name                          = [[Raw Material Extractor Sea Platform]],
  description                   = [[Floating extractor of usable resources from the seafloor.  Must be built over a metal deposit.]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 115,
  buildCostMetal                = 92,
  builder                       = false,

  buildPic                      = [[bseamex.png]],
  buildTime                     = 35,
  canattack                     = [[false]],
  category                      = [[FLOAT]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,


  energyUse                     = 0,
  explodeAs                     = [[SMALL_BUILDING]],
  extractsMetal                 = 0.002,
  floater                       = true,
  footprintX                    = 4,
  footprintZ                    = 4,
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 37.5,
  maxDamage                     = 4500,
  maxSlope                      = 255,
  maxVelocity                   = 0,
  minWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bseamex.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[SMALL_BUILDING]],
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,

	  sounds			= {
	      select = {
		"ct/mexthump",
		},
	      ok = {
		"ct/mexthump",
		},
	  },

  TEDClass                      = [[METAL]],
  turnRate                      = 0,

  waterline                     = 1,
  workerTime                    = 0,
  yardMap                       = [[oooo oooo oooo oooo]],
  script                        = [[bseamex.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Sea Extractor]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 3375,
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
      description      = [[Debris - Sea Extractor]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 2250,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 4,
      footprintZ       = 4,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 23,
      object           = [[b4x4heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bseamex = unitDef })
