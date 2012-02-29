--ct_meteor_destruction_big
--CEG for big meteors when they are mined out
--by Sanada

return {
  ["ct_meteor_destruction_big"] = {
	
    dirtpoof = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      useairlos          = true,
      water              = true,
      alwaysVisible      = true,
	  properties = {
        alwaysVisible      = true,
	    airdrag            = 0.95,
        colormap           = [[0.1 0.1 0.1 1.0   0.5 0.4 0.3 1.0      0 0 0 0.0]],
        directional        = 1,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 60,
        particlelife       = 20,
        particlelifespread = 10,
        particlesize       = 7,
        particlesizespread = 4,
        particlespeed      = 4,
        particlespeedspread = 3,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1,
        texture            = [[dirt]],
      },
    },
	
    dirtpoofup = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      useairlos          = true,
      water              = true,
      alwaysVisible      = true,
	  properties = {
        alwaysVisible      = true,
	    airdrag            = 0.95,
        colormap           = [[0.1 0.1 0.1 1.0   0.5 0.4 0.3 1.0      0 0 0 0.0]],
        directional        = 1,
        emitrot            = 45,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 40,
        particlelife       = 20,
        particlelifespread = 10,
        particlesize       = 7,
        particlesizespread = 4,
        particlespeed      = 4,
        particlespeedspread = 3,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1,
        texture            = [[dirt]],
      },
    },
  
  },


}