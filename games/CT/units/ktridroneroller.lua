	unitDef = {
	  unitname            = [[ktridroneroller]],
	  name                = [[Tri Roller Drone]],
	  description         = [[Shield Generating Unit.]],
	  acceleration        = 0.04,
	  brakeRate           = 0.02,
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
	  explodeAs           = [[SMALL_UNIT]],
      footprintx          = 4,
	  footprintZ          = 4,
	  highTrajectory      = 2,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  maneuverleashlength = [[640]],
	  mass                = 90,
	  maxDamage           = 1000,
      maxSlope            = 18,
	  maxVelocity         = 2,
      maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[TANK4x4]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[ktridroneroller.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNIT]],

	  	    
	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
	    },
	
	  },

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
	  turnInPlace         = 1,
	  turnRate            = 550,
          script              = [[ktridroneroller.lua]],
	

	
 weapons             = {

		--	{
		--	  def                = [[AA]],
		--	  onlyTargetCategory = [[GUNSHIP FIXEDWING]],
		--	},
 
            {
              def = [[Shield]],
            },
			

	
	  },
        

        
        
          weaponDefs          = {
			
				    AA         = {
	      name                    = [[Homing AA Missile]],
	      areaOfEffect            = 48,
	      avoidFriendly           = true,
	      canattackground         = false,
	      cylinderTargetting      = 1,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 20,
		Cruiser = 100,
		Building = 20,
		Mech = 20,
		Tank = 20,
		Aircraft = 100,
		Ship = 20,
		Sub = 20,

		Meteor = 0,
		Drone = 20,
		Spare1 = 20,
		Spare2 = 20,
		Spare3 = 20,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	     -- model                   = [[baamissile.s3o]],
	      range                   = 800,
		  cegtag                  = [[VULCANFX]],
	      reloadtime              = 3,
	      smokedelay              = [[0.1]],
	      smokeTrail              = false,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[evolutionRTS/aircraft_missile_01]],
	      startVelocity           = 200,
	      tolerance               = 22000,
	      tracks                  = true,
	      turnRate                = 30000,
	      turret                  = true,
	      weaponAcceleration      = 550,
	      weaponTimer             = 5,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 750,
	    },
			
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
			  shieldforce             =10,
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
	      damage           = 1125,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 72,
	      object           = [[wrecks/ktridronerollerwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Tri Roller Drone]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 750,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 36,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	    },
	
	  },
	
	}
	
	return lowerkeys({ ktridroneroller = unitDef })
