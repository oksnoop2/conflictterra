local bminer = {
        name                = [[Mining Truck]],
        description         = [[Mining vehicle whose single role is to mine metal from meteorites.]],
        acceleration        = 1,
        brakerate           = 0.1,
        buildpic            = [[bminer.png]],
        buildCostEnergy     = 50, --100
        buildCostMetal      = 50, --100
        builder             = false,
        buildTime           = 10,

        canFight            = false,
        canGuard            = true,
        canMove             = true,
        canPatrol           = true,
        canStop             = true,
        category            = [[LAND]],
        corpse              = [[DEAD]],
        reclaimable         = false,

        customParams = {
          is_miner=1,   --used by minig: if the unit can mine is_mineable=1 ressources
          max_cargo=25, --used by mining: how much metal the unit can carry at once before having to return to a drop off
        },

        energyMake          = 0,
        explodeAs           = [[SMALL_UNIT]],
        footprintx          = 2,
        footprintZ          = 2,
        idleAutoHeal        = 0,
        leaveTracks         = true,
        mass                = 70,
        maxDamage           = 350,
        maxSlope            = 36,
        maxVelocity         = 2,
        maxWaterDepth       = 22,
        metalMake           = 0,
        movementClass       = [[Engineer2x2]],
        noChaseCategory     = [[LAND SINK HOVER FIXEDWING GUNSHIP CRUISER SHIP FLOAT SUB]],
        objectName          = "bminer.s3o",
        onoffable           = false,
        seismicSignature    = 4,
        selfDestructAs      = [[SMALL_UNIT]],
        side                = [[NKG]],
        sightDistance       = 500,

          sounds                        = {
              select = {
                "golgotha/vehicle_done_44khz",
                },
              ok = {
                "golgotha/vehicle_done_44khz",
                },
          },

          sfxtypes            = {
        
            explosiongenerators = {
                "custom:ct_mininglaser_blue",
            },
        
          },

        smoothAnim          = true,
        
        trackOffset         = 12,
        trackStrength       = 5,
        trackStretch        = 1,
        trackType           = [[StdTank]],
        trackWidth          = 20,
        
        turnInPlace         = 1,
        turnRate            = 1000,
        script              = "bminer.lua",

          weapons             = {
        
            {
              def                = [[Mining_Laser]],
              mainDir            = [[0 0 1]],
              maxAngleDif        = 180,
              onlyTargetCategory = [[MINERALS]],
            },
        
          },
        
        
          weaponDefs          = {
        
            Mining_Laser = {
              name                    = [[Mining Laser]],
              areaOfEffect            = 8,
              avoidFeature            = false,
              avoidFriendly           = false,
              craterMult              = 0.25,
              accuracy                = 0,
              collideFriendly         = false,
        
              damage                  = {
                --Mining
                Cruiser = 0,
                Building = 0,
                Land = 0,
                Aircraft = 0,
                Ship = 0,
                Sub = 0,

                Meteor = 1,
                Drone = 0,
                Spare1 = 0,
                Spare2 = 0,
                Spare3 = 0,
              },
        
              explosionGenerator      = [[custom:resmining_red]],
              interceptedByShieldType = 1,
              impulseFactor           = 0,
              lineOfSight             = true,
              range                   = 100,
              reloadtime              = 0.1,
              rgbColor                = [[1 .1 0]],
              separation              = 2,
              size                    = 0.05,
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
              description      = [[Wreckage - Mining Truck]],
              blocking         = true,
              category         = [[corpses]],
              damage           = 175,
              energy           = 0,
              featureDead      = [[DEAD2]],
              footprintX       = 2,
              footprintZ       = 2,
              metal            = 50,
              object           = [[wrecks/bminerwreck.s3o]],
              reclaimable      = true,
              reclaimTime      = 1500,
            },
        
        
            DEAD2 = {
              description      = [[Debris - Mining Truck]],
              blocking         = false,
              category         = [[heaps]],
              damage           = 87,
              energy           = 0,
              featurereclamate = [[SMUDGE01]],
              footprintX       = 2,
              footprintZ       = 2,
              metal            = 25,
              object           = [[b3x3heap.s3o]],
              reclaimable      = true,
              reclaimTime      = 750,
            },

          },

        }


return lowerkeys({ ["bminer"] = bminer })
