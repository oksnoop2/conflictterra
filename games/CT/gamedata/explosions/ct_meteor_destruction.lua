--ct_meteor_destruction
--CEG for meteors when they are mined out
--by Sanada

return {
  ["ct_meteor_destruction"] = {
	
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
        numparticles       = 40,
        particlelife       = 14,
        particlelifespread = 8,
        particlesize       = 5,
        particlesizespread = 3,
        particlespeed      = 1,
        particlespeedspread = 3,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1,
        texture            = [[dirt]],
      },
    },
  
  },


}