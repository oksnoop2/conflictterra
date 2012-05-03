    unitDef = {
      unitname            = [[kdronebigminingtower]],
      name                = [[Drone Mining Tower]],
      description         = [[A tower for mining metal from meteorites.  Can Transform into a Drone Builder.]],
      buildCostEnergy     = 300,
      buildCostMetal      = 300,
      builder             = false,
      buildPic            = [[kdroneminingtower.png]],
      buildTime           = 60,
      canAttack           = true,
      canStop             = true,
      category            = [[SINK]],
      corpse              = [[DEAD]],

      collisionVolumeOffsets = [[0 0 0]],
      collisionVolumeScales  = [[48 100 48]],
      collisionVolumeTest    = 1,
      collisionVolumeType    = [[box]],

      useBuildingGroundDecal    = true,
      buildingGroundDecalType   = "grounddecals/kdronemininggrounddecal.png",
      buildingGroundDecalSizeX  = 5,
      buildingGroundDecalSizeY  = 5,
      buildingGroundDecalDecaySpeed = 0.1,

      reclaimable         = false,
      radarDistance       = 300,
      damageModifier      = 0.25,
      energyMake          = 3,
      explodeAs           = [[DRONE_BUILDING]],
      noAutoFire          = true, --inhibits a fire state button being formed and makes it always fire
      fireState           = 2,
      footprintx          = 6,
      footprintZ          = 6,
      idleAutoHeal        = 0,
      levelGround         = false,
      mass                = 1300,
      maxDamage           = 3000,
      maxSlope            = 18,
      maxWaterDepth       = 0,
      noChaseCategory     = [[LAND SINK HOVER SHIP FLOAT FIXEDWING GUNSHIP CRUISER SUB]],
      objectName          = [[kdronebigminingtower.s3o]],
      seismicSignature    = 4,
      selfDestructAs      = [[DRONE_BUILDING]],
      side                = [[DRONE]],
      sightDistance       = 2000,

      sfxtypes            = {
        explosiongenerators = {
        "custom:ct_mininglaser_blue", --not used
        },
      },

      sounds            = {
          select = {
        "",
        },
          ok = {
        "",
        },
      },

      smoothAnim          = true,
      yardMap             = [[ooooo ooooo ooooo ooooo ooooo]],
      script              = [[kdronebigminingtower.lua]],
    
      weapons             = {
        
            {
              def                = [[Rock_Laser]],
              onlyTargetCategory = [[MINERALS]],
            },
        
          },
    
    
      weaponDefs          = {
        
            Rock_Laser = {
              name                    = [[Rock Laser]],
              areaOfEffect            = 8,
              avoidFeature            = false,
              avoidFriendly           = false,
              craterMult              = 0.25,
              accuracy                = 0,
              collideFriendly         = false,
        
              damage                  = {
                default = 0,
                Cruiser = 0,
                Building = 0,
                Land = 0,
                Aircraft = 0,
                Ship = 0,
                Sub = 0,

                Meteor = 4,
                Drone = 0,
                Spare1 = 0,
                Spare2 = 0,
                Spare3 = 0,
              },
        
              explosionGenerator      = [[custom:resmining_green]],
              interceptedByShieldType = 1,
              impulseFactor           = 0,
              lineOfSight             = true,
              range                   = 1700,
              reloadtime              = 0.3,
              rgbColor                = [[0 1 0.4]],
              separation              = 2,
              size                    = 1,
              soundStart              = [[tp/swoosh]],
              soundStartVolume        = 0.5,
              soundTrigger            = true,
              stages                  = 50,
              targetBorder            = 1,
              tolerance               = 8000,
              turret                  = true,
              weaponType              = [[BeamLaser]],
              weaponVelocity          = 7500,


            },
        
      },
    
    
      featureDefs         = {
    
        DEAD  = {
          description      = [[Wreckage - Drone Mining Tower]],
          blocking         = true,
          category         = [[corpses]],
          damage           = 500,
          energy           = 0,
          featureDead      = [[DEAD2]],
          footprintX       = 3,
          footprintZ       = 3,
          metal            = 50,
          object           = [[wrecks/kdroneminingtowerwreck.s3o]],
          reclaimable      = true,
          reclaimTime      = 1500,
        },
    
    
        DEAD2 = {
          description      = [[Debris - Drone Mining Tower]],
          blocking         = false,
          category         = [[heaps]],
          damage           = 250,
          energy           = 0,
          footprintX       = 5,
          footprintZ       = 5,
          metal            = 25,
          object           = [[b8x8heap.s3o]],
          reclaimable      = true,
          reclaimTime      = 750,
        },
    
      },
    
    }
    
    return lowerkeys({ kdronebigminingtower = unitDef })
