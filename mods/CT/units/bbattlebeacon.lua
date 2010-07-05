unitDef = {

  unitname                      = [[bbattlebeacon]],
  name                          = [[Cruiser Beacon]],
  description                   = [[Cruiser Beacon - Beacon used to call in cruisers. - Build Limit: 2]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = false,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 1500,
  buildCostMetal                = 1200,
  builder                       = true,

  buildoptions                  = {

	[[bflagship2]],
	[[bbattlecruiser]],
	[[btransportcarrier2]],
	[[bmetalsupplyship]],
	[[benergysupplyship]],
  },



  buildPic                      = [[bbeacon.png]],
  buildTime                     = 120,
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  canBeAssisted                 = false,
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[256 64 256]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDINGEX]],
  footprintX                    = 16,
  footprintZ                    = 16,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 10000,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bbeacon.s3o]],

  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDINGEX]],
  showNanoSpray                 = false,
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,
  TEDClass                      = [[PLANT]],
  turnRate                      = 0,
  workerTime                    = 1,
  yardMap                       = [[ccccccoooocccccc cccccoccccoccccc ccccoccccccocccc cccoccccccccoccc ccoccccccccccocc coccccccccccccoc occcccccccccccco occcccccccccccco occcccccccccccco occcccccccccccco coccccccccccccoc ccoccccccccccocc cccoccccccccoccc ccccoccccccocccc cccccoccccoccccc ccccccoooocccccc]],
  unitRestricted                = 2,
  script                        = [[bbeacon.lua]],




  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Cruiser Beacon]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 8000,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 7,
      footprintZ       = 6,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 275,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Cruiser Beacon]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 8000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 16,
      footprintZ       = 16,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 275,
      object           = [[b16x16heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bbattlebeacon = unitDef })
