--ct_jumpjet
--Jumpjet CEG for jumpjet mechs
--by Sanada (derived from tpdollar by Knorke)

return {
  ["ct_jumpjet"] = {
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
        colormap           = [[0 0 0.85 0.3	    0 0.85 0.85 0.2     0 0.4 0.8 0.15     0 0.3 0.6 0.1     0 0.1 0.4 0.05     0 0 0.2 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 20,
        emitvector         = dir,
        gravity            = [[0, 0.1 r0.1, 0]],
        numparticles       = 2,
        particlelife       = 3,
        particlelifespread = 1,
        particlesize       = 4,
        particlesizespread = 5,
        particlespeed      =  1.5,
        particlespeedspread = 2.5,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 0.9,
        texture            = [[ct_jumpjet_particle]],
      },
    },
  },

}