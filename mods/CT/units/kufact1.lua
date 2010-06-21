unitDef = {

  unitname                      = [[kufact1]],
  name                          = [[Terrestrial Tank Factory]],
  description                   = [[Produces tanks and combat vehicles.]],
  acceleration                  = 0,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 550,
  buildCostMetal                = 550,
  builder                       = true,

  buildoptions                  = {

	[[hunch]],

	[[krbomb]],
	[[kstealthtank]],
	[[kartillerybot]],
	[[kamphmech]],
	[[kadvmobileaa]],
	[[kjjantitank]],
	[[khtank]],
  },



  buildPic                      = [[kufact1.png]],
  buildTime                     = 550,
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  category                      = [[SINK UNARMED]],
  collisionVolumeOffsets = [[0 8 0]],
  collisionVolumeScales  = [[224 112 224]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[box]],
  corpse                        = [[DEAD]],
  reclaimable         = false,

  energyMake                    = 0.15,
  energyUse                     = 0,
  digger                        = [[1]],
  explodeAs                     = [[LARGE_BUILDINGEX]],
  footprintX                    = 14,
  footprintZ                    = 14,
  iconType                      = [[facvehicle]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  mass                          = 275,
  maxDamage                     = 4000,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  metalMake                     = 0.15,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[kufact1.s3o]],

  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDINGEX]],
  showNanoSpray                 = false,
  side                          = [[PN]],
  sightDistance                 = 273,
  smoothAnim                    = true,
  sortbias                      = [[0]],
  TEDClass                      = [[PLANT]],
  turnRate                      = 0,
  workerTime                    = 6,
  yardMap                       = [[oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo oooccccccccooo]],
  script                        = [[kufact1.lua]],



--  featureDefs                   = {
--
--    DEAD  = {
--      description      = [[Wreckage - Airplane Plant]],
--      blocking         = true,
--      category         = [[corpses]],
--      damage           = 8000,
--      energy           = 0,
--      featureDead      = [[DEAD2]],
--      featurereclamate = [[SMUDGE01]],
--      footprintX       = 7,
--      footprintZ       = 6,
--      height           = [[40]],
--      hitdensity       = [[100]],
--      metal            = 275,
--      object           = [[ARMAP_DEAD]],
--      reclaimable      = true,
--      reclaimTime      = 275,
--      seqnamereclamate = [[TREE1RECLAMATE]],
--      world            = [[All Worlds]],
--    },


--    DEAD2 = {
--      description      = [[Debris - Airplane Plant]],
--      blocking         = false,
--      category         = [[heaps]],
--      damage           = 8000,
--      energy           = 0,
--      featureDead      = [[HEAP]],
--      featurereclamate = [[SMUDGE01]],
--      footprintX       = 6,
--      footprintZ       = 6,
--      height           = [[4]],
--      hitdensity       = [[100]],
--      metal            = 275,
--      object           = [[debris4x4c.s3o]],
--      reclaimable      = true,
--      reclaimTime      = 275,
--      seqnamereclamate = [[TREE1RECLAMATE]],
--      world            = [[All Worlds]],

--    },





--    HEAP  = {
--      description      = [[Debris - Airplane Plant]],
--      blocking         = false,
--      category         = [[heaps]],
--      damage           = 8000,
--      energy           = 0,
--      featurereclamate = [[SMUDGE01]],
--      footprintX       = 6,
--      footprintZ       = 6,
--      height           = [[4]],
--      hitdensity       = [[100]],
--      metal            = 137.5,
--      object           = [[debris4x4c.s3o]],
--      reclaimable      = true,
--      reclaimTime      = 137.5,
--      seqnamereclamate = [[TREE1RECLAMATE]],
--      world            = [[All Worlds]],
--    },



--  },



}



return lowerkeys({ kufact1 = unitDef })
