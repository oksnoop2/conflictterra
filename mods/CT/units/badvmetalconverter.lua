unitDef = {

  unitname                      = [[badvmetalconverter]],
  name                          = [[High Yield Material Refinery]],
  description                   = [[Advanced Metal Converter - A more efficient facility to use power to make more usable resources.  Uses 600 energy to make 10 metal.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 2500,
  buildCostMetal                = 2000,
  builder                       = false,

  buildPic                      = [[badvmetalconverter.png]],
  buildTime                     = 240,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[80 50 80]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  DamageModifier                = 0.3,
  energyUse                     = 600,
  energyMake                    = 0,
  metalMake                     = 0,
  metalUse                      = -10,
  explodeAs                     = [[MEDIUM_BUILDING]],
  footprintX                    = 5,
  footprintZ                    = 5,
  idleAutoHeal                  = 0,
  mass                          = 50,
  maxDamage                     = 1375,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[badvmetalconverter.s3o]],

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
  script                        = [[badvmetalconverter.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Advanced Metal Converter]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 1031,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 1031.25,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Advanced Metal Converter]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 687,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 5,
      footprintZ       = 5,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 687.5,
      object           = [[b5x5heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ badvmetalconverter = unitDef })
