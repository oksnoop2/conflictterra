unitDef = {

  unitname                      = [[badvshipyard]],
  name                          = [[Advanced Naval Factory]],
  description                   = [[Produces more advanced battleships and other sea-faring vessels.]],
  acceleration                  = 0,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 1000,
  buildCostMetal                = 800,
  builder                       = true,

  buildoptions                  = {

    [[bseaengineer2]],
    [[badvamphmech]],
    [[badvbattleship]],
    [[badvrocketbattleship]],
    [[blras]],
    [[badvaaship]],
    [[badvradarship]],
    [[benergysupplyboat]],
    [[bamphmech]],
    [[bbattleship]],

    [[brocketbattleship]],
    [[bartilleryship]],
    [[baaship]],

    [[bradarship]],
  },



  buildPic                      = [[badvshipyard.png]],
  buildTime                     = 60,
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  canBeAssisted                 = false,
  category                      = [[FLOAT]],
  collisionVolumeOffsets        = [[0 48 0]],
  collisionVolumeScales         = [[256 160 224]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 16,
  footprintZ                    = 14,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 10000,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  metalMake                     = 0,
  minCloakDistance              = 150,
  minWaterDepth                 = 30,
  noAutoFire                    = false,
  objectName                    = [[badvshipyard.s3o]],

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
  TEDClass                      = [[PLANT]],
  turnRate                      = 0,
  
  waterline                     = 10,
  workerTime                    = 1,
  yardMap                       = [[oooooocccccccccc oooooocccccccccc oooooocccccccccc oooooocccccccccc oooooocccccccccc oooooocccccccccc oooooocccccccccc oooooocccccccccc oooooocccccccccc oooooocccccccccc oooooocccccccccc oooooocccccccccc oooooocccccccccc oooooocccccccccc]],
  script                        = [[badvshipyard.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Advanced Naval Battleship Factory]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 7500,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 400,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Advanced Naval Battleship Factory]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 5000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 16,
      footprintZ       = 14,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 200,
      object           = [[b16x14heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },




  },



}



return lowerkeys({ badvshipyard = unitDef })
