unitDef = {

  unitname                      = [[bnuclearpower]],
  name                          = [[Nuclear Power Plant]],
  description                   = [[Compact nuclear reactor provides power but also explodes upon destruction.  Adds +30 energy.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  brakeRate                     = 0,
  buildCostEnergy               = 1000,
  buildCostMetal                = 1000,
  builder                       = false,

  buildPic                      = [[bnuclearpower.png]],
  buildTime                     = 120,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[64 50 64]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  energyMake                    = 0,
  energyUse                     = -30,
  explodeAs                     = [[VOLATILE_BUILDING]],
  footprintX                    = 4,
  footprintZ                    = 4,
  idleAutoHeal                  = 0,
  mass                          = 500,
  maxDamage                     = 5000,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bnuclearpower.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[VOLATILE_BUILDING]],
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

  yardMap                       = [[oooo oooo oooo oooo]],
  script                        = [[bnuclearpower.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Nuclear Power]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 3750,
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
      description      = [[Debris - Nuclear Power]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 2500,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 4,
      footprintZ       = 4,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 200,
      object           = [[b4x4heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bnuclearpower = unitDef })
