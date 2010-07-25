unitDef = {

  unitname                      = [[badvtankfactory]],
  name                          = [[Advanced Tank Factory]],
  description                   = [[Produces more advanced tanks and combat vehicles.]],
  amphibious                    = false,
  acceleration                  = 0,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 1000,
  buildCostMetal                = 800,
  builder                       = true,

  buildoptions                  = {

	[[bengineer2]],
	[[bheavyassaulttank]],
	[[bheavymissiletank]],
	[[bvhsa]],
	[[bempcannon]],
	[[baatruck]],
	[[badvradartank]],
	[[bassaulttank]],

	[[bmissiletank]],

	[[bartillery]],
	[[bsiegeartillery]],
	[[bradartank]],
	[[breztank]],
  },



  buildPic                      = [[badvtankfactory.png]],
  buildTime                     = 60,
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  canBeAssisted                 = false,
  collisionVolumeOffsets        = [[0 8 0]],
  collisionVolumeScales         = [[112 112 160]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 7,
  footprintZ                    = 10,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 10000,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[badvtankfactory.s3o]],
  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,
  sortbias                      = [[0]],

	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

  TEDClass                      = [[PLANT]],
  turnRate                      = 0,
  workerTime                    = 1,
  yardMap                       = [[ooooooo ooooooo ooooooo occccco occccco occccco occccco occccco occccco occccco]],
  script                        = [[badvtankfactory.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Advanced Terrestrial Tank Factory]],
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
      description      = [[Debris - Advanced Terrestrial Tank Factory]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 5000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 7,
      footprintZ       = 10,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 200,
      object           = [[b7x10heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ badvtankfactory = unitDef })
