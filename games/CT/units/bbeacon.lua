unitDef = {

  unitname                      = [[bbeacon]],
  name                          = [[Cruiser Beacon]],
  description                   = [[Beacon used to call in specialized Cruisers.]],
  amphibious                    = false,
  activateWhenBuilt             = false,
  buildCostEnergy               = 400,
  buildCostMetal                = 400,
  builder                       = true,

  buildoptions                  = {
	[[bsupplydepotmobile]],
	[[bmechcruiser]],
	[[btankcruiser]],
	[[baircruiser]],
	[[bprimarycruiser]],
	[[bmissilecruiser]],
	[[btransportcruiser]],
	[[bflagship]],
	[[bbattlecruiser]],
  },

  buildPic                      = [[bbeacon.png]],
  buildTime                     = 45,
  canMove                       = true,
  canPatrol                     = true,
  canStop                       = true,
  canBeAssisted                 = false,
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[192 64 224]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 12,
  footprintZ                    = 14,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 7500,
  maxSlope                      = 15,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  noAutoFire                    = false,
  objectName                    = [[bbeacon.s3o]],

  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,

  sounds			= {
	      select = {
		"ct/cruiserengine",
		},
	      ok = {
		"ct/cruiserengine",
		},
  },

  sfxtypes            		= {
	
	    explosiongenerators = {
		"custom:ct_buildlight_green",
		"custom:ct_buildlight_red",
	    },
	
  },

  workerTime                    = 1,
  yardMap                       = [[cooooooooooc oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo cooooooooooc]],
  script                        = [[bbeacon.lua]],




  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Cruiser Beacon]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 4250,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 12,
      footprintZ       = 14,
      metal            = 200,
      object           = [[wrecks/bbeaconwreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 6000,
    },


    DEAD2 = {
      description      = [[Debris - Cruiser Beacon]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 2125,
      energy           = 0,
      footprintX       = 12,
      footprintZ       = 14,
      metal            = 100,
      object           = [[b14x14heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 3000,
    },


  },



}



return lowerkeys({ bbeacon = unitDef })
