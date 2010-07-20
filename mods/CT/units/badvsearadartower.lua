unitDef = {

  unitname                      = [[badvsearadartower]],
  name                          = [[Advanced Floating Radar Tower]],
  description                   = [[Advanced Sea Radar Tower - A floating long-range radar and sonar installation.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 400,
  buildCostMetal                = 320,
  builder                       = false,

  buildPic                      = [[badvsearadartower.png]],
  buildTime                     = 60,
  canAttack                     = false,
  category                      = [[FLOAT]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyUse                     = 3,
  explodeAs                     = [[SMALL_BUILDING]],
  footprintX                    = 4,
  footprintZ                    = 4,
  floater                       = true,
  idleAutoHeal                  = 0,
  isTargetingUpgrade            = false,
  levelGround                   = true,
  mass                          = 250,
  maxangledifl                  = [[1]],
  maxDamage                     = 3000,
  maxSlope                      = 36,
  maxVelocity                   = 0,
  minWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[badvsearadartower.s3o]],

  onoffable                     = true,
  radarDistance                 = 3000,
  sonarDistance                 = 3000,
  seismicSignature              = 4,
  selfDestructAs                = [[SMALL_BUILDING]],
  side                          = [[NKG]],
  sightDistance                 = 400,
  smoothAnim                    = true,

  sounds			= {
      select = {
	"ct/radar_chatter",
	},

      ok = {
	"ct/radar_chatter",
	},
  },

  TEDClass                      = [[SPECIAL]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[oooo oooo oooo ooooo]],
  script                        = [[badvsearadartower.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Advanced Sea Radar Tower]],
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
      metal            = 2250,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Advanced Sea Radar Tower]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 8000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 4,
      footprintZ       = 4,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 2250,
      object           = [[b4x4heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ badvsearadartower = unitDef })
