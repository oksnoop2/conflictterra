unitDef = {

  unitname                      = [[badvpowerplant]],
  name                          = [[High Yield Power Plant]],
  description                   = [[Easy to install power station capable of giving a sizeable boost to energy.  Adds +50 energy.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 400,
  buildCostMetal                = 320,
  builder                       = false,

  buildPic                      = [[badvpowerplant.png]],
  buildTime                     = 45,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
     reclaimable                   = false,

  damageModifier                = 0.25,
  energyUse                     = -50,
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

  TEDClass                      = [[ENERGY]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[oooo oooo oooo oooo]],
  script                        = [[badvpowerplant.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Advanced Power Plant]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 2062,
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
      description      = [[Debris - Advanced Power Plant]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 1375,
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



return lowerkeys({ badvpowerplant = unitDef })
