	unitDef = {
	  unitname            = [[ksnipership]],
	  name                = [[Sniper Ship]],
	  description         = [[Sniper Ship]],
	  acceleration        = 0.03,
	  bmcode              = [[1]],
	  brakeRate           = 0.03,
          buildAngle          = 16384,
	  buildCostEnergy     = 2300,
	  buildCostMetal      = 2300,
	  builder             = false,
	  buildPic            = [[ksnipership.png]],
	  buildTime           = 2300,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[SHIP]],
 	  corpse              = [[DEAD]],
  	  reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[BIG_UNITEX]],
          floater             = true,
	  footprintX          = 6,
	  footprintZ          = 6,
          collisionVolumeOffsets = [[0 0 0]],
          collisionVolumeScales  = [[80 80 288]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  iconType            = [[battleship]],
	  idleAutoHeal        = 5,
	  idleTime            = 1800,
	  maneuverleashlength = [[640]],
	  mass                = 2300,
	  maxDamage           = 10000,
	  maxVelocity         = 2.8,
	  minCloakDistance    = 75,
	  minWaterDepth       = 15,
	  movementClass       = [[BOAT6]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[FIXEDWING SATELLITE GUNSHIP SUB]],
	  objectName          = [[ksnipership.s3o]],
          radarDistance       = 2400,
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNITEX]],
	  side                = [[NKG]],
	  sightDistance       = 660,
	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[SHIP]],
	  turnRate            = 90,
	  workerTime          = 0,
          waterline           = 5,
          script              = [[ksnipership.lua]],
	
	  weapons                = {

	    {
	      def                = [[Big_Cannon]],
	      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
	      mainDir            = [[-1 0 0]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	
	    {
	      def                = [[Cannon]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs             = {

	    Big_Cannon = {
	      name                    = [[Heavy Naval Artillery Cannon]],
	      accuracy                = 500,
	      areaOfEffect            = 192,
	      cegTag                  = [[vulcanfx]],
	
	      damage                  = {
	        default = 1000,
	        planes  = 1000,
	        subs    = 100,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:lrpc_expl]],
	      holdtime                = [[1]],
	      interceptedByShieldType = 1,
	      range                   = 2400,
	      reloadtime              = 7,
	      soundHit                = [[lrpchit]],
	      soundStart              = [[33380__DJ_Chronos__Boom]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 1100,
	    },
	
	    Cannon = {
	      name                    = [[Naval Gun]],
	      areaOfEffect            = 96,
	
	      damage                  = {
	        default = 200,
	        planes  = 200,
	        subs    = 50,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:PLASMA_HIT_96]],
	      interceptedByShieldType = 1,
	      minbarrelangle          = [[-25]],
	      range                   = 1000,
	      reloadtime              = 7,
	      soundHit                = [[ct/shot3]],
	      soundStart              = [[ct/shot2]],
	      sprayAngle              = 768,
	      tolerance               = 4096,
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Advanced Battleship]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 160,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Advanced Battleship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 160,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 7,
	      footprintZ       = 7,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[b7x7heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ ksnipership = unitDef })