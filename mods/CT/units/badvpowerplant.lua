unitDef = {

  unitname                      = [[badvpowerplant]],
  name                          = [[High Yield Power Plant]],
  description                   = [[Advanced Power Plant - High-altitude wind-generators that are easy to install and provide varying levels of power.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 400,
  buildCostMetal                = 320,
  builder                       = false,

  buildPic                      = [[badvpowerplant.png]],
  buildTime                     = 45,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
     reclaimable                   = false,

  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[80 250 48]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  damageModifier                = 0.25,
  energyUse                     = 0,
  explodeAs                     = [[SMALL_BUILDINGEX]],
  footprintX                    = 5,
  footprintZ                    = 3,
  idleAutoHeal                  = 0,
  mass                          = 100,
  maxDamage                     = 2750,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  levelGround                   = false,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[badvpowerstation.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[SMALL_BUILDINGEX]],
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,

  sounds			= {
      select = {
	"ct/generator_chatter",
	},

      ok = {
	"ct/generator_chatter",
	},
  },

  TEDClass                      = [[ENERGY]],
  turnRate                      = 0,
  windGenerator                 = 60,
  workerTime                    = 0,
  yardMap                       = [[ooooo ooooo ooooo]],
  script                        = [[badvpowerplant.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Advanced Power Plant]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 8000,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
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
      description      = [[Debris - Advanced Power Plant]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 8000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 5,
      footprintZ       = 3,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 275,
      object           = [[b5x3heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ badvpowerplant = unitDef })
