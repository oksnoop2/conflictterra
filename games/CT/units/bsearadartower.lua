unitDef = {

  unitname                      = [[bsearadartower]],
  name                          = [[Floating Radar Outpost]],
  description                   = [[Water-bound radar and sonar installation.]],
  amphibious                    = false,
  activateWhenBuilt             = true,
  buildCostEnergy               = 100,
  buildCostMetal                = 80,
  builder                       = false,

  buildPic                      = [[bsearadartower.png]],
  buildTime                     = 25,
  canAttack                     = false,
  category                      = [[FLOAT]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,


  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[16 64 16]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  energyUse                     = 0.8,
  explodeAs                     = [[SMALL_BUILDING]],
  floater                       = true,
  footprintX                    = 1,
  footprintZ                    = 1,
  idleAutoHeal                  = 0,
  isTargetingUpgrade            = false,
  levelGround                   = false,
  mass                          = 27.5,
  maxDamage                     = 500,
  maxSlope                      = 36,
  minWaterDepth                 = 0,
  noAutoFire                    = false,
  objectName                    = [[bsearadartower.s3o]],

  onoffable                     = true,
  radarDistance                 = 1500,
  sonarDistance                 = 1500,
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

  yardMap                       = [[o o]],
  script                        = [[bsearadartower.lua]],

  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Sea Radar Outpost]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 375,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 40,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Sea Radar Outpost]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 250,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 1,
      footprintZ       = 1,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 20,
      object           = [[b1x1heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bsearadartower = unitDef })
