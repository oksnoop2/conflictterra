--ct_explosion_unit_medium
--Explosion CEG for medium units
--by Sanada

return {
  ["ct_explosion_unit_medium"] = {  
	
    explosionspikes = {
      air                = true,
      class              = [[CExploSpikeProjectile]],
      count              = 7,
      ground             = true,
      underwater         = 1,
      useairlos          = false,
      water              = true,
      alwaysVisible      = false,
	  properties = {
        alwaysVisible      = false,
		dir                = [[-45 r90,-45 r90,-45 r90]],
		width              = 8,
		length             = 0.5,
		alpha              = 1,
		alphaDecay         = 0.19,
		color              = [[1, 0.3, 0.5]],
      },
    },
	
    explosionsphere = {
      air                = true,
      class              = [[CSpherePartSpawner]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      useairlos          = false,
      water              = true,
      alwaysVisible      = false,
	  properties = {
        alwaysVisible      = false,
		ttl                = 18,
		alpha              = 0.4,
		expansionSpeed     = [[10 r3]],
		color              = [[1, 0.3, 0.5]],
      },
    },
	
    pop0 = {
      air                = true,
      class              = [[CHeatCloudProjectile]],
      count              = 2,
      ground             = true,
      underwater         = 1,
      useairlos          = false,
      water              = true,
      alwaysVisible      = false,
	  properties = {
        alwaysVisible      = false,
        texture            = [[pinknovaexplo]],
		heat               = 10,
		maxheat            = 15,
		heatFalloff        = 1.7,
		
		size               = 40,
		sizeGrowth         = 15,
		
		pos                = [[0, 5, 0]],
		speed              = [[0, 0, 0]],
      },
    },
	
    pop1 = {
      air                = true,
      class              = [[CHeatCloudProjectile]],
      count              = 3,
      ground             = true,
      underwater         = 1,
      useairlos          = false,
      water              = true,
      alwaysVisible      = false,
	  properties = {
        alwaysVisible      = false,
        texture            = [[purpleexplo]],
		heat               = 10,
		maxheat            = 15,
		heatFalloff        = 1,
		
		size               = 2,
		sizeGrowth         = 12,
		
		pos                = [[r-3 r3, 5, r-3 r3]],
		speed              = [[0, 1, 0]],
      },
    },
	
    dirt = {
      air                = true,
	  count              = 4,
	  ground             = true,
	  underwater         = 1,
	  useairlos          = true,
	  water              = true,
	  alwaysVisible      = false,
	  properties = {
        alwaysVisible      = false,
		color              = [[0.1, 0.1, 0.05]],
		alphaFalloff       = 2,
		size               = 40,
		pos                = [[r-10 r10, 0, r-10 r10]],
		speed              = [[r1.5 r-1.5, 2, r1.5 r-1.5]],
	  },
	},
	
    POOF01 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      useairlos          = true,
      water              = true,
      alwaysVisible      = false,
	  properties = {
        alwaysVisible      = false,
	    airdrag            = 0.2,
        colormap           = [[1.0 1.0 1.0 0.04   0.5 0.0 0.5 0.01  0.1 0.1 0.1 0.01]],
        directional        = 0,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.005, 0]],
        numparticles       = 40,
        particlelife       = 10,
        particlelifespread = 16,
        particlesize       = 15,
        particlesizespread = 0,
        particlespeed      = 19,
        particlespeedspread = 10,
        pos                = [[0, 2, 0]],
        sizegrowth         = 0.8,
        sizemod            = 1,
        texture            = [[randdots]],
      },
    },
	
    ["groundflash"] = {
    
	  alwaysVisible        = 1,
      flashSize            = 150,
      flashAlpha           = 0.9,
      circleGrowth         = 10,
      circleAlpha          = 0.7,
      ttl                  = 18,
      color                = [[1 0.3 0.5]],
	  air                  = 1,
      ground               = 1,
      water                = 1,
   },
  
  },


}