--ct_jumpjet_land
--Ring of dust from a landing jumper
--by Sanada

return {
  ["ct_jumpjet_land"] = {
	
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
        particlelife       = 25,
        particlelifespread = 10,
        particlesize       = 2,
        particlesizespread = 2,
        particlespeed      = 2,
        particlespeedspread = 1,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 0.5,
        sizemod            = 1,
        texture            = [[dirt]],
      },
    },
  
  },


}