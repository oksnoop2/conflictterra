	--Deployed Sekai Type Tank Unit Def by Sanada
	--Notes:  Balanced Version 1

	unitDef = {
	  unitname            = [[bvhsadeployed]],
	  name                = [[Deployed RS-010 Sekai Type Tank]],
	  description         = [[Heavy Siege Artillery - Long range Anti-Building artillery. Must Mobilize to move.]],
	  buildCostEnergy     = 700,
	  buildCostMetal      = 700,
	  builder             = false,
	  buildPic            = [[bvhsadeployed.png]],
	  buildTime           = 26,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,

	  customParams = {
	  	RequireTech   = [[General's Presence]],
	  },
	
	  explodeAs           = [[TANK_EXPLOSION]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  highTrajectory      = 2,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 950,
	  maxDamage           = 850,
	  maxSlope            = 18,
	  maxWaterDepth       = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bvhsa.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[TANK_EXPLOSION]],

	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_cannon_tank",
		"custom:ct_dirt",
		"custom:ct_dust_big",
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

	  side                = [[NKG]],
	  sightDistance       = 1600,
	  smoothAnim          = true,
	  yardMap             = [[oooo oooo oooo oooo]],
	  script              = [[bvhsadeployed.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Artillery]],
	      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Artillery             = {
	      name                    = [[Heavy Artillery Cannon]],
	      areaOfEffect            = 32,
		  avoidFeature            = false,
	      crater                  = 0.25,
		  collideFriendly         = false,
	
	      damage                  = {
		--Anti-Building
		--30 dps
		--150 dps building
		default = 210,
		Cruiser = 210,
		Building = 1050,
		Land = 210,
		Aircraft = 210,
		Ship = 210,
		Sub = 210,

		Meteor = 0,
		Drone = 210,
		Spare1 = 210,
		Spare2 = 210,
		Spare3 = 210,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:ct_impact_artillery]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      myGravity               = 0.1,
	      range                   = 1500,
	      reloadtime              = 7,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_Whamsound]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Deployed Sekai Type Tank]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 425,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 350,
	      object           = [[wrecks/bvhsadeployedwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 10500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Deployed Sekai Type Tank]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 212,
	      energy           = 0,
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 175,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 5250,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bvhsadeployed = unitDef })