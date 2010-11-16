--a cartoony dollar spray effect by knorke
--used by miners when they return full of resources
--looks okay
--this version: only one dollar sign, call numerous times for "clouds"
return {
  ["resdropoff_singleparticle"] = {
    resdropoff_singleparticle = {
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
        colormap           = [[0.0 0.8 0.0 0.8    0.2 0.8 0.02 0.6    0.4 0.8 0.4 0.4     0.8 0.8 0.8 0.1]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 10,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.1 r0.1, 0]],
        numparticles       = 1,
        particlelife       = 50,
        particlelifespread = 10,
        particlesize       = 10,
        particlesizespread = 10,
        particlespeed      =  1.5,
        particlespeedspread = 2.5,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[tpdollar]],
      },
    },
  },

}