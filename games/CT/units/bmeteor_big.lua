unitDef = {

  unitname                      = [[bmeteor_big]],
  name                          = [[Big Meteor]],
  description                   = [[Big Meteor]],
  activateWhenBuilt             = true,
  buildCostEnergy               = 1,
  buildCostMetal                = 1,
  builder                       = false,

  iconType                      = "meteor",
  buildPic                      = [[bmex.png]],
  buildTime                     = 1,
  canattack                     = [[false]],
  category                      = [[MINERALS]],

  reclaimable                   = false,
  repairable                    = false,
  energyUse                     = 0,
  explodeAs                     = [[ROCK_IMPACT_BIG]],
  extractsMetal                 = 0.000,
  floater                       = false,
  footprintX                    = 9,
  footprintZ                    = 9,
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 37.5,
  maxDamage                     = 500,
  maxSlope                      = 255,
  maxWaterDepth                 = 0,
  noAutoFire                    = false,
  objectName                    = [[bmeteor_big.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[ROCK_IMPACTT_BIG]],
  side                          = [[NKG]],
  sightDistance                 = 250,

  smoothAnim                    = true,
  turnRate                      = 0,

  waterline                     = 1,
  workerTime                    = 0,
  yardMap                       = [[ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo]],
  script                        = [[bmeteor_big.lua]],
  customParams = {
  	impactunitname="bmeteorimpact_big",		--used by spacerocks: what the unit will be replaced with on impact
	lolfactor=100,							--how funny this is
	},

}



return lowerkeys({ bmeteor_big = unitDef })
