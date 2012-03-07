unitDef = {

  unitname                      = [[bminerals]],
  name                          = [[Meteorite]],
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

  reclaimable                   = false,
  repairable                    = false,
  energyUse                     = 0,
  explodeAs                     = [[ROCK_MINEDOUT]],
  extractsMetal                 = 0.000,
  floater                       = false,
  footprintX                    = 3,
  footprintZ                    = 3,
--  hideDamage                    = true,
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 37.5,
  maxDamage                     = 500,
  maxSlope                      = 255,
  maxWaterDepth                 = 0,
  noAutoFire                    = false,
  objectName                    = [[bmeteor_impact.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[ROCK_MINEDOUT]],
  side                          = [[NKG]],
  sightDistance                 = 0,


  sounds			= {
	      select = {
		"ct/mexthump",
		},
	      ok = {
		"ct/mexthump",
		},
  },

  smoothAnim                    = true,
  turnRate                      = 0,

  waterline                     = 1,
  workerTime                    = 0,
  yardMap                       = [[ooo ooo ooo]],
  script                        = [[bminerals.lua]],
    customParams = {
  	is_mineable=1,		--used by minig: if the unit is a mineable resource
	},
}



return lowerkeys({ bminerals = unitDef })
