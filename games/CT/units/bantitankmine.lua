	unitDef = {
	  unitname            = [[bantitankmine]],
	  name                = [[Anti-Tank Mine]],
	  description         = [[Proximity mine that deals extra damage to tanks and vehicles.]],
	  buildCostEnergy     = 50,
	  buildCostMetal      = 50,
	  builder             = false,
	  buildPic            = [[bantitankmine.png]],
	  buildTime           = 2,
	  canAttack           = true,
	  canStop             = true,
	  category            = [[SINK]],
	  collide             = false,
	  corpse              = [[DEAD]],
	  reclaimable         = false,

	  cloakCost           = 0,
	  cloakCostMoving     = 0,
	  initCloaked         = true,
	  
	  explodeAs           = [[ANTI_TANK_MINE]],
	  footprintx          = 2,
	  footprintZ          = 2,
	  idleAutoHeal        = 0,
	  Kamikaze            = true,
	  KamikazeDistance    = 50,	  
	  levelGround         = false,
	  mass                = 35,
	  maxDamage           = 500,
	  maxSlope            = 36,
	  maxWaterDepth       = 0,
	  minCloakDistance    = 160,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[kdronemine.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[ANTI_TANK_MINE]],
	  selfDestructCountdown = 0,
	  side                = [[NKG]],
	  sightDistance       = 50,

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_machinegun_big",
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

	  stealth             = true,
	  smoothAnim          = true,
	  yardMap             = [[oo oo]],
	  script              = [[bantitankmine.lua]],
	
	}
	
	return lowerkeys({ bantitankmine = unitDef })
