unitDef = {

  unitname                      = [[badvsearadartower]],
  name                          = [[Long Range Floating Radar Tower]],
  description                   = [[A floating long-range radar and sonar installation.]],
  amphibious                    = false,
  activateWhenBuilt             = true,
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
  maxDamage                     = 3000,
  maxSlope                      = 36,
  minWaterDepth                 = 0,
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

  yardMap                       = [[oooo oooo oooo ooooo]],
  script                        = [[badvsearadartower.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Advanced Sea Radar Tower]],
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
      description      = [[Debris - Advanced Sea Radar Tower]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 1500,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 4,
      footprintZ       = 4,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 80,
      object           = [[b4x4heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ badvsearadartower = unitDef })
