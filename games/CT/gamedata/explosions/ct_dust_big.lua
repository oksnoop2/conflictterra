--ct_dust_big
--Ring of dust from firing a big gun
--by Sanada

return {
  ["ct_dust_big"] = {
	
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
        colormap           = [[0.1 0.1 0.1 0.8   0.5 0.4 0.3 0.6      0 0 0 0.0]],
        directional        = 1,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 40,
        particlelife       = 17,
        particlelifespread = 8,
        particlesize       = 3,
        particlesizespread = 2,
        particlespeed      = 6,
        particlespeedspread = 2,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 0.6,
        sizemod            = 1,
        texture            = [[dirt]],
      },
    },
  
  },


}