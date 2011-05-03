	unitDef = {
	  unitname            = [[bempcannon]],
	  name                = [[Kizetsu Type Tank]],
	  description         = [[EMP Cannon Tank - Tank armed with a long range, very slow firing EMP beam that can pierce shields. Must build ammo, 500 energy per shot. - Build Limit: 10]],
	  acceleration        = 0.02,
	  brakeRate           = 0.03,
	  buildCostEnergy     = 700,
	  buildCostMetal      = 700,
	  builder             = false,
	  buildPic            = [[bempcannon.png]],
	  buildTime           = 30,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 5,
	  footprintZ          = 5,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  mass                = 950,
	  maxDamage           = 3000,
	  maxSlope            = 18,
	  maxVelocity         = 1.5,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[TANK5x5]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[bempcannon.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],

	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  trackOffset         = 8,
	  trackStrength       = 10,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 45,
	  turnInPlace         = 1,
	  turnRate            = 500,
	  unitRestricted      = 10,
          script              = [[bempcannon.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Stun]],
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Stun = {
	      name                    = [[Electromagnetic Beam]],
	      areaOfEffect            = 512,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 9000,
		Cruiser = 9000,
		Building = 9000,
		Mech = 9000,
		Tank = 9000,
		Aircraft = 9000,
		Ship = 9000,
		Sub = 9000,

		Meteor = 0,
		Drone = 9000,
		Spare1 = 9000,
		Spare2 = 9000,
		Spare3 = 9000,
	      },
	
	      duration                = 0.1,
	      energyPerShot           = 1000,
	      explosionGenerator      = [[custom:STUNNER_Expl]],
	      heightMod               = 1,
	      intensity               = 10,
	      impulseFactor           = 0,
	      interceptedByShieldType = 2,
	      lineOfSight             = true,
	      minIntensity            = 1,
	      paralyzer               = true,
	      paralyzeTime            = 5,
	      range                   = 1000,
	      reloadtime              = 10,
	      rgbColor                = [[1 1 0]],
	      stockpile               = true,
	      stockpileTime           = 20,
	      soundHit                = [[ct/empfire]],
	      soundStart              = [[ct/empfire]],
	      soundTrigger            = true,
	      thickness               = 1,
	      tolerance               = 6000,
	      turret                  = true,
	      weaponType              = [[LightningCannon]],
	      weaponVelocity          = 1000,
	    },
	
	  },
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Kizetsu Type Tank]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 1500,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      metal            = 350,
	      object           = [[wrecks/bempcannonwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 10500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Kizetsu Type Tank]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 750,
	      energy           = 0,
	      footprintX       = 5,
	      footprintZ       = 5,
	      metal            = 175,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 5250,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bempcannon = unitDef })