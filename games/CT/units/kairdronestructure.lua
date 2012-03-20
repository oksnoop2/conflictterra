unitDef = {

  unitname                      = [[kairdronestructure]],
  name                          = [[Air Drone Structure]],
  description                   = [[This structure produces energy and creates flying Drones.]],
  amphibious                    = false,
  buildCostEnergy               = 400,
  buildCostMetal                = 400,
  builder                       = true,
  buildoptions                  = {
	[[kairdrone]],
	[[kdiairdrone]],
	[[ktriairdrone]],
  },
  
  buildPic                      = [[kairdronestructure.png]],
  buildTime                     = 45,

  useBuildingGroundDecal        = true,
  buildingGroundDecalType       = "grounddecals/kdroneairstructuregrounddecal.png",
  buildingGroundDecalSizeX      = 10,
  buildingGroundDecalSizeY      = 10,
  buildingGroundDecalDecaySpeed = 0.1,

  canMove                       = true,
  canPatrol                     = true,
  canStop                       = true,
  canBeAssisted                 = false,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,
  energyMake                    = 20,
  energyUse                     = 0,
  explodeAs                     = [[DRONE_BUILDING]],
  footprintX                    = 7,
  footprintZ                    = 7,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 2500,
  maxSlope                      = 15,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  noAutoFire                    = false,
  objectName                    = [[kairdronestructure.s3o]],
  
  seismicSignature              = 4,
  selfDestructAs                = [[DRONE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[Drone]],
  sightDistance                 = 250,

  sounds			= {
      select = {
	"golgotha/vehicle_done_44khz",
	},
      ok = {
	"golgotha/vehicle_done_44khz",
	},
  },

  smoothAnim                    = true,
  workerTime                    = 1,
  yardMap                       = [[c]],
  script                        = [[kairdronestructure.lua]],

  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Drone Air Structure]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 1250,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 7,
      footprintZ       = 7,
      metal            = 200,
      object           = [[wrecks/kairdronefactorywreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 60000,
    },

    DEAD2 = {
      description      = [[Debris - Drone Air Structure]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 625,
      energy           = 0,
      footprintX       = 7,
      footprintZ       = 7,
      metal            = 100,
      object           = [[b7x7heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 30000,
    },
  },
}

return lowerkeys({ kairdronestructure = unitDef })