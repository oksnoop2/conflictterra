--mining effect by knorke, edited by Sanada
--flying dirt + ground flash

return {
  ["resmining_blue"] = {
    resdropoff = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 4,
      ground             = true,
      underwater         = 1,
      useairlos          = true,
      water              = true,
      alwaysVisible = 0,
	  properties = {
        alwaysVisible = 0,
		airdrag            = 0.9,
        colormap           = [[0.4 0.3 0.2 0.8    0.2 0.15 0.1 0.8    0.2 0.15 0.1 0.7     0.2 0.15 0.1 0.7]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 30,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.3, 0]],
        numparticles       = 1,
        particlelife       = 50,
        particlelifespread = 10,
        particlesize       = 5,
        particlesizespread = 10,
        particlespeed      = 10.5,
        particlespeedspread = .1,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 0.9,
        texture            = [[tpsmoke2]],
      },
    },
    ["groundflash"] = {
    
	alwaysVisible=0,
      flashSize = 80,
      flashAlpha = 0.95,
      circleGrowth = 0.8,
      circleAlpha = 0.3,
      ttl = 6,
      color = [[0.1 0.1 0.9]],
      alwaysvisible=0,
	  air=1,
      ground=1,
      water=1,
   },
  
  },


}