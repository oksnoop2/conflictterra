unitDef = {

  unitname                      = [[kfieldradar]],
  name                          = [[Radar Outpost]],
  description                   = [[Radar Outpost - Temporary radar installation.  Provides a steady, but close-reaching, range of radar.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 100,
  buildCostMetal                = 100,
  builder                       = false,

  buildPic                      = [[kfieldradar.png]],
  buildTime                     = 25,
  canAttack                     = false,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyUse                     = 0.8,
  explodeAs                     = [[SMALL_BUILDINGEX]],
  footprintX                    = 3,
  footprintZ                    = 3,
  idleAutoHeal                  = 0,
  isTargetingUpgrade            = false,
  levelGround                   = false,
  mass                          = 27.5,
  maxangledifl                  = [[1]],
  maxDamage                     = 500,
  maxSlope                      = 36,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[kfieldradar.s3o]],

  onoffable                     = true,
  radarDistance                 = 1500,
  seismicSignature              = 4,
  selfDestructAs                = [[SMALL_BUILDINGEX]],
  side                          = [[NKG]],
  sightDistance                 = 800,
  smoothAnim                    = true,
  TEDClass                      = [[SPECIAL]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[ooo ooo ooo]],
  script                        = [[kfieldradar.lua]],

  sounds			= {
      select = {
	"ct/chatter2",
	},
  },



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Radar Outpost]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 8000,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 275,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Radar Outpost]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 8000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 1,
      footprintZ       = 1,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 275,
      object           = [[b1x1heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ kfieldradar = unitDef })
