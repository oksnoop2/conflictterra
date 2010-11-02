unitDef = {

  unitname                      = [[bmechfactory]],
  name                          = [[Combat Mech Factory]],
  description                   = [[Produces combat and support mechs.]],
  amphibious                    = false,
  acceleration                  = 0,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 500,
  buildCostMetal                = 400,
  builder                       = true,

  buildoptions                  = {

    [[bminer]],
    [[bbasicmech]],

    [[bsnipermech]],

    [[bflyingmech]],
    [[bmissilemech]],
    [[bantitankmech]],
    [[bsiegemech]],

    [[bamphmech]],
  },



  buildPic                      = [[bmechfactory.png]],
  buildTime                     = 45,
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  canBeAssisted                 = false,
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[96 64 96]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 6,
  footprintZ                    = 6,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 8500,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bmechfactory.s3o]],

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
  sortbias                      = [[0]],
  TEDClass                      = [[PLANT]],
  turnRate                      = 0,
  workerTime                    = 1,
  yardMap                       = [[occcco occcco occcco occcco occcco occcco]],
  script                        = [[bmechfactory.lua]],



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



return lowerkeys({ bmechfactory = unitDef })