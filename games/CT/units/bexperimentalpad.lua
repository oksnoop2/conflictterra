unitDef = {

  unitname                      = [[bexperimentalpad]],
  name                          = [[Experimental Build Pad]],
  description                   = [[Specialty building that only builds an experimental SM. - Build Limit: 1]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = false,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 1200,
  buildCostMetal                = 1200,
  builder                       = true,

  buildoptions                  = {

	[[bheavyassaultmech]],
  },



  buildPic                      = [[bexperimentalpad.png]],
  buildTime                     = 90,
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  canBeAssisted                 = false,
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[160 96 160]],
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
  isAirBase                     = false,
  mass                          = 275,
  maxDamage                     = 10000,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bexperimentalpad.s3o]],

  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,

	  sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:factorysparks",
	    },
	
	  },

  TEDClass                      = [[PLANT]],
  turnRate                      = 0,
  workerTime                    = 1,
  yardMap                       = [[occcccccco cccccccccc cccccccccc cccccccccc cccccccccc cccccccccc cccccccccc cccccccccc cccccccccc  occcccccco]],
  unitRestricted                = 1,
  script                        = [[bexperimentalpad.lua]],




  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Experimental Build Pad]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 7500,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 7,
      footprintZ       = 6,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 600,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Experimental Build Pad]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 5000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 10,
      footprintZ       = 10,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 300,
      object           = [[b10x10heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bexperimentalpad = unitDef })
