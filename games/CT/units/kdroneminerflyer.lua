	unitDef = {
	  unitname            = [[kdroneminerflyer]],
	  name                = [[Aerial Miner Drone]],
	  description         = [[Miner Drone, produced at mining hubs]],
	  amphibious          = false,
	  buildCostEnergy     = 100,
	  buildCostMetal      = 100,
	  builder             = false,
	  buildPic            = [[kdroneminerflyer.png]],
	  buildTime           = 10,
	  canAttack           = true,
	  canDropFlare        = false,
	  canFly              = true,
	  canFight            = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  canSubmerge         = false,
	  category            = [[GUNSHIP]],
	  collide             = false,
	  corpse              = [[DEAD]],
	  cruiseAlt           = 100,
	  reclaimable         = false,
	
	  explodeAs           = [[SMALL_UNIT]],
	  floater             = false,
	  footprintx          = 2,
	  footprintZ          = 2,
	  hoverAttack         = true,
	  idleAutoHeal        = 0,
	  mass                = 150,
	  maxAcc              = 1,
	  maxDamage           = 200,
	  maxVelocity         = 2,
	  noAutoFire          = false,
	  noChaseCategory     = [[LAND SINK HOVER SHIP FLOAT FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[kdroneminerflyer.s3o]],
	  radarDistance       = 750,
	  seismicSignature    = 0,
	  selfDestructAs      = [[SMALL_UNIT]],
	  side                = [[DRONE]],
	  sightDistance       = 750,
	  smoothAnim          = true,

	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_mininglaser_green",
	    },
	  },	  
	  
	  sounds			= {
	      select = {
		"argh/Argh_Jet.wav",
		},

	      ok = {
		"argh/Argh_Jet.wav",
		},
	  },

	  turnRadius          = 200,
	  --unitRestricted      = 20,
	  useSmoothMesh       = false,
	  script              = [[kdroneminerflyer.lua]],

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
              range                   = 100,
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
	      description      = [[Wreckage - Drone Miner-Flyer]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 100,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 50,
	      object           = [[wrecks/kairdronewreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Drone Miner-Flyer]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 50,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 25,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 750,
	    },
	
	  },
	
	}
	
	return lowerkeys({ kdroneminerflyer = unitDef })
