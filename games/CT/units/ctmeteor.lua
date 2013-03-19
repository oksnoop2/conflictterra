unitDef = {
  unitname                      = [[ctmeteor]],
  name                          = [[Meteor]],
  description                   = [[Meteor]],
  activateWhenBuilt             = true,
  buildCostEnergy               = 1,
  buildCostMetal                = 1,
  iconType                      = "meteor",
  builder                       = false,
  buildPic                      = [[bmex.png]],
  buildTime                     = 1,
  canattack                     = [[false]],
  category                      = [[MINERALS]],

  customParams = {
  	impactunitname              = "ctmeteorimpact",  --used by spacerocks: what the unit will be replaced with on impact
	lolfactor                   = 100,  --how funny this is
  },
  
  reclaimable                   = false,
  repairable                    = false,
  energyUse                     = 0,
  explodeAs                     = [[ROCK_IMPACT_SMALL]],
  extractsMetal                 = 0.000,
  floater                       = false,
  footprintX                    = 3,
  footprintZ                    = 3,
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 37.5,
  maxDamage                     = 500,
  maxSlope                      = 255,
  maxWaterDepth                 = 0,
  noAutoFire                    = false,
  objectName                    = [[ctmeteor.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[ROCK_IMPACT_SMALL]],
  side                          = [[NKG]],
  sightDistance                 = 250,

  smoothAnim                    = true,
  turnRate                      = 0,

  waterline                     = 1,
  workerTime                    = 0,
  yardMap                       = [[ooo ooo ooo]],
  script                        = [[ctmeteor.lua]],

}



return lowerkeys({ ctmeteor = unitDef })
