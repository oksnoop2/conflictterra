	unitDef = {
	  unitname            = [[bbattleflagship]],
	  name                = [[Owari Class Cruiser]],
	  description         = [[Battle Flagship - Upgraded Flagship armed for battle.  Can fire a very powerful beam. - Build Limit: 1]],
	  acceleration        = 0.16,
	  activateWhenBuilt   = true,
          airStrafe           = 0,
          amphibious          = true,
          bankscale           = [[1.5]],
	  bmcode              = [[0]],
	  brakeRate           = 1.88,
	  buildCostEnergy     = 1800,
	  buildCostMetal      = 1440,
	  builder             = false,
	  reclaimable         = false,



	  buildPic            = [[bbattleflagship.png]],
          buildRange3D        = false,
	  buildTime           = 60,
	  canAttack           = true,
	  canDGun             = true,
          canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
          canReclaim          = true,
	  canstop             = [[1]],
          canSubmerge         = false,
	  category            = [[GUNSHIP]],
          collisionVolumeOffsets = [[0 0 0]],
          collisionVolumeScales  = [[125 150 300]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
          collide             = false,
          commander           = true,
	  corpse              = [[DEAD]],
          cruiseAlt           = 100,
	
	  defaultmissiontype  = [[VTOL_standby]],
          energyMake          = 7.2,
	  energyStorage       = 980,
	  energyUse           = 0,
	  explodeAs           = [[LARGE_UNIT]],
          floater             = true,
          footprintx          = 7,
	  footprintZ          = 7,
	  hoverAttack         = true,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[1280]],
	  mass                = 2500,
	  maxDamage           = 15000,
	  maxVelocity         = 4,
          metalMake           = 0,
	  metalStorage        = 0,
	  minCloakDistance    = 100,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS SUB]],
	  norestrict          = [[1]],
	  objectName          = [[bbattleflagship.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[LARGE_UNIT]],
          showNanospray       = 0,
	  showPlayerName      = true,
	  side                = [[NKG]],
	  sightDistance       = 750,

	  sounds			= {
	      select = {
		"ct/cruiserengine",
		},
	      ok = {
		"ct/cruiserengine",
		},
	  },

	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[VTOL]],
	  turnRate            = 300,
	  workerTime          = 12,
	  upright             = true,
	  unitRestricted      = 1,
          script              = [[bbattleflagship.lua]],



	
	  weapons             = {

	    {
	      def = [[DISINTEGRATOR]],
	    },
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP SINK FLOAT]],
	      mainDir            = [[1 0 0]],
	      maxAngleDif        = 200,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },

	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP SINK FLOAT]],
	      mainDir            = [[1 0 0]],
	      maxAngleDif        = 200,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    DISINTEGRATOR = {
	      name                    = [[Disintegrator]],
	      areaOfEffect            = 36,
	      avoidFeature            = false,
	      avoidFriendly           = false,
	      avoidNeutral            = false,
	      commandfire             = true,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 99999,
		Building = 99999,
		Mech = 99999,
		Tank = 99999,
		Aircraft = 99999,
		Ship = 99999,
		Sub = 99999,
	      },
	
	      energypershot           = 300,
	      explosionGenerator      = [[custom:megapartgun]],
	      interceptedByShieldType = 1,
	      noExplode               = true,
	      noSelfDamage            = true,
	      range                   = 500,
	      reloadtime              = 1,
	      soundStart              = [[ct/dgunfire]],
	      soundTrigger            = true,
	      tolerance               = 10000,
	      turret                  = true,
	      weaponTimer             = 4.2,
	      weaponType              = [[DGun]],
	      weaponVelocity          = 300,
	    },

	    Laser = {
	      name                    = [[Burst Laser]],
	      areaOfEffect            = 8,
	      coreThickness           = 0.5,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 160,
		Building = 160,
		Mech = 160,
		Tank = 160,
		Aircraft = 160,
		Ship = 160,
		Sub = 10,
	      },
	
	      duration                = 0.02,
	      energypershot           = 0,
	      explosionGenerator      = [[custom:megapartgun]],
	      interceptedByShieldType = 1,
	      heightMod               = 0.5,
	      lineOfSight             = true,
	      range                   = 1000,
	      reloadtime              = 1,
	      rgbColor                = [[1 0 0]],
	      soundStart              = [[ct/pew1]],
	      targetMoveError         = 0.15,
	      thickness               = 3.76646385884692,
	      tolerance               = 10000,
	      turret                  = true,
	      weaponType              = [[LaserCannon]],
	      weaponVelocity          = 1500,
	    },

          },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Battle Flagship]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 11250,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 720,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Battle Flagship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 7500,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 7,
	      footprintZ       = 7,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 360,
	      object           = [[b7x7heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bbattleflagship = unitDef })
