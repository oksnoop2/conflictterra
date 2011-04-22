
return {
	["ct_jumpjet"] = {
		bitmapmuzzleflame = {
			ground             = true,
			air                = true,
			water              = true,
			class              = [[CBitmapMuzzleFlame]],
			count              = 1,
			underwater         = 1,
			properties = {
				colormap           = [[0 0 0.85 1	    0 0.85 0.85 1     0 0.5 1 1]], --Colour map progress from one to next. Colors in RGBA
				dir                = [[dir]],
				frontoffset        = 0,
				fronttexture       = [[ct_jumpjet_front]],
				length             = 15,
				sidetexture        = [[ct_jumpjet_side]],
				size               = 3,
				sizegrowth         = 1,
				ttl                = 1,
			},
		},

		groundflash = {
			air                = true,
			ground             = true,
			water              = true,
			circlealpha        = 0.6,
			circlegrowth       = 0,
			flashalpha         = 0.2,
			flashsize          = 10,
			ttl                = 17, --Time To Live
			--Red Green Blue
			color = {
				[1]  = 0,
				[2]  = 0,
				[3]  = 1,
			},
		},
	},
}
