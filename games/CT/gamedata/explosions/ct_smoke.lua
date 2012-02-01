	--ct_smoke
	--Smoke
	--by Sanada

	return {
		["ct_smoke"] = {
			bitmapmuzzlesmoke1 = {
				ground             = true,
				air                = true,
				water              = true,
				class              = [[CBitmapMuzzleFlame]],
				count              = 1,
				underwater         = 1,
				properties = {
					colormap           = [[0.75 0.75 0.75 1	    0.75 0.75 0.75 0.9     0.75 0.75 0.75 0.8]], --Colour map progress from one to next. Colors in RGBA
					dir                = [[dir]],
					frontoffset        = 0,
					fronttexture       = [[]],
					length             = 15,
					sidetexture        = [[ct_cannon_tank]],
					size               = 10,
					sizegrowth         = 1,
					ttl                = 15,
				},
			},
		},
	}
