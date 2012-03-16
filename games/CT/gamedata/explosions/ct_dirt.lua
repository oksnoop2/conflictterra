--ct_dirt
--Flying dirt
--by Sanada

return {
  ["ct_dirt"] = {
    dirtpoofs = {
      air                = false,
      class              = [[CSimpleParticleSystem]],
      count              = 3,
      ground             = false,
      underwater         = 1,
	  unit               = false,
	  nounit             = true,
      useairlos          = true,
      water              = true,
      alwaysVisible      = 0,
	  properties = {
        alwaysVisible      = 0,
	    airdrag            = 0.9,
        colormap           = [[0.4 0.3 0.2 0.8    0.2 0.15 0.1 0.8    0.2 0.15 0.1 0.7     0.2 0.15 0.1 0.7]],
        directional        = 1,
        emitrot            = 5,
        emitrotspread      = 25,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -1, 0]],
        numparticles       = 15,
        particlelife       = 12,
        particlelifespread = 5,
        particlesize       = 3,
        particlesizespread = 0,
        particlespeed      = 10,
        particlespeedspread = 5,
        pos                = [[0, 2, 0]],
        sizegrowth         = 0,
        sizemod            = 1,
        texture            = [[tpsmoke2]],
      },
    },
  },
}