unitDef = {

  unitname                      = [[bsupplydepotai]],
  name                          = [[Resource Drop Zone(AI)]],
  description                   = [[Drop-off point for mined metal from meteorites.  Can morph to a mobile form to deploy elsewhere.]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 200,
  buildCostMetal                = 200,
  builder                       = false,

  buildPic                      = [[bsupplydepot.png]],
  buildTime                     = 20,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],

  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[96 96 160]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  reclaimable                   = false,

  explodeAs                     = [[MEDIUM_UNIT]],
  footprintX                    = 6,
  footprintZ                    = 10,
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 2000,
  maxDamage                     = 1150,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalStorage                  = 500,
  extractsMetal                 = 0.001,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bsupplydepot.s3o]],
  seismicSignature              = 4,
  selfDestructAs                = [[MEDIUM_UNIT]],
  side                          = [[NKG]],
  sightDistance                 = 300,

  sounds			= {
      select = {
	"ct/generator_chatter",
	},

      ok = {
	"ct/generator_chatter",
	},
  },

  smoothAnim                    = true,
  TEDClass                      = [[ENERGY]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[cooooc cooooc cooooc cooooc cooooc cooooc cooooc cooooc cooooc cooooc]],
  script                        = [[bsupplydepot.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Supply Depot]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 862,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 80,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Supply Depot]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 575,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 4,
      footprintZ       = 4,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 40,
      object           = [[b4x4heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bsupplydepotai = unitDef })
