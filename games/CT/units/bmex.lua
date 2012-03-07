unitDef = {

  unitname                      = [[bmex]],
  name                          = [[Drone Metal Extractor]],
  description                   = [[Extracts usable metal resources from below the ground. Must be built over a metal deposit.]],
  activateWhenBuilt             = true,
  buildCostEnergy               = 75,
  buildCostMetal                = 60,
  builder                       = false,

  buildPic                      = [[bmex.png]],
  buildTime                     = 25,
  canAttack                     = false,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyUse                     = 0,
  explodeAs                     = [[MEDIUM_BUILDING]],
  extractsMetal                 = 0.001,
  floater                       = false,
  footprintX                    = 3,
  footprintZ                    = 3,
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 37.5,
  maxDamage                     = 2500,
  maxSlope                      = 255,
  maxWaterDepth                 = 0,
  noAutoFire                    = false,
  objectName                    = [[bmex.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[MEDIUM_BUILDING]],
  side                          = [[NKG]],
  sightDistance                 = 250,

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:digdig",
	    },
	
	  },

	  sounds			= {
	      select = {
		"ct/mexthump",
		},
	      ok = {
		"ct/mexthump",
		},
	  },

  smoothAnim                    = true,
  waterline                     = 1,
  yardMap                       = [[ooooooooo]],
  script                        = [[bmex.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Extractor]],
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
      metal            = 30,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Extractor]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 2250,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 15,
      object           = [[b3x3heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bmex = unitDef })
