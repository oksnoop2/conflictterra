unitDef = {
  unitname                      = [[kgrounddronestructure]],
  name                          = [[Ground Drone Structure]],
  description                   = [[This structure produces energy and creates ground Drones.]],
  amphibious                    = false,
  buildCostEnergy               = 400,
  buildCostMetal                = 400,
  builder                       = true,
  buildoptions                  = {
    [[kdroneengineer]],
    [[klightdrone]],    
    [[kdronewarrior]],
    [[kdroneroller]],
    [[ktridroneroller]],
  },
  
  buildPic                      = [[kgrounddronestructure.png]],
  buildTime                     = 45,

  useBuildingGroundDecal        = true,
  buildingGroundDecalType       = "grounddecals/kdronegroundstructuregrounddecal.png",
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
  footprintX                    = 8,
  footprintZ                    = 8,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 2500,
  maxSlope                      = 15,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  noAutoFire                    = false,
  objectName                    = [[kgrounddronestructure.s3o]],
  
  seismicSignature              = 4,
  selfDestructAs                = [[DRONE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[Drone]],
  sightDistance                 = 250,

      sounds            = {
          select = {
        "golgotha/vehicle_done_44khz",
        },
          ok = {
        "golgotha/vehicle_done_44khz",
        },
      },

  smoothAnim                    = true,
  turnRate                      = 0,
  workerTime                    = 1,
  yardMap                       = [[occcccco cccccccc cccccccc cccccccc cccccccc cccccccc cccccccc occcccco]],
  script                        = [[kgrounddronestructure.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Ground Drone Structure]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 1250,
      maxDamage        = 1250,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 8,
      footprintZ       = 8,
      metal            = 200,
      object           = [[wrecks/kdronestructurewreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 6000,
    },


    DEAD2 = {
      description      = [[Debris - Ground Drone Structure]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 625,
      energy           = 0,
      footprintX       = 8,
      footprintZ       = 8,
      metal            = 100,
      object           = [[b8x8heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 3000,
    },


  },



}



return lowerkeys({ kgrounddronestructure = unitDef })
