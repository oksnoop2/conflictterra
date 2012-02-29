--ct_impact_beamshot_green_aa
--Impact CEG for green AA beam weapons (Drone)
--by Sanada

return {
  ["ct_impact_beamshot_green_aa"] = {
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
        colormap           = [[1.0 1.0 1.0 0.04   0.2 0.9 0.2 0.01  0.1 0.8 0.1 0.01]],
        directional        = 1,
        emitrot            = 20,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.05, 0]],
        numparticles       = 5,
        particlelife       = 8,
        particlelifespread = 5,
        particlesize       = 8,
        particlesizespread = 0,
        particlespeed      = 3,
        particlespeedspread = 5,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 1,
        texture            = [[tpsmoke2]],
      },
    },
	
    dirtpoofs = {
      air                = false,
      class              = [[CSimpleParticleSystem]],
      count              = 3,
      ground             = true,
      underwater         = 1,
	  unit               = false,
	  nounit             = false,
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
        numparticles       = 10,
        particlelife       = 12,
        particlelifespread = 5,
        particlesize       = 2,
        particlesizespread = 0,
        particlespeed      = 8,
        particlespeedspread = 5,
        pos                = [[0, 2, 0]],
        sizegrowth         = 0,
        sizemod            = 1,
        texture            = [[tpsmoke2]],
      },
    },	
	
    ["groundflash"] = {
    
	alwaysVisible=0,
      flashSize = 24,
      flashAlpha = 0.95,
      circleGrowth = 0.8,
      circleAlpha = 0.3,
      ttl = 6,
      color = [[0.2 0.9 0.2]],
      alwaysvisible=0,
	  air=1,
      ground=1,
      water=1,
   },
  
  },


}