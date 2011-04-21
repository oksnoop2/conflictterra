	unitDef = {
	  unitname            = [[kdroneminingtower]],
	  name                = [[Drone Mining Tower]],
	  description         = [[A tower for Mining.]],
	  acceleration        = 0,
	  brakeRate           = 0,
	  buildCostEnergy     = 100,
	  buildCostMetal      = 100,
	  builder             = false,
	  buildPic            = [[kdroneminingtower.png]],
	  buildTime           = 30,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[SINK]],
	  corpse              = [[DEAD]],

          collisionVolumeOffsets = [[0 0 0]],
          collisionVolumeScales  = [[48 100 48]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],

	  reclaimable         = false,
	  radarDistance       =  300,
	  damageModifier      = 0.25,
	      energyMake          = 1,
	  explodeAs           = [[SMALL_BUILDING]],
	  fireState           = 2,
          footprintx          = 3,
	  footprintZ          = 3,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 1300,
	  maxDamage           = 1000,
          maxSlope            = 18,
	  maxVelocity         = 0,
          maxWaterDepth       = 0,
	  minCloakDistance    = 150,
	  noAutoFire          = false,
	  noChaseCategory     = [[LAND SINK HOVER SHIP FLOAT FIXEDWING GUNSHIP SUB]],
	  objectName          = [[kdroneminingtower.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDING]],
	  side                = [[NKG]],
	  sightDistance       = 450,

	  sounds			= {
	      select = {
		"evolutionRTS/turretselect",
		},

	      ok = {
		"evolutionRTS/turretselect",
		},
	  },

	  smoothAnim          = true,
	  yardMap             = [[ooooo ooooo ooooo ooooo ooooo]],
          script              = [[kdroneminingtower.lua]],
	
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
		default = 1,
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
	      description      = [[Wreckage - Drone Mining Tower]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 8625,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 400,
	      object           = [[wrecks/kdroneminingtowerwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Drone Mining Tower]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 5750,
	      energy           = 0,
	      footprintX       = 5,
	      footprintZ       = 5,
	      metal            = 200,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	    },
	
	  },
	
	}
	
	return lowerkeys({ kdroneminingtower = unitDef })
