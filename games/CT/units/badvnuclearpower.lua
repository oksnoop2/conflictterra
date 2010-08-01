unitDef = {

  unitname                      = [[badvnuclearpower]],
  name                          = [[Very High Yield Power Plant]],
  description                   = [[Very advanced reactor that has a large explosion on destruction.  Adds +225 energy.]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 3000,
  buildCostMetal                = 2400,
  builder                       = false,

  buildPic                      = [[badvnuclearpower.png]],
  buildTime                     = 180,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
   reclaimable                   = false,

  collisionVolumeOffsets        = [[0 7 0]],
  collisionVolumeScales         = [[80 150 80]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  damageModifier                = 0.95,
  energyMake                    = 0,
  energyUse                     = -225,
  explodeAs                     = [[VOLATILE_BUILDING]],
  footprintX                    = 5,
  footprintZ                    = 5,
  idleAutoHeal                  = 0,
  mass                          = 2000,
  maxDamage                     = 7500,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[badvnuclearpower.s3o]],

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

  TEDClass                      = [[ENERGY]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[ooooo ooooo ooooo ooooo ooooo]],
  script                        = [[badvnuclearpower.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Advanced Nuclear Power]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 5625,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 1200,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Advanced Nuclear Power]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 3750,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 5,
      footprintZ       = 5,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 600,
      object           = [[b5x5heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ badvnuclearpower = unitDef })