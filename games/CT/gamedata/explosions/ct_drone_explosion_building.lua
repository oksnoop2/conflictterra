--ct_drone_explosion_building
--Explosion CEG for Drone buildings
--by Sanada

return {
  ["ct_drone_explosion_building"] = {  
	
    flashpoof = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      useairlos          = false,
      water              = true,
      alwaysVisible      = false,
	  properties = {
        alwaysVisible      = false,
	    airdrag            = 0.8,
        colormap           = [[1.0 1.0 1.0 0.04   0.5 0.9 0.2 0.01  0.1 0.8 0.1 0.01]],
        directional        = 1,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.05, 0]],
        numparticles       = 18,
        particlelife       = 14,
        particlelifespread = 8,
        particlesize       = 30,
        particlesizespread = 0,
        particlespeed      = 10,
        particlespeedspread = 10,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 1.05,
        texture            = [[tpsmoke2]],
      },
    },
	
    smokeblack = {
      air                = true,
	  class              = [[smoke]],
	  count              = 22,
	  ground             = true,
	  underwater         = 1,
	  useairlos          = true,
	  water              = true,
	  alwaysVisible      = false,
	  properties = {
        alwaysVisible      = false,
		color              = 0.1,
		ageSpeed           = 0.01,
		startSize          = 10,
		sizeExpansion      = 0.6,
		size               = 50,
		sizeGrowth         = 15,
		pos                = [[r-60 r60, 24, r-60 r60]],
		speed              = [[r-4 r4, -1.5 r-1, r-4 r4]],
	  },
	},  
	
    dirtpoof = {
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
	    airdrag            = 0.95,
        colormap           = [[0.1 0.1 0.1 1.0   0.5 0.4 0.3 1.0      0 0 0 0.0]],
        directional        = 1,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 100,
        particlelife       = 20,
        particlelifespread = 7,
        particlesize       = 15,
        particlesizespread = 5,
        particlespeed      = 1,
        particlespeedspread = 10,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1,
        texture            = [[dirt]],
      },
    },
	
    ["groundflash"] = {
    
	  alwaysVisible        = 1,
      flashSize            = 256,
      flashAlpha           = 0.9,
      circleGrowth         = 6,
      circleAlpha          = 0.6,
      ttl                  = 20,
      color                = [[0.3 0.9 1]],
	  air                  = 1,
      ground               = 1,
      water                = 1,
   },
  
  },


}