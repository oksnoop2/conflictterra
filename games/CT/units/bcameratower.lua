unitDef = {

  unitname                      = [[bcameratower]],
  name                          = [[Camera Tower]],
  description                   = [[Temporary line of sight outpost. Stealth and cloaked. Self-destructs after 60 seconds.]],
  amphibious                    = false,
  activateWhenBuilt             = true,
  buildCostEnergy               = 5,
  buildCostMetal                = 5,
  builder                       = false,

  buildPic                      = [[bcameratower.png]],
  buildTime                     = 2,
  canAttack                     = false,
  category                      = [[SINK]],
  reclaimable                   = false,

  cloakCost                     = 0,
  cloakCostMoving               = 0,
  initCloaked                   = true,

  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[16 64 16]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  energyUse                     = 0,
  explodeAs                     = [[CAMERA_EXPLOSION]],
  footprintX                    = 1,
  footprintZ                    = 1,
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 27.5,
  maxDamage                     = 100,
  maxSlope                      = 36,
  maxWaterDepth                 = 0,
  minCloakDistance              = 160,
  noAutoFire                    = false,
  objectName                    = [[bcameratower.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[CAMERA_EXPLOSION]],
  side                          = [[NKG]],
  sightDistance                 = 500,
  smoothAnim                    = true,
  stealth                       = true,
  yardMap                       = [[o o]],
  script                        = [[bcameratower.lua]],

  sounds			= {
      select = {
	"ct/radar_chatter",
	},

      ok = {
	"ct/radar_chatter",
	},
  },



}



return lowerkeys({ bcameratower = unitDef })
