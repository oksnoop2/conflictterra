unitDef = {

  unitname                      = [[bshipyard]],
  name                          = [[Naval Factory]],
  description                   = [[Produces battleships and other sea-faring vessels.]],
  buildCostEnergy               = 400,
  buildCostMetal                = 400,
  builder                       = true,

  buildoptions                  = {

    [[bseaengineer1]],
    [[bbattleship]],
    [[brocketbattleship]],
    [[bartilleryship]],
    [[baaship]],
    [[bradarship]],
    [[bsubmarine]],
  },



  buildPic                      = [[bshipyard.png]],
  buildTime                     = 45,
  canMove                       = true,
  canPatrol                     = true,
  canStop                       = true,
  canBeAssisted                 = false,
  category                      = [[FLOAT]],
  collisionVolumeOffsets        = [[0 8 0]],
  collisionVolumeScales         = [[160 95 160]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 10,
  footprintZ                    = 10,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 8500,
  maxSlope                      = 15,
  metalMake                     = 0,
  minWaterDepth                 = 30,
  noAutoFire                    = false,
  objectName                    = [[bshipyard2.s3o]],

  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[NKG]],
  sightDistance                 = 250,

	  sounds			= {
	      select = {
		"ct/shipbell",
		},
	      ok = {
		"ct/shipbell",
		},
	  },

  smoothAnim                    = true, 
  waterline                     = 5,
  workerTime                    = 1,
  yardMap                       = [[ooccccccoo ooccccccoo ooccccccoo ooccccccoo ooccccccoo ooccccccoo ooccccccoo ooccccccoo ooccccccoo ooccccccoo]],
  script                        = [[bshipyard2.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Naval Battleship Factory]],
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
      description      = [[Debris - Naval Battleship Factory]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 4250,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 10,
      footprintZ       = 10,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 100,
      object           = [[b10x10heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bshipyard = unitDef })
