unitDef = {

  unitname                      = [[bsubpens]],
  name                          = [[Submarine Pens]],
  description                   = [[Produces submarines and hover mechs.]],
  acceleration                  = 0,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 400,
  buildCostMetal                = 400,
  builder                       = true,

  buildoptions                  = {

    [[bseaengineer1]],
    [[bamphmech]],

    [[bsubmarine]],
    [[baasub]],
  },



  buildPic                      = [[bsubpens.png]],
  buildTime                     = 45,
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  canBeAssisted                 = false,
  category                      = [[FLOAT]],
  collisionVolumeOffsets        = [[0 -16 0]],
  collisionVolumeScales         = [[224 64 224]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 14,
  footprintZ                    = 14,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 8500,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  metalMake                     = 0,
  minCloakDistance              = 150,
  minWaterDepth                 = 40,
  noAutoFire                    = false,
  objectName                    = [[bsubpens.s3o]],

  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[NKG]],
  sightDistance                 = 250,

	  sounds			= {
	      select = {
		"ct/sonarbing",
		},
	      ok = {
		"ct/sonarbing",
		},
	  },

  smoothAnim                    = true,
  TEDClass                      = [[PLANT]],
  turnRate                      = 0,
  
  waterline                     = 40,
  workerTime                    = 1,
  yardMap                       = [[oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo]],
  script                        = [[bsubpens.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Submarine Pens]],
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
      metal            = 200,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Submarine Pens]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 4250,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 14,
      footprintZ       = 14,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 100,
      object           = [[b14x14heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bsubpens = unitDef })
