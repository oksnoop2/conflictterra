--ct_weldingsparks
--Welding sparks CEG for builder units
--by Sanada, using a lot of values from buildersparks.tdf

return {
  ["ct_weldingsparks"] = {
    shootingsparks = {
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
        --colormap           = [[1 1 0.8 0.3    1 1 0.9 0.2    1 1 1 0.1]],  --yellow to white
        colormap           = [[0.4 0.5 0.9 0.04	0.1 0.4 0.1 0.01	0.1 0.1 0.5 0.01]],  --blue and green		
        directional        = 1,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -1, 0]],
        numparticles       = 5,
        particlelife       = 4,
        particlelifespread = 5,
        particlesize       = 1,
        particlesizespread = 0,
        particlespeed      = 2,
        particlespeedspread = 1,
        pos                = [[r3, 0, r3]],
        sizegrowth         = 0.7,
        sizemod            = 0.5,
        texture            = [[tpsmoke2]],
      },
    },

    glow = {
	  air                  = true,
	  class                = [[CHeatCloudProjectile]],
	  count                = 1,
	  ground               = true,
	  underwater           = 1,
	  useairlos            = true,
	  water                = true,
	  alwaysVisible        = 0,
	  properties = {
	    heat                = 6,
		maxheat             = 6,
		heatFalloff         = 2,
		size                = 1,
		sizeGrowth          = 2,
		pos                 = [[0, 1, 0]],
		speed               = [[0, 1, 0]],
		texture             = [[laserend]],
	  },
    },	
  },
}