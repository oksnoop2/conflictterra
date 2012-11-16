--ct_explosion_unit_small
--Explosion CEG for small units
--by Sanada

return {
  ["ct_explosion_unit_small"] = {  
	
    pop1 = {
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
        texture            = [[redexplo]],
		heat               = 10,
		maxheat            = 15,
		heatFalloff        = 1,
		
		size               = 1,
		sizeGrowth         = 24,
		
		pos                = [[r-2 r2, 5, r-2 r2]],
		speed              = [[0, 1 0, 0]],
      },
    },
	
    pop2 = {
      air                = true,
      class              = [[CHeatCloudProjectile]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      useairlos          = false,
      water              = true,
      alwaysVisible      = false,
	  properties = {
        alwaysVisible      = false,
        texture            = [[flare]],
		heat               = 10,
		maxheat            = 15,
		heatFalloff        = 1.1,
		
		size               = 3,
		sizeGrowth         = 25,
		
		pos                = [[r-2 r2, 5, r-2 r2]],
		speed              = [[0, 1 0, 0]],
      },
    },
	
    POOF00 = {
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
	    airdrag            = 0.8,
        colormap           = [[1.0 1.0 1.0 0.04   0.9 0.5 0.2 0.01  0.8 0.1 0.1 0.01]],
        directional        = 0,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.05, 0]],
        numparticles       = 16,
        particlelife       = 5,
        particlelifespread = 16,
        particlesize       = 25,
        particlesizespread = 0,
        particlespeed      = 10,
        particlespeedspread = 3,
        pos                = [[0, 2, 0]],
        sizegrowth         = 0.5,
        sizemod            = 1,
        texture            = [[randdots]],
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
		color              = [[0.2, 0.1, 0.05]],
		alphaFalloff       = 2,
		size               = 20,
		pos                = [[r-10 r10, 0, r-10 r10]],
		speed              = [[r1.5 r-1.5, 2, r1.5 r-1.5]],
	  },
	},
	
    ["groundflash"] = {
    
	  alwaysVisible        = 1,
      flashSize            = 270,
      flashAlpha           = 1,
      circleGrowth         = 12,
      circleAlpha          = 0.3,
      ttl                  = 16,
      color                = [[0 0.5 1]],
	  air                  = 1,
      ground               = 1,
      water                = 1,
   },
  
  },

}