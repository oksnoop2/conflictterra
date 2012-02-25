--ct_firetrail
--Fire trail for falling meteors
--by Knorke, modified by Sanada

return {
  ["ct_firetrail"] = {
    fireball1 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      useairlos          = true,
      water              = true,
      alwaysVisible = 1,
	  properties = {
        alwaysVisible = 1,
		airdrag            = 0.9,
        colormap           = [[1.0 0.8 0.6 0.04   0.9 0.5 0.2 0.01  0.8 0.1 0.1 0.01  0 0 0 0.25     0 0 0 0.1]],		
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 10,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 50,
        particlelifespread = 50,
        particlesize       = 13,
        particlesizespread = 10,
        particlespeed      = 0,
        particlespeedspread = 1.5,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0.8,
        sizemod            = 1.0,
        texture            = [[tpsmoke2]],
      },
    },
  },

}