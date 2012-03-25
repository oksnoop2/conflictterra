	unitDef = {
	  unitname            = [[kdroneminingtower]],
	  name                = [[Drone Mining Tower]],
	  description         = [[A tower for mining metal from meteorites.  Can Transform into a Drone Builder.]],
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

	  useBuildingGroundDecal	= true,
	  buildingGroundDecalType	= "grounddecals/kdronemininggrounddecal.png",
	  buildingGroundDecalSizeX	= 5,
	  buildingGroundDecalSizeY	= 5,
	  buildingGroundDecalDecaySpeed	= 0.1,

	  reclaimable         = false,
	  radarDistance       = 300,
	  damageModifier      = 0.25,
	  energyMake          = 1,
	  explodeAs           = [[DRONE_BUILDING]],
	  fireState           = 2,
	  footprintx          = 3,
	  footprintZ          = 3,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 1300,
	  maxDamage           = 1000,
	  maxSlope            = 18,
	  maxWaterDepth       = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[LAND SINK HOVER SHIP FLOAT FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[kdroneminingtower.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[DRONE_BUILDING]],
	  side                = [[NKG]],
	  sightDistance       = 450,

	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_mininglaser_green",
	    },
	  },

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
	  script              = [[kdroneminingtower.lua]],
	
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

                Meteor = 1,
                Drone = 0,
                Spare1 = 0,
                Spare2 = 0,
                Spare3 = 0,
              },
        
              explosionGenerator      = [[custom:resmining_green]],
              interceptedByShieldType = 1,
              impulseFactor           = 0,
              lineOfSight             = true,
              range                   = 130,
              reloadtime              = 0.3,
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
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 750,
	    },
	
	  },
	
	}
	
	return lowerkeys({ kdroneminingtower = unitDef })
