	--ct_binderbeam
	--For "binding" the Drone's air drones
	--by Sanada and Oksnoop2

	return {
		["ct_binderbeam"] = {
			bitmapmuzzleflame = {
				ground             = true,
				air                = true,
				water              = true,
				class              = [[CBitmapMuzzleFlame]],
				count              = 1,
				underwater         = 1,
				alwaysVisible      = false,
				properties = {
					colormap           = [[0 0.85 0 1	    0 0.85 0 1     0 0.85 0 1]], --Colour map progress from one to next. Colors in RGBA
					dir                = [[dir]],
					frontoffset        = 0.5,
					fronttexture       = [[]],
					length             = 7,
					sidetexture        = [[ct_binderbeam_side]],
					size               = 2,
					sizegrowth         = 1,
					ttl                = 1,
				},
			},
		},
	}