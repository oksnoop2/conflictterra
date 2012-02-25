	unitDef = {
	  unitname            = [[pnfieldradar]],
	  name                = [[Radar]],
	  description         = [[raaaaaaadical radar]],
	  acceleration        = 0,
	  brakeRate           = 0,
	  buildCostEnergy     = 100,
	  buildCostMetal      = 100,
	  builder             = false,
	  buildPic            = [[pnfieldradar.png]],
	  buildTime           = 30,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[SINK]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	  radarDistance       =  300,

	  explodeAs           = [[SMALL_BUILDING]],
	  fireState           = 2,
          footprintx          = 2,
	  footprintZ          = 2,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 1300,
	  maxDamage           = 1000,
          maxSlope            = 18,
	  maxVelocity         = 0,
          maxWaterDepth       = 0,
	  minCloakDistance    = 150,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[pnfieldradar.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDING]],
	  side                = [[NKG]],
	  sightDistance       = 450,

	  sounds			= {
	      select = {
		"",
		},

	      ok = {
		"",
		},
	  },

	  smoothAnim          = true,
	  yardMap             = [[ooooo ooooo ooooo ooooo ooooo]],
          --script              = [[pnfieldradar.lua]],
	
	  weapons             = {
        
            {
              def                = [[Rock_Drill]],
              onlyTargetCategory = [[MINERALS]],
            },
        
          },
	
	
	            weaponDefs          = {
        
            Rock_Drill = {
              name                    = [[Rock Drill]],
              areaOfEffect            = 8,
              avoidFriendly           = 0,
	      beamTime                = 0.2,
              craterMult              = 0.25,
              accuracy                = 0,
	      collideFriendly         = false,
	      energypershot           = 0,
        
              damage                  = {
                Cruiser = 1,
                Building = 1,
                Mech = 1,
                Tank = 1,
                Aircraft = 1,
                Ship = 1,
                Sub = 1,
              },
        
              --explosionGenerator      = [[custom:resmining]],
              interceptedByShieldType = 1,
              lineOfSight             = true,
              range                   = 130,
              reloadtime              = 0.2,
              rgbColor                = [[0 1 0]],
              separation              = 2,
	      thickness               = 1,
	      minIntensity            = 1,
              size                    = 0.4,
              soundStart              = [[tp/swoosh]],
              soundStartVolume        = 0.5,
              soundTrigger            = true,
              stages                  = 50,
              targetBorder            = 1,
              tolerance               = 8000,
              turret                  = true,
              weaponType              = [[BeamLaser]],
              weaponVelocity          = 2500,


			},
        
          },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Mining Tower]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 8625,
	      energy           = 0,
		  
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 400,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Mining Tower]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 5750,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 200,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ pnfieldradar = unitDef })
