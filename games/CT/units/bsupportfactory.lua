unitDef = {

  unitname                      = [[bsupportfactory]],
  name                          = [[Support Factory]],
  description                   = [[Builds auxiliary units, such as supply vehicles and a hover transport.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = false,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 750,
  buildCostMetal                = 600,
  builder                       = true,

  buildoptions                  = {

	[[bengineer1]],
	[[bmetaltruck]],
	[[benergytruck]],
	[[bhovertransport]],
  },



  buildPic                      = [[bsupportfactory.png]],
  buildTime                     = 45,
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  canBeAssisted                 = false,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 19,
  footprintZ                    = 19,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 8500,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bsupportfactory.s3o]],

  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[NKG]],
  sightDistance                 = 250,

	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

  smoothAnim                    = true,
  TEDClass                      = [[PLANT]],
  turnRate                      = 0,
  workerTime                    = 1,
  yardMap                       = [[ccccccccccccccccccc ccccccccccccccccccc ccccccccccccccccccc cccccccccccccoooooc ccccooccoooccoooooc ccccoocooooocoooooc ccccccooooooocccccc ccoocooooooooocoocc coooooooooooooooooc ooooooocccccooooooo oooooocccccccoooooo coooocccccccccooooo ccoocccccccccccoooc ccocccccccccccccooc ccocccccccccccccooc ccocccccccccccccocc ccccccccccccccccccc ccccccccccccccccccc ccccccccccccccccccc]],
  script                        = [[bsupportfactory.lua]],




  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Supply Factory]],
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
      metal            = 300,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Supply Factory]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 4250,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 16,
      footprintZ       = 16,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 150,
      object           = [[b16x16heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bsupportfactory = unitDef })
