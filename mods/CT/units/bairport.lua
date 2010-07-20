unitDef = {

  unitname                      = [[bairport]],
  name                          = [[Combat Air Base]],
  description                   = [[Produces warplanes and support aircraft, and can repair and refuel aircraft.]],
  amphibious                    = false,
  acceleration                  = 0,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 500,
  buildCostMetal                = 400,
  builder                       = true,

  buildoptions                  = {

    [[bfighter]],
    [[bbomber]],

    [[brocketplane]],

    [[bradarplane]],
  },



  buildPic                      = [[bairbase.png]],
  buildTime                     = 45,
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  canBeAssisted                 = false,
  category                      = [[SINK]],
  isAirBase                     = true,
  collisionVolumeOffsets        = [[0 40 0]],
  collisionVolumeScales         = [[207 112 376]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 13,
  footprintZ                    = 24,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 8500,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bairbase.s3o]],

  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,
  sortbias                      = [[0]],

	  sounds			= {
	      select = {
		"argh/Argh_Jet.wav",
		},

	      ok = {
		"argh/Argh_Jet.wav",
		},
	  },

  TEDClass                      = [[PLANT]],
  turnRate                      = 0,
  workerTime                    = 1,
  yardMap                       = [[ooooocccccccc ooooocccccccc ooooocccccccc ooooocccccccc ooooocccccccc ooooocccccccc ooooocccccccc ccccccccccccc coooccooccccc coooccooccccc coooccooccccc ccccccooccccc ccccccccccccc ccccccccccccc ccccccccccccc ccccccooccccc ccccccooccccc ccccccooccccc ccccccccccccc ccccccccccccc ccccccooccccc ccccccooccccc ccccccooccccc ccccccooccccc]],
  script                        = [[bairbase.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Combat Air Base]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 6375,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 7,
      footprintZ       = 6,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 6375,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Combat Air Base]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 4250,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 11,
      footprintZ       = 12,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 4250,
      object           = [[b11x12heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bairport = unitDef })
