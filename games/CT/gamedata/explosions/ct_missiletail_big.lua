--ct_missiletail_big
--Rocket exhaust for a Big Missile (particles)
--by Sanada

return {
["ct_missiletail_big"] = {
    poof = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 2,
      ground             = true,
      underwater         = 1,
      useairlos          = true,
      water              = true,
      alwaysVisible      = true,
	  properties = {
        alwaysVisible      = true,
	    airdrag            = 0.95,
        colormap           = [[1 0.65 0 0.25	    1 0.2 0 0.15     0.2 0.2 0.2 0.5     0.2 0.2 0.2 0.1]],
        directional        = 1,
        emitrot            = 15,
        emitrotspread      = 10,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 8,
        particlelife       = 6,
        particlelifespread = 3,
        particlesize       = 4,
        particlesizespread = 4,
        particlespeed      = 2,
        particlespeedspread = 1,
        pos                = [[0, 0, 0]],
        sizegrowth         = 1,
        sizemod            = 0.7,
        texture            = [[ct_smoke]],
      },
    },
	
	spikes = {
	  air				= true,
	  class				= [[CExploSpikeProjectile]],
	  count				= 2,
	  ground			= true,
	  underwater		= true,
	  useairlos			= true,
	  water				= true,
	  alwaysvisible		= false,
	  properties		= {
		dir				= [[dir]],
		width			= 4,
		length			= 9,
		alpha			= 1,
		alphadecay		= 0.35,
		color			= [[1, 0.5, 0]],
	  },
	},	
  },
}