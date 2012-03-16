local bengineerai = {
        name                = [[Construction Mech (AI)]],
        description         = [[Utilitarian half-mech able to build structures. Unarmed.]],
        acceleration        = 1,
        brakerate           = 0.1,
        buildpic            = [[bengineermkii.png]],
        buildCostEnergy     = 50, --100
        buildCostMetal      = 50, --100
        buildDistance       = 220,
        builder             = true,

        buildoptions            = {
		[[bsupplydepot]],
		[[bpowerplant]],
		[[badvpowerplant]],
		[[bbeacon]],
		[[bmechcruiserfactory]],
		[[btankcruiserfactory]],
		[[baircruiserfactory]],
		-- [[bshipyard]],
		[[bradartower]],
		[[bjammertower]],
		[[bgatlingturret]],
		[[bairturret]],
		[[blandturret]],
		-- [[blandnavalturret]],
		[[badvgatlingturret]],
		[[badvairturret]],
		[[badvlandturret]],
		-- [[badvlandnavalturret]],		
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

        energyMake          = 0,
        explodeAs           = [[SMALL_UNIT]],
        footprintx          = 3,
        footprintZ          = 3,
        idleAutoHeal        = 0,
        leaveTracks         = true,
        mass                = 70,
        maxDamage           = 350,
        maxSlope            = 36,
        maxVelocity         = 2,
        maxWaterDepth       = 22,
        metalMake           = 0,
        movementClass       = [[Engineer3x3]],
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
                "custom:ct_weldingsparks",
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
        trackWidth          = 22,
		
        turnInPlace         = 1,
        turnRate            = 1000,
        showNanospray       = 0,
        workerTime          = 1,
        script              = "bengineermkii.lua",

          featureDefs         = {
        
            DEAD  = {
              description      = [[Wreckage - Construction Mech]],
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
              description      = [[Debris - Construction Mech]],
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


return lowerkeys({ ["bengineerai"] = bengineerai })