	unitDef = {
	  unitname            = [[bshieldgen]],
	  name                = [[Shield Generator]],
	  description         = [[Very complex, specialized equipment is able to project an energy shield around a large radius.  Stops all weapons, but EMP can penetrate it.]],
	  acceleration        = 0,
	  bmcode              = [[0]],
	  brakeRate           = 0,
	  buildCostEnergy     = 2500,
	  buildCostMetal      = 2000,
	  builder             = false,
	  buildPic            = [[bshieldgen.png]],
	  buildTime           = 120,
	  category            = [[SINK]],
	  canAttack           = false,
	  canFight            = false,
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  explodeAs           = [[SMALL_BUILDING]],
          footprintx          = 3,
	  footprintZ          = 3,
	  idleAutoHeal        = 0,
	  levelGround         = true,
	  mass                = 240,
	  maxDamage           = 4500,
          maxSlope            = 36,
	  maxVelocity         = 0,
          maxWaterDepth       = 0,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[FIXEDWING LAND SHIP SATELLITE SWIM GUNSHIP SUB HOVER]],
	  objectName          = [[bshieldgen.s3o]],
	  seismicSignature    = 4,
	  pushResistant       = 1,
	  selfDestructAs      = [[SMALL_BUILDING]],
	  shootme             = [[1]],
	  side                = [[NKG]],
	  sightDistance       = 500,
	  smoothAnim          = true,

  sounds			= {
      select = {
	"ct/shield_chatter",
	},

      ok = {
	"ct/shield_chatter",
	},
  },

	  TEDClass            = [[FORT]],
	  turnRate            = 0,
	  workerTime          = 0,
	  yardMap             = [[ooo ooo ooo]],
          script              = [[bshieldgen.lua]],
	
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
	      shieldAlpha             = 0.25,
	      shieldBadColor          = [[1 0 0]],
	      shieldGoodColor         = [[0 0 0.5]],
	      shieldInterceptType     = 1,
	      shieldPower             = 1000,
	      shieldPowerRegen        = 0.5,
	      shieldPowerRegenEnergy  = 12,
	      shieldRadius            = 500,
	      shieldRepulser          = false,
	      smartShield             = true,
	      visibleShield           = true,
	      visibleShieldHitFrames  = 4,
	      visibleShieldRepulse    = true,
	      weaponType              = [[Shield]],
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Shield Generator]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 3375,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 1000,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Shield Generator]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 2250,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 500,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bshieldgen = unitDef })
