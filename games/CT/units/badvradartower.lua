unitDef = {

  unitname                      = [[badvradartower]],
  name                          = [[Long Range Radar Tower]],
  description                   = [[A more permanent radar installation, this facility provides ample coverage.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 325,
  buildCostMetal                = 325,
  builder                       = false,

  buildPic                      = [[badvradartower.png]],
  buildTime                     = 40,
  canAttack                     = false,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[112 64 112]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  energyUse                     = 3,
  explodeAs                     = [[SMALL_BUILDING]],
  footprintX                    = 7,
  footprintZ                    = 7,
  idleAutoHeal                  = 0,
  isTargetingUpgrade            = false,
  levelGround                   = true,
  mass                          = 250,
  maxangledifl                  = [[1]],
  maxDamage                     = 3000,
  maxSlope                      = 36,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[badvradartower.s3o]],

  onoffable                     = true,
  radarDistance                 = 5000,
  seismicSignature              = 4,
  selfDestructAs                = [[SMALL_BUILDING]],

  sounds			= {
      select = {
	"ct/radar_chatter",
	},

      ok = {
	"ct/radar_chatter",
	},
  },

  side                          = [[NKG]],
  sightDistance                 = 400,
  smoothAnim                    = true,
  TEDClass                      = [[SPECIAL]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[ooooooo ooooooo ooooooo ooooooo ooooooo ooooooo ooooooo]],
  script                        = [[badvradartower.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Advanced Radar Tower]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 2250,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 160,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Advanced Radar Tower]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 1500,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 7,
      footprintZ       = 7,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 80,
      object           = [[b7x7heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ badvradartower = unitDef })
