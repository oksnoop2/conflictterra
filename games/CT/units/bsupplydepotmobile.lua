	--Mobilized Resource Ship Unit Def by Sanada
	--Notes:  Balanced Version 1

	unitDef = {
	  unitname            = [[bsupplydepotmobile]],
	  name                = [[JK-002 Mobilized Resource Ship]],
	  description         = [[Able to Deploy into the Resource Drop Zone, which is vital to accumulating metal.]],
	  acceleration        = 0.16,
	  activateWhenBuilt   = false,
	  airStrafe           = 0,
	  amphibious          = false,
	  brakeRate           = 1.88,
	  buildCostEnergy     = 200,
	  buildCostMetal      = 200,
	  builder             = false,
	  reclaimable         = false,

	  collisionVolumeOffsets = [[0 0 0]],
	  collisionVolumeScales  = [[76 76 160]],
	  collisionVolumeTest    = 1,
	  collisionVolumeType    = [[cylz]],

	  buildPic            = [[bsupplydepotmobile.png]],
	  buildTime           = 20,
	  canAttack           = false,
	  canFly              = true,
	  canFight            = false,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canReclaim          = false,
	  canStop             = true,
	  canSubmerge         = false,
	  category            = [[CRUISER]],
	  collide             = true,
	  corpse              = [[DEAD]],
	  cruiseAlt           = 100,
	
	  energyMake          = 0,
	  energyStorage       = 0,
	  energyUse           = 0,
	  explodeAs           = [[CRUISER_EXPLOSION]],
	  floater             = true,
	  footprintx          = 6,
	  footprintZ          = 6,
	  hoverAttack         = true,
	  idleAutoHeal        = 0,
	  mass                = 2000,
	  maxDamage           = 1150,
	  maxVelocity         = 3,
	  minAirbasePower     = 1,
	  verticalSpeed       = 20,
	  metalMake           = 0,
	  noAutoFire          = false,
	  objectName          = [[bsupplydepot.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[CRUISER_EXPLOSION]],
	  showNanospray       = 0,
	  showNanoFrame       = false,
	  side                = [[NKG]],
	  sightDistance       = 600,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"ct/cruiserengine",
		},
	      ok = {
		"ct/cruiserengine",
		},
	  },
	  
	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_damage_fire",
	    },
	  },

	  turnRate            = 250,
	  upright             = true,
	  script              = [[bsupplydepotmobile.lua]],
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Mobilized Resource Ship]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 575,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 6,
	      footprintZ       = 6,
	      mass             = 2000,
	      metal            = 100,
	      object           = [[wrecks/bsupplydepotmobilewreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Mobilized Resource Ship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 287,
	      energy           = 0,
	      footprintX       = 6,
	      footprintZ       = 6,
	      mass             = 750,
	      metal            = 50,
	      object           = [[b6x6heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1500,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bsupplydepotmobile = unitDef })
