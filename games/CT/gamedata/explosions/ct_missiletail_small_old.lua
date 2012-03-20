	--ct_missiletail_small_old
	--Rocket exhaust for a Small Missile (old, MuzzleFlame)
	--by Sanada

	return {
		["ct_missiletail_small_old"] = {
			bitmapmuzzleflame = {
				ground             = true,
				air                = true,
				water              = true,
				class              = [[CBitmapMuzzleFlame]],
				count              = 1,
				underwater         = 1,
				properties = {
					colormap           = [[1 1 0 1	    1 1 0 1     1 0.5 0 1]], --Colour map progress from one to next. Colors in RGBA
					dir                = [[dir]],
					frontoffset        = 1,
					fronttexture       = [[ct_jumpjet_front]],
					length             = 10,
					sidetexture        = [[ct_missiletail_side]],
					size               = 1,
					sizegrowth         = 1,
					ttl                = 1,
				},
			},
		},
	}
