unitDef = {

  unitname                      = [[ctmeteorimpact_big]],
  name                          = [[Large Meteorite]],
  description                   = [[Contains valuable metal used to construct units. Use a mining unit to extract the metal.]],
  activateWhenBuilt             = true,
  buildCostEnergy               = 1,
  buildCostMetal                = 1,
  builder                       = false,

  iconType                      = "resource",
  buildPic                      = [[bmex.png]],
  buildTime                     = 1,
  canattack                     = [[false]],
  category                      = [[MINERALS]],
--  corpse                        = [[DEAD]],

  customParams = {
    is_mineable                 = 1,  --used by minig: if the unit is a mineable resource
  },

  reclaimable                   = false,
  repairable                    = false,
  energyUse                     = 0,
  explodeAs                     = [[ROCK_MINEDOUT_BIG]],
  extractsMetal                 = 0.000,
  floater                       = false,
  footprintX                    = 6, --was 9
  footprintZ                    = 6, --was 9
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 37.5,
  maxDamage                     = 500,
  maxSlope                      = 255,
  maxWaterDepth                 = 0,
  noAutoFire                    = false,
  objectName                    = [[ctmeteor_impactbig.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[ROCK_MINEDOUT_BIG]],
  side                          = [[NKG]],
  sightDistance                 = 0,

  smoothAnim                    = true,
  turnRate                      = 0,

  waterline                     = 1,
  workerTime                    = 0,
  yardMap                       = [[oooooo oooooo oooooo oooooo oooooo oooooo]],
  script                        = [[ctmeteorimpact_big.lua]],
}

return lowerkeys({ ctmeteorimpact_big = unitDef })
