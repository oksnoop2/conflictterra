--Resource Drop Zone (AI) Unit Def by Sanada
--Notes:  Balanced Version 1

unitDef = {

  unitname                      = [[bsupplydepotai]],
  name                          = [[JK-002 Resource Drop Zone (AI)]],
  description                   = [[Drop-off point for mined metal from meteorites.]],
  activateWhenBuilt             = true,
  buildCostEnergy               = 200,
  buildCostMetal                = 200,
  builder                       = false,

  buildPic                      = [[bsupplydepot.png]],
  buildTime                     = 20,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],

  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[96 96 160]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  useBuildingGroundDecal        = false,
  buildingGroundDecalType       = "grounddecals/resourcedropzone.png",
  buildingGroundDecalSizeX      = 20,
  buildingGroundDecalSizeY      = 20,
  buildingGroundDecalDecaySpeed	= 1,

  reclaimable                   = false,

  explodeAs                     = [[MEDIUM_BUILDING]],
  footprintX                    = 6,
  footprintZ                    = 10,
  idleAutoHeal                  = 0,
  levelGround                   = false,
  mass                          = 2000,
  maxDamage                     = 1150,
  maxSlope                      = 18,
  maxWaterDepth                 = 0,
  extractsMetal                 = 0.000,
  noAutoFire                    = false,
  objectName                    = [[bsupplydepot.s3o]],
  seismicSignature              = 4,
  selfDestructAs                = [[MEDIUM_BUILDING]],
  side                          = [[NKG]],
  sightDistance                 = 300,

  sounds			= {
      select = {
	"ct/generator_chatter",
	},
      ok = {
	"ct/generator_chatter",
	},
  },
  
  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_buildlight_green",
		"custom:ct_buildlight_red",
		"custom:ct_damage_fire",
	    },
	
  }, 

  smoothAnim                    = true,

  yardMap                       = [[cooooc cooooc cooooc cooooc cooooc cooooc cooooc cooooc cooooc cooooc]],
  script                        = [[bsupplydepot.lua]],




  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Resource Drop Zone(AI)]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 575,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 6,
      footprintZ       = 6,
      mass             = 2000,
      metal            = 100,
      object           = [[wrecks/bsupplydepotwreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 3000,
    },


    DEAD2 = {
      description      = [[Debris - Resource Drop Zone(AI)]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 287,
      energy           = 0,
      footprintX       = 6,
      footprintZ       = 6,
      mass             = 750,
      metal            = 50,
      object           = [[b6x6heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 1500,
    },


  },



}



return lowerkeys({ bsupplydepotai = unitDef })
