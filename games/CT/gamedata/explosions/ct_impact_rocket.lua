--ct_impact_rocket
--Impact CEG for rockets (unguided missiles)
--by Sanada

return {
  ["ct_impact_rocket"] = {
    Poof01 = {
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
        particlelife       = 10,
        particlelifespread = 5,
        particlesize       = 20,
        particlesizespread = 0,
        particlespeed      = 5,
        particlespeedspread = 5,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
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
      color = [[0.9 0.5 0.2]],
      alwaysvisible=0,
	  air=1,
      ground=1,
      water=1,
   },
  
  },


}