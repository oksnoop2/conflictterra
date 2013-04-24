--ct_damage_fire
--Burning CEG for damaged Cruisers and Buildings
--by Sanada

return {
  ["ct_damage_fire"] = {  
	
    sparks = {
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
        numparticles       = 4,
        particlelife       = 5,
        particlelifespread = 8,
        particlesize       = 7,
        particlesizespread = 0,
        particlespeed      = 7,
        particlespeedspread = 3,
        pos                = [[0, 2, 0]],
        sizegrowth         = 0.5,
        sizemod            = 1,
        texture            = [[randdots]],
      },
    },
	
    fireballs = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      useairlos          = true,
      water              = true,
      alwaysVisible      = 0,
	  properties = {
        alwaysVisible      = 0,
	    airdrag            = 0.9,
        colormap           = [[1.0 1.0 1.0 0.04   0.9 0.5 0.2 0.01  0.8 0.1 0.1 0.01]],
        directional        = 1,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.05, 0]],
        numparticles       = 8,
        particlelife       = 8,
        particlelifespread = 3,
        particlesize       = 5,
        particlesizespread = 0,
        particlespeed      = 2,
        particlespeedspread = 2,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 1,
        texture            = [[tpsmoke2]],
      },
    },
	
    smokeballs = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      useairlos          = true,
      water              = true,
      alwaysVisible      = 0,
	  properties = {
        alwaysVisible      = 0,
	    airdrag            = 1,
        colormap           = [[0.1 0.1 0.1 0.3     0.1 0.1 0.1 0.2     0.2 0.2 0.2 0.1]],
        directional        = 1,
        emitrot            = 10,
        emitrotspread      = 10,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.1, 0]],  -- 0, -0.05, 0
        numparticles       = 8,
        particlelife       = 25,
        particlelifespread = 5,
        particlesize       = 5,
        particlesizespread = 0,
        particlespeed      = 1,
        particlespeedspread = 1,
        pos                = [[0, 2, 0]],
        sizegrowth         = 0.5,
        sizemod            = 1,
        texture            = [[tpsmoke2]],
      },
    },
  
  },

}