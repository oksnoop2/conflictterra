--ct_aura_heal
--Effect for the Heal Aura
--by Sanada

return {
  ["ct_aura_heal"] = {
    aura = {
      air                = true,
      class              = [[CSimpleGroundFlash]],
      count              = 3,
      ground             = true,
      underwater         = 1,
      useairlos          = true,
      water              = true,
      alwaysVisible      = 0,
	  properties = {
        size               = 500,
		sizegrowth         = 1,
		ttl                = 32,
		texture            = [[ct_health]],
        colormap           = [[0.8 0.0 0.0 0.8	0.8 0.0 0.0 0.8]],		
      },
    },
  },
}