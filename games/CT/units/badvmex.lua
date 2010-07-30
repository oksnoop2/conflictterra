unitDef = {

  unitname                      = [[badvmex]],
  name                          = [[Advanced Raw Material Extractor]],
  description                   = [[Higher yield resource extractor that requires power to run.  Must be built over a metal desposit.]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 500,
  buildCostMetal                = 400,
  builder                       = false,

  buildPic                      = [[badvmex.png]],
  buildTime                     = 60,
  canattack                     = [[false]],
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyUse                     = 25,
  explodeAs                     = [[MEDIUM_BUILDING]],
  extractsMetal                 = 0.004,
  floater                       = false,
  footprintX                    = 5,
  footprintZ                    = 5,
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 37.5,
  maxDamage                     = 6500,
  maxSlope                      = 255,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[badvmex.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[MEDIUM_BUILDING]],
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
  yardMap                       = [[ooooo ooooo ooooo ooooo ooooo]],
  script                        = [[badvmex.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Advanced Extractor]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 4875,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 200,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Advanced Extractor]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 3250,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 5,
      footprintZ       = 5,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 100,
      object           = [[b5x5heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ badvmex = unitDef })
