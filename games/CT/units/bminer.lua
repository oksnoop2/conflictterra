local bminer = {
        name                = [[Engineer Support Mech]],
        description         = [[Utilitarian vehicle able to build structures and mine meteorites for metal.  Unarmed.]],
        acceleration        = 0.06,
        brakerate           = 1.5,
        buildpic            = [[bengineermkii.png]],
        buildCostEnergy     = 140,
        buildCostMetal      = 112,
        buildDistance       = 220,
        builder             = true,

        buildoptions            = {
		[[bsupplydepot]],
                [[bpowerplant]],
                [[bnuclearpower]],
                [[bsupportfactory]],
		[[bbeacon]],
                [[bshipyard]],
                [[bsubpens]],
                [[bradartower]],
                [[bjammertower]],
                [[blandturret]],
                [[bairturret]],
                [[blandnavalturret]],
                [[bgatlingturret]],
                [[bmechturret]],
        },

        buildTime           = 15,
        canAssist           = false,
        canFight            = false,
        canGuard            = true,
        canMove             = true,
        canPatrol           = true,
        canReclaim          = true,
        canstop             = [[1]],
        category            = [[LAND]],
        corpse              = [[DEAD]],
        reclaimable         = false,

        defaultmissiontype  = [[Standby]],
        energyMake          = 0.25,
        explodeAs           = [[SMALL_UNIT]],
        footprintx          = 2,
        footprintZ          = 2,
        idleAutoHeal        = 0,
        leaveTracks         = true,
        maneuverleashlength = [[640]],
        mass                = 70,
        maxDamage           = 350,
        maxSlope            = 36,
        maxVelocity         = 2,
        maxWaterDepth       = 22,
        metalMake           = 0,
        minCloakDistance    = 75,
        movementClass       = [[Engineer]],
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

        smoothAnim          = false,--true,
        steeringmode        = [[1]],
        TEDClass            = [[TANK]],
        terraformSpeed      = 300,
        reclaimSpeed        = 300,
        trackOffset         = 12,
        trackStrength       = 5,
        trackStretch        = 1,
        trackType           = [[StdTank]],
        trackWidth          = 15,
        turninplace         = 1,
        turnInPlace         = 1,
        turnRate            = 1120,
        showNanospray       = 0,
        workerTime          = 1,
        script              = "bminer.lua",
		customParams = {
		is_miner=1,		--used by minig: if the unit can mine is_mineable=1 ressources
		max_cargo=25,	--used by mining: how much metal the unit can carry at once before having to return to a drop off
		},
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
              craterMult              = 0.25,
              accuracy                = 200,
	      collideFriendly         = false,
        
              damage                  = {
                Cruiser = 1,
                Building = 15,
                Mech = 1,
                Tank = 1,
                Aircraft = 1,
                Ship = 1,
                Sub = 1,
              },
        
              explosionGenerator      = [[custom:resmining]], -- [[custom:FLAK_BURST_Expl]],
              interceptedByShieldType = 1,
              lineOfSight             = true,
              range                   = 90,
              reloadtime              = 0.2,
              rgbColor                = [[1 0.95 0.4]],
              separation              = 2,
              size                    = 0.4, --was 1.25
              soundStart              = [[ct/machine_gun]],
              soundStartVolume        = 0.5,
              soundTrigger            = true,
              stages                  = 50,
              sprayAngle              = 1180,
              tolerance               = 8000,
              turret                  = true,
              weaponType              = [[Cannon]],
              weaponVelocity          = 750,
              targetBorder=1,
              avoidFriendly=0,
			},
        
          },

          featureDefs         = {
        
            DEAD  = {
              description      = [[Wreckage - Engineer]],
              blocking         = true,
              category         = [[corpses]],
              damage           = 262,
              energy           = 0,
              featureDead      = [[DEAD2]],
              featurereclamate = [[SMUDGE01]],
              footprintX       = 3,
              footprintZ       = 3,
              height           = [[20]],
              hitdensity       = [[100]],
              metal            = 56,
              object           = [[bgenericwreckage.s3o]],
              reclaimable      = true,
              reclaimTime      = 70,
              seqnamereclamate = [[TREE1RECLAMATE]],
              world            = [[All Worlds]],
            },
        
        
            DEAD2 = {
              description      = [[Debris - Engineer]],
              blocking         = false,
              category         = [[heaps]],
              damage           = 175,
              energy           = 0,
              featurereclamate = [[SMUDGE01]],
              footprintX       = 2,
              footprintZ       = 2,
              height           = [[4]],
              hitdensity       = [[100]],
              metal            = 28,
              object           = [[b2x2heap.s3o]],
              reclaimable      = true,
              reclaimTime      = 70,
              seqnamereclamate = [[TREE1RECLAMATE]],
              world            = [[All Worlds]],
            },

          },

        }


return lowerkeys({ ["bminer"] = bminer })