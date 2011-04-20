unitDef = {

  unitname                      = [[badvpowerplant]],
  name                          = [[High-Tech Power Plant]],
  description                   = [[Easy to install power station capable of giving a good boost to energy.  Adds +15 energy.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  brakeRate                     = 0,
  buildCostEnergy               = 500,
  buildCostMetal                = 500,
  builder                       = false,

  buildPic                      = [[badvpowerplant2.png]],
  buildTime                     = 30,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyUse                     = -15,
  explodeAs                     = [[MEDIUM_BUILDING]],
  footprintX                    = 4,
  footprintZ                    = 4,
  idleAutoHeal                  = 0,
  mass                          = 400,
  maxDamage                     = 2750,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  levelGround                   = false,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[badvpowerplant.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
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

  yardMap                       = [[oooo oooo oooo oooo]],
  script                        = [[badvpowerplant.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - High-Tech Power Plant]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 1375,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 4,
      footprintZ       = 4,
      metal            = 250,
      object           = [[wrecks/badvpowerplantwreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 7500,
    },


    DEAD2 = {
      description      = [[Debris - High-Tech Power Plant]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 687,
      energy           = 0,
      footprintX       = 4,
      footprintZ       = 4,
      metal            = 125,
      object           = [[b4x4heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 3750,
    },


  },



}



return lowerkeys({ badvpowerplant = unitDef })
