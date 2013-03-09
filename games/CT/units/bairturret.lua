	--Anti-Air Turret Unit Def by Sanada
	--Notes:  NOT Balanced Version 1

	unitDef = {
	  unitname            = [[bairturret]],
	  name                = [[Anti-Air Turret]],
	  description         = [[Fires explosive flak at aircraft, and an Anti-Cruiser beam.]],
	  buildCostEnergy     = 250,
	  buildCostMetal      = 250,
	  builder             = false,
	  buildPic            = [[bairturret.png]],
	  buildTime           = 15,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[SINK]],
	  corpse              = [[DEAD]],
	  reclaimable         = false,
	
	  explodeAs           = [[SMALL_BUILDING]],
	  footprintx          = 3,
	  footprintZ          = 3,
	  idleAutoHeal        = 0,
	  levelGround         = false,
	  mass                = 40,
	  maxDamage           = 950,
	  maxSlope            = 18,
	  maxWaterDepth       = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[bairturret.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_BUILDING]],

	  sounds			= {
	      select = {
		"",
		},

	      ok = {
		"",
		},
	  },

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_cannon_narrow",
		"custom:ct_damage_fire",
	    },
	
	  },

	  side                = [[NKG]],
	  sightDistance       = 900,
	  smoothAnim          = true,
	  yardMap             = [[ooo ooo ooo]],
	  script              = [[bairturret.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Flak]],
	      badTargetCategory  = [[GUNSHIP]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[Laser]],
	      onlyTargetCategory = [[CRUISER]],
	    },	
	
	  },
	
	
	  weaponDefs          = {
	
	    Flak          = {
	      name                    = [[Flak Cannon]],
	      areaOfEffect            = 64,
		  avoidFeature            = false,
	      burnblow                = true,
	      canattackground         = false,
	      color                   = 1,
	      craterMult              = 0.25,
		  collideFriendly         = false,		  
	
	      damage                  = {
		--Anti-Plane
		default = 5,
		Cruiser = 50,
		Building = 5,
		Land = 5,
		Aircraft = 50,
		Ship = 5,
		Sub = 5,

		Meteor = 0,
		Drone = 5,
		Spare1 = 5,
		Spare2 = 5,
		Spare3 = 5,
	      },
	
	      edgeEffectiveness       = 0.85,
	      explosionGenerator      = [[custom:ct_impact_flak]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      range                   = 800,
	      reloadtime              = 0.5,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      weaponTimer             = 1,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 2000,
	    },
		
	    Laser = {
	      name                    = [[Anti-Cruiser Laser]],
	      areaOfEffect            = 8,
		  avoidFeature            = false,
	      avoidFriendly           = false,
	      beamTime                = 0.2,
	      craterMult              = 0.25,
	      accuracy                = 0,
	      canattackground         = false,
	      collideFriendly         = false,
	      energypershot           = 0,
	      explosionGenerator      = [[custom:ct_impact_beamshot_blue]],
        
	      damage                  = {
		--Anti-Cruiser
		--25 dps
		--100 dps cruiser
		default = 5,
		Cruiser = 20,
		Building = 5,
		Land = 5,
		Aircraft = 5,
		Ship = 5,
		Sub = 5,

		Meteor = 0,
		Drone = 5,
		Spare1 = 5,
		Spare2 = 5,
		Spare3 = 5,
              },
        
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 800,
	      reloadtime              = 0.2,
	      rgbColor                = [[0 0 1]],
	      separation              = 2,
	      thickness               = 1,
	      minIntensity            = 1,
	      size                    = 0.4,
	      soundStart              = [[ct/empfire]],
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
	      description      = [[Wreckage - Anti-Air Turret]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 475,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 125,
	      object           = [[wrecks/bairturretwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3600,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Air Turret]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 237,
	      energy           = 0,
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 62,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1800,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bairturret = unitDef })
