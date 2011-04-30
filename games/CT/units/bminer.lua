local bminer = {
        name                = [[Engineer Support Mech]],
        description         = [[Utilitarian vehicle able to build structures and mine meteorites for metal.  Unarmed.]],
        acceleration        = 0.06,
        brakerate           = 1.5,
        buildpic            = [[bengineermkii.png]],
        buildCostEnergy     = 100,
        buildCostMetal      = 100,
        buildDistance       = 220,
        builder             = true,

        buildoptions            = {
		[[bsupplydepot]],
                [[bpowerplant]],
		[[badvpowerplant]],
		[[bbeacon]],
--                [[bshipyard]],
--                [[bsubpens]],
                [[bradartower]],
                [[bjammertower]],
                [[bgatlingturret]],
                [[bairturret]],
                [[blandturret]],
--                [[blandnavalturret]],
--                [[bmechturret]],
        },

        buildTime           = 10,
        canAssist           = false,
        canFight            = false,
        canGuard            = true,
        canMove             = true,
        canPatrol           = true,
        canReclaim          = true,
	canStop             = true,
        category            = [[LAND]],
        corpse              = [[DEAD]],
        reclaimable         = false,

	customParams = {
		is_miner=1,	--used by minig: if the unit can mine is_mineable=1 ressources
		max_cargo=25,	--used by mining: how much metal the unit can carry at once before having to return to a drop off
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
        minCloakDistance    = 75,
        movementClass       = [[Engineer2x2]],
        noChaseCategory     = [[LAND SINK HOVER FIXEDWING GUNSHIP SHIP FLOAT SUB]],
        objectName          = "bengineermkii.s3o",
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
                "custom:buildersparks",
            },
        
          },

        smoothAnim          = true,
        terraformSpeed      = 300,
        reclaimSpeed        = 300,
	repairSpeed         = 0.5,
        trackOffset         = 12,
        trackStrength       = 5,
        trackStretch        = 1,
        trackType           = [[StdTank]],
        trackWidth          = 15,
        turnInPlace         = 1,
        turnRate            = 1000,
        showNanospray       = 0,
        workerTime          = 1,
        script              = "bminer.lua",

          weapons             = {
        
            {
              def                = [[Rock_Drill]],
              mainDir            = [[0 0 1]],
              maxAngleDif        = 180,
              onlyTargetCategory = [[MINERALS]],
            },
        
          },
        
        
          weaponDefs          = {
        
            Rock_Drill = {
              name                    = [[Rock Drill]],
              areaOfEffect            = 8,
              avoidFriendly           = 0,
              craterMult              = 0.25,
              accuracy                = 0,
	      collideFriendly         = false,
        
              damage                  = {
                Cruiser = 1,
                Building = 1,
                Mech = 1,
                Tank = 1,
                Aircraft = 1,
                Ship = 1,
                Sub = 1,

		Meteor = 1,
		Drone = 1,
		Spare1 = 1,
		Spare2 = 1,
		Spare3 = 1,
              },
        
              explosionGenerator      = [[custom:resmining]],
              interceptedByShieldType = 1,
	      impulseFactor           = 0,
              lineOfSight             = true,
              range                   = 90,
              reloadtime              = 0.2,
              rgbColor                = [[1 0.95 0.4]],
              separation              = 2,
              size                    = 0.4,
              soundStart              = [[tp/swoosh]],
              soundStartVolume        = 0.5,
              soundTrigger            = true,
              stages                  = 50,
              targetBorder            = 1,
              tolerance               = 8000,
              turret                  = true,
              weaponType              = [[Cannon]],
              weaponVelocity          = 7500,


			},
        
          },

          featureDefs         = {
        
            DEAD  = {
              description      = [[Wreckage - Engineer Support Mech]],
              blocking         = true,
              category         = [[corpses]],
              damage           = 175,
              energy           = 0,
              featureDead      = [[DEAD2]],
              footprintX       = 3,
              footprintZ       = 3,
              metal            = 50,
              object           = [[wrecks/bengineermkiiwreck.s3o]],
              reclaimable      = true,
              reclaimTime      = 1500,
            },
        
        
            DEAD2 = {
              description      = [[Debris - Engineer Support Mech]],
              blocking         = false,
              category         = [[heaps]],
              damage           = 87,
              energy           = 0,
              featurereclamate = [[SMUDGE01]],
              footprintX       = 3,
              footprintZ       = 3,
              metal            = 25,
              object           = [[b3x3heap.s3o]],
              reclaimable      = true,
              reclaimTime      = 750,
            },

          },

        }


return lowerkeys({ ["bminer"] = bminer })