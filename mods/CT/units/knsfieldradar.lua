unitDef = {

  unitname                      = [[knsfieldradar]],
  name                          = [[Floating Radar Outpost]],
  description                   = [[Sea Radar Outpost - Temporary floating radar and sonar installation.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 100,
  buildCostMetal                = 100,
  builder                       = false,

  buildPic                      = [[knsfieldradar.png]],
  buildTime                     = 25,
  canAttack                     = false,
  category                      = [[FLOAT]],
  corpse                        = [[DEAD]],
  reclaimable         = false,


  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[16 64 16]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  energyUse                     = 0.8,
  explodeAs                     = [[SMALL_BUILDINGEX]],
  floater                       = true,
  footprintX                    = 1,
  footprintZ                    = 1,
  idleAutoHeal                  = 0,
  isTargetingUpgrade            = false,
  levelGround                   = false,
  mass                          = 27.5,
  maxangledifl                  = [[1]],
  maxDamage                     = 500,
  maxSlope                      = 36,
  maxVelocity                   = 0,
  minWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[knsfieldradar.s3o]],

  onoffable                     = true,
  radarDistance                 = 1500,
  sonarDistance                 = 1500,
  seismicSignature              = 4,
  selfDestructAs                = [[SMALL_BUILDINGEX]],
  side                          = [[NKG]],
  sightDistance                 = 800,
  smoothAnim                    = true,
  TEDClass                      = [[SPECIAL]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[o o]],
  script                        = [[knsfieldradar.lua]],

  sounds			= {
      select = {
	"ct/chatter2",
	},
  },



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Sea Radar Outpost]],
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
      description      = [[Debris - Sea Radar Outpost]],
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



return lowerkeys({ knsfieldradar = unitDef })
