unitDef = {

  unitname                      = [[bminerals]],
  name                          = [[Minerals]],
  description                   = [[we require more minerals!! hey, this is one.]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 1,
  buildCostMetal                = 1,
  builder                       = false,

  buildPic                      = [[bmex.png]],
  buildTime                     = 1,
  canattack                     = [[false]],
  category                      = [[MINERALS]],
--  corpse                        = [[DEAD]],
  reclaimable                   = true,
  repairable			= false,
  energyUse                     = 0,
  explodeAs                     = [[MEDIUM_BUILDING]],
  extractsMetal                 = 0.000,
  floater                       = false,
  footprintX                    = 3,
  footprintZ                    = 3,
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 37.5,
  maxDamage                     = 500,
  maxSlope                      = 255,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[ctrock1.s3o]]--[[bmeteor.s3o]]--[[brock_3.s3o]]--[[bmex.s3o]],

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
  TEDClass                      = [[METAL]],
  turnRate                      = 0,

  waterline                     = 1,
  workerTime                    = 0,
  yardMap                       = [[ooooooooo]],
  script                        = [[bminerals.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[this mineral is mined out.]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 10,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 30,
      object           = [[b3x3heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[this mined mineral is totally crushed dude!]],
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



return lowerkeys({ bminerals = unitDef })
