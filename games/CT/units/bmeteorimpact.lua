unitDef = {
	  unitname                      = [[bmeteorimpact]],
	  name                          = [[Meteorite]],
	  description                   = [[Contains valuable metal used to construct units. Use a mining unit to extract the metal.]],
	  activateWhenBuilt             = true,
	  buildCostEnergy               = 1,
	  buildCostMetal                = 1,
	  builder                       = false,

	  iconType                      = "resource",
	  buildPic                      = [[bmex.png]],
	  buildTime                     = 1,
	  canattack                     = [[false]],
	  category                      = [[MINERALS]],
	  --corpse                        = [[DEAD]],
	  reclaimable                   = false,
	  resurrectable                 = false,
	  repairable                    = false,
	  energyUse                     = 0,
	  explodeAs                     = [[ROCK_MINEDOUT]],
	  extractsMetal                 = 0.000,
	  floater                       = false,
	  footprintX                    = 3,
	  footprintZ                    = 3,
	  idleAutoHeal                  = 0,
	  levelGround                   = false,
	  mass                          = 37.5,
	  maxDamage                     = 250,
	  maxSlope                      = 255,
	  maxWaterDepth                 = 0,
	  noAutoFire                    = false,
	  objectName                    = [[bmeteor_impact.s3o]],

	  onoffable                     = true,
	  seismicSignature              = 4,
	  selfDestructAs                = [[ROCK_MINEDOUT]],
	  side                          = [[NKG]],
	  sightDistance                 = 0,

	  smoothAnim                    = true,
	  turnRate                      = 0,

	  waterline                     = 1,
	  workerTime                    = 0,
	  yardMap                       = [[ooo ooo ooo]],
	  script                        = [[bmeteorimpact.lua]],
	  customParams = {
		is_mineable=1,		--used by minig: if the unit is a mineable resource
	  },


	  featureDefs                   = {

        DEAD  = {
		  description      = [[this mineral is mined out.]],
		  blocking         = false,
		  category         = [[heaps]],
		  damage           = 10,
		  energy           = 0,
		  featureDead      = [[DEAD2]],
		  featurereclamate = [[SMUDGE01]],
		  footprintX       = 2,
		  footprintZ       = 2,
		  height           = [[40]],
		  hitdensity       = [[100]],
		  metal            = 30,
		  object           = [[b3x3heap.s3o]],
		  reclaimable      = true,
		  reclaimTime      = 275,
		  seqnamereclamate = [[TREE1RECLAMATE]],
		  world            = [[All Worlds]],
        },


        DEAD2 = {
		  description      = [[this mined mineral is totally crushed dude!]],
		  blocking         = false,
		  category         = [[heaps]],
		  damage           = 2250,
		  energy           = 0,
		  featurereclamate = [[SMUDGE01]],
		  footprintX       = 3,
		  footprintZ       = 3,
		  height           = [[4]],
		  hitdensity       = [[100]],
		  metal            = 15,
		  object           = [[b3x3heap.s3o]],
		  reclaimable      = true,
		  reclaimTime      = 275,
		  seqnamereclamate = [[TREE1RECLAMATE]],
		  world            = [[All Worlds]],
		},

	  },

	}

	return lowerkeys({ bmeteorimpact = unitDef })
