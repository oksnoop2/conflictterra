	--ct_missiletail_big_old
	--Rocket exhaust for a Big Missile (old, Muzzleflare)
	--by Sanada

	return {
		["ct_missiletail_big_old"] = {
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
					length             = 20,
					sidetexture        = [[ct_missiletail_side_big]],
					size               = 3,
					sizegrowth         = 1,
					ttl                = 1,
				},
			},
		},
	}
