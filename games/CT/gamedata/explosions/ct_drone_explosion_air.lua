--ct_drone_explosion_air
--Explosion CEG for flying Drones
--by Sanada

return {
  ["ct_drone_explosion_air"] = {  
	
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
        numparticles       = 12,
        particlelife       = 7,
        particlelifespread = 4,
        particlesize       = 15,
        particlesizespread = 5,
        particlespeed      = 8,
        particlespeedspread = 5,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 1.01,
        texture            = [[tpsmoke2]],
      },
    },
	
	spherepoof = {
      air                = true,
	  class              = [[CSpherePartSpawner]],
	  count              = 1,
	  ground             = true,
	  underwater         = 1,
	  useairlos          = false,
	  water              = true,
	  alwaysvisible      = false,
	  properties = {
	    alpha            = 0.2,
		ttl              = 11,
		expansionspeed   = 8,
		color            = [[0 1 0]],
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