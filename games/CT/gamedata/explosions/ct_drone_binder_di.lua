	--ct_drone_binder_di
	--Binding beam for Di Air Drone
	--by Sanada

	return {
		["ct_drone_binder_di"] = {
			explospikeprojectile = {
				ground             = true,
				air                = true,
				water              = true,
				class              = [[CExploSpikeProjectile]],
				count              = 4,
				underwater         = 1,
				properties = {
					length			= 2,
					width			= 3,
					alpha			= 1,
					alphaDecay		= 0.1,
					dir				= [[dir]],
					color			= [[0, 1, 0]],

				},
			},

			cloudpoof = {
				air                  = true,
				class                = [[CHeatCloudProjectile]],
				count                = 2,
				ground               = true,
				underwater           = 1,
				useairlos            = true,
				water                = true,
				alwaysVisible        = true,
				properties = {
					heat                = 5,
					maxheat             = 10,
					heatFalloff         = 0.8,
					size                = 6,
					sizeGrowth          = 0,
					pos                 = [[r-2 r2, 0, r-2 r2]],
					speed               = [[0, 0 1, 0]],
					texture             = [[tpsmoke_green]],
	  },
    },				
			
		},
	}
