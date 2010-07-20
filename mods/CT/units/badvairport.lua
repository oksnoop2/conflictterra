unitDef = {

  unitname                      = [[badvairport]],
  name                          = [[Advanced Combat Air Base]],
  description                   = [[Produces more advanced warplanes and support aircraft.  Also can repair and refuel aircraft.]],
  amphibious                    = false,
  acceleration                  = 0,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 1000,
  buildCostMetal                = 800,
  builder                       = true,

  buildoptions                  = {

    [[badvfighter]],
    [[badvbomber]],

    [[badvrocketplane]],

    [[badvradarplane]],
    [[blaserplane]],
    [[bfighter]],
    [[bbomber]],

    [[brocketplane]],

    [[bradarplane]],
  },



  buildPic                      = [[badvairbase.png]],
  buildTime                     = 60,
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  canBeAssisted                 = false,
  isAirBase                     = true,
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 50 0]],
  collisionVolumeScales         = [[234 114 298]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 15,
  footprintZ                    = 19,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 10000,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[badvairbase.s3o]],

  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,

	  sounds			= {
	      select = {
		"argh/Argh_Jet.wav",
		},

	      ok = {
		"argh/Argh_Jet.wav",
		},
	  },

  sortbias                      = [[0]],
  TEDClass                      = [[PLANT]],
  turnRate                      = 0,
  workerTime                    = 1,
  yardMap                       = [[cccccccccoooooo cccccccccoooooo ccccccooooooooo ccccccooooooooo ccccccccccccccc ccccccccccccccc ccccccccccccccc ccccccccccccccc ccccccccccccccc ccccccccccccccc ccccccccccccccc ccccccccccccccc ccccccccccccccc ccccccccccccccc ccccccccccccccc ccooooocccccccc ccooooocccccccc ccccccccccccccc ccccccccccccccc]],
  script                        = [[badvairbase.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Advanced Combat Air Base]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 8000,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 7,
      footprintZ       = 6,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 7500,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Advanced Combat Air Base]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 8000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 9,
      footprintZ       = 8,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 5000,
      object           = [[b9x8heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ badvairport = unitDef })
