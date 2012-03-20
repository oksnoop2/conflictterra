--ct_missiletail_small
--Rocket exhaust for small missiles (particles and explospikes)
--by Sanada

return {
  ["ct_missiletail_small"] = {
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
        colormap           = [[1 0.65 0 0.25	    1 0.4 0 0.15     1 0.15 0 0.05]],
        directional        = 1,
        emitrot            = 15,
        emitrotspread      = 10,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 8,
        particlelife       = 4,
        particlelifespread = 3,
        particlesize       = 3,
        particlesizespread = 3,
        particlespeed      = 2,
        particlespeedspread = 1,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 0.7,
        texture            = [[ct_smoke]],
      },
    },
	
	spikes = {
	  air				= true,
	  class				= [[CExploSpikeProjectile]],
	  count				= 3,
	  ground			= true,
	  underwater		= true,
	  useairlos			= true,
	  water				= true,
	  alwaysvisible		= false,
	  properties		= {
		dir				= [[dir]],
		width			= 3.5,
		length			= 8,
		alpha			= 1,
		alphadecay		= 0.35,
		color			= [[1, 0.6, 0]],
	  },
	},	
  },
}