unitDef = {

  unitname                      = [[badvmechcruiserfactory]],
  name                          = [[Matsudaira Class Cruiser Mech Factory]],
  description                   = [[Produces more advanced combat and support mechs.  Can morph back into the Matsudaira Class Cruiser.]],
  amphibious                    = false,
  acceleration                  = 0,
  brakeRate                     = 0,
  buildCostEnergy               = 1200,
  buildCostMetal                = 1200,
  builder                       = true,

  buildoptions                  = {

	[[bengineer2]],
	[[bheavymech]],
	[[bheavymissilemech]],
        [[badvhovermech]],
	[[bheavysiegemech]],
	[[bheavyflyingmech]],
	[[bminer]],
	[[bbasicmech]],
	[[bmissilemech]],
	[[bantitankmech]],
	[[bhovermech]],
	[[bsiegemech]],
	
        [[bflyingmech]],
	[[bsnipermech]],
  },



  buildPic                      = [[badvmechcruiserfactory.png]],
  buildTime                     = 60,
  canMove                       = true,
  canPatrol                     = true,
  canStop                       = true,
  canBeAssisted                 = false,
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[320 200 320]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 20,
  footprintZ                    = 20,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 8500,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[badvmechcruiserfactory.s3o]],

  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[NKG]],
  sightDistance                 = 250,

	  sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

  smoothAnim                    = true,
  workerTime                    = 1,
  yardMap                       = [[
oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc oooooooocccccccccccc]],
  script                        = [[badvmechcruiserfactory.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Combat Mech Factory]],
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
      reclaimTime      = 6375,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Combat Mech Factory]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 4250,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 6,
      footprintZ       = 6,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 100,
      object           = [[b6x6heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ badvmechcruiserfactory = unitDef })
