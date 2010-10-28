unitDef = {

  unitname                      = [[bmeteor_big]],
  name                          = [[Big Meteor]],
  description                   = [[Big Meteor]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 1,
  buildCostMetal                = 1,
  builder                       = false,

  iconType           		  = "meteor",
  buildPic                      = [[bmex.png]],
  buildTime                     = 1,
  canattack                     = [[false]],
  category                      = [[MINERALS]],
  corpse                        = [[DEAD]],

  reclaimable                   = false,
  repairable			= false,
  energyUse                     = 0,
  explodeAs                     = [[ROCK_MINEDOUT_BIG]],
  extractsMetal                 = 0.000,
  floater                       = false,
  footprintX                    = 9,
  footprintZ                    = 9,
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 37.5,
  maxDamage                     = 500,
  maxSlope                      = 255,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bmeteor_big.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[ROCK_MINEDOUT_BIG]],
  side                          = [[NKG]],
  sightDistance                 = 250,

  smoothAnim                    = true,
  TEDClass                      = [[METAL]],
  turnRate                      = 0,

  waterline                     = 1,
  workerTime                    = 0,
  yardMap                       = [[ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo]],
  script                        = [[bmeteor.lua]],
  customParams = {
  	impactunitname="bmeteorimpact_big",		--used by spacerocks: what the unit will be replaced with on impact
	lolfactor=100,							--how funny this is
	},

  featureDefs                   = {

    DEAD  = {
      description      = [[this mineral is mined out.]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 10,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 30,
      object           = [[b3x3heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[this mined mineral is totally crushed dude!]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 2250,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 15,
      object           = [[b3x3heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bmeteor_big = unitDef })
