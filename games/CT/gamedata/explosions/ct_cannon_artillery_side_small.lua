	--ct_cannon_artillery_side_small
	--Small side muzzle flares for artillery
	--by Sanada

	return {
		["ct_cannon_artillery_side_small"] = {
			bitmapmuzzleflame1 = {
				ground             = true,
				air                = true,
				water              = true,
				class              = [[CBitmapMuzzleFlame]],
				count              = 1,
				underwater         = 1,
				properties = {
					colormap           = [[1 1 0 1	    1 1 0 1     1 0.5 0 1]], --Colour map progress from one to next. Colors in RGBA
					dir                = [[dir]],
					frontoffset        = 0.5,
					fronttexture       = [[ct_cannon_tank]],
					length             = 12,
					sidetexture        = [[ct_cannon_artillery_side]],
					size               = 5,
					sizegrowth         = 1,
					ttl                = 10,
				},
			},

			groundflash = {
				air                = true,
				ground             = true,
				water              = true,
				circlealpha        = 0.6,
				circlegrowth       = 0,
				flashalpha         = 0.2,
				flashsize          = 20,
				ttl                = 8, --Time To Live
				--Red Green Blue
				color = {
					[1]  = 1,
					[2]  = 0.8,
					[3]  = 0,
				},
			},
		},
	}
