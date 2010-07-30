unitDef = {
  unitname               = [[terraunit]],
  name                   = [[Terraform]],
  description            = [[Spent: 0]],
  acceleration           = 0,
  brakeRate              = 0,
  buildCostEnergy        = 1000000, -- change to change E:BT ratio
  buildCostMetal         = 1000000, -- change to change M:BT ratio
  builder                = false,
  buildPic               = [[]], -- needs no buildpic
  buildTime              = 1000000, -- do not change BT
  canAttack              = false,
  capturable             = false,
  category               = [[TERRAFORM]], -- set all units to not target this catergory
  collisionVolumeOffsets = [[0 -300 0]], -- do not mess with volume offsets, these are required to fix blocking and decloak radius.
  collisionVolumeScales  = [[32 32 32]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[box]],

  customParams           = {
    --dontCount      = [[1]], for use with does not count gadget
    mobilebuilding = [[1]], -- Required for terra gadget.
	-- Mobile building in any custom param will make terra ignore the existance of that building
  },

  footprintX             = 2,
  footprintZ             = 2,
  idleAutoHeal           = 0,
  idleTime               = 1800,
  isFeature              = false,
  levelGround            = false,
  mass                   = 500000,
  maxDamage              = 1000000,
  maxSlope               = 255,
  maxVelocity            = 0,
  minCloakDistance       = 0,
  objectName             = [[kcommander.s3o]],
  reclaimable            = false,
  seismicSignature       = 4,
  selfDestructCountdown  = 1,
  side                   = [[ARM]],
  sightDistance          = 0,
  stealth                = true,
  turnRate               = 0,
  upright                = false,
  workerTime             = 0,
  yardMap                = [[yyyy]], -- empty yardmap
}

return lowerkeys({ terraunit = unitDef })
