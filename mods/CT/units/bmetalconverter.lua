unitDef = {

  unitname                      = [[bmetalconverter]],
  name                          = [[Material Refinery]],
  description                   = [[Uses power to convert waste metal back into usable resources.  Uses 60 energy to make 1 metal.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 1000,
  buildCostMetal                = 800,
  builder                       = false,

  buildPic                      = [[bmetalconverter.png]],
  buildTime                     = 120,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[80 50 80]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  DamageModifier                = 0.3,
  energyUse                     = 60,
  energyMake                    = 0,
  metalMake                     = 0,
  metalUse                      = -1,
  explodeAs                     = [[MEDIUM_BUILDING]],
  footprintX                    = 5,
  footprintZ                    = 5,
  idleAutoHeal                  = 0,
  mass                          = 50,
  maxDamage                     = 650,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bmetalconverter.s3o]],

  onoffable                     = true,
  seismicSignature              = 0,
  selfDestructAs                = [[MEDIUM_BUILDING]],
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

  TEDClass                      = [[METAL]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[ooooo ooooo ooooo ooooo ooooo]],
  script                        = [[bmetalconverter.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Metal Converter]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 487,
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
      description      = [[Debris - Metal Converter]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 325,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 5,
      footprintZ       = 5,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 200,
      object           = [[b5x5heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bmetalconverter = unitDef })
