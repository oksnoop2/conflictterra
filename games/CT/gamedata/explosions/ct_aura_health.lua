--ct_auta_health
--Red +'s spawn for healing units
--by Sanada (derived from tpdollar by Knorke)

return {
  ["ct_aura_health"] = {
    resdropoff = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      useairlos          = true,
      water              = true,
      alwaysVisible = 0,
	  properties = {
        alwaysVisible = 0,
		airdrag            = 0.9,
        colormap           = [[0.8 0.0 0.0 0.8    0.8 0.2 0.02 0.6    0.8 0.4 0.4 0.4]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 10,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.1 r0.1, 0]],
        numparticles       = 1,
        particlelife       = 50,
        particlelifespread = 10,
        particlesize       = 2,
        particlesizespread = 5,
        particlespeed      =  1.5,
        particlespeedspread = 2.5,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[ct_health]],
      },
    },
  },

}