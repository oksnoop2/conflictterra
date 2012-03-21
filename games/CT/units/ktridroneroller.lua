	unitDef = {
	  unitname            = [[ktridroneroller]],
	  name                = [[Tri Roller Drone]],
	  description         = [[Produces a weapon deflecting Shield that costs 20 energy to maintain.]],
	  acceleration        = 1,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 400,
	  buildCostMetal      = 400,
	  builder             = false,
	  buildPic            = [[ktridroneroller.png]],
	  buildTime           = 10,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
      reclaimable         = false,
	  explodeAs           = [[DRONE_GROUND_UNIT]],
      footprintx          = 4,
	  footprintZ          = 4,
	  highTrajectory      = 2,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  mass                = 90,
	  maxDamage           = 1000,
      maxSlope            = 18,
	  maxVelocity         = 2,
      maxWaterDepth       = 22,
	  movementClass       = [[TANK4x4]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER FIXEDWING GUNSHIP CRUISER SHIP FLOAT SUB]],
	  objectName          = [[ktridroneroller.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[DRONE_GROUND_UNIT]],

	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

	  side                = [[Drone]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  trackOffset         = 3,
	  trackStrength       = 6,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 24,
	  turnInPlace         = 0,
	  turnInPlaceSpeedLimit= 1,	  
	  turnRate            = 500,
      script              = [[ktridroneroller.lua]],
	
	  weapons             = {
 
            {
              def = [[Shield]],
            },
			
	  },
        
          weaponDefs          = {
			
            Shield = {
              name                    = [[Energy Shield]],
              craterMult              = 0,
        
              damage                  = {
                default = 10,
              },
        
              exteriorShield          = true,
              impulseFactor           = 0,
              interceptedByShieldType = 1,
              isShield                = true,
              shieldAlpha             = 1,
              shieldBadColor          = [[1 0 0]],
              shieldGoodColor         = [[0 0 1]],
			  shieldforce             = 10,
              shieldInterceptType     = 1,
              shieldPower             = 800,
              shieldPowerRegen        = 20,
              shieldPowerRegenEnergy  = 20,
              shieldRadius            = 500,
              shieldRepulser          = true,
              smartShield             = true,
              visibleShield           = true,
              visibleShieldHitFrames  = 4,
              visibleShieldRepulse    = true,
              weaponType              = [[Shield]],
            },
        
          },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Tri Roller Drone]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 500,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 100,
	      object           = [[wrecks/ktridronerollerwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Tri Roller Drone]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 250,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 50,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1500,
	    },
	
	  },
	
	}
	
	return lowerkeys({ ktridroneroller = unitDef })
