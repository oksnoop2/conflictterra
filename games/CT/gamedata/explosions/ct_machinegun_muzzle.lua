
return {
	["ct_machinegun_muzzle"] = {
		bitmapmuzzleflame = {
			ground             = true,
			air                = true,
			water              = true,
			class              = [[CBitmapMuzzleFlame]],
			count              = 1,
			underwater         = 1,
			properties = {
				colormap           = [[1 0.9 0 0.01	    1 0.7 0 0.01     1 0.5 0 0.01]], --Colour map progress from one to next. Colors in RGBA
				dir                = [[dir]],
				frontoffset        = 0,
				fronttexture       = [[ct_machinegun_front]],
				length             = 12,
				sidetexture        = [[ct_machinegun_side]],
				size               = 4,
				sizegrowth         = 1,
				ttl                = 3,
			},
		},

--		bitmapmuzzleflameinner = {
--			ground             = true,
--			air                = true,
--			water              = true,
--			class              = [[CBitmapMuzzleFlame]],
--			count              = 1,
--			underwater         = 1,
--			properties = {
--				colormap           = [[1 0.8 0 0.01	    1 0.5 0 0.01     1 0.3 0 0.01]], --Colour map progress from one to next. Colors in RGBA
--				dir                = [[dir]],
--				frontoffset        = 0,
--				fronttexture       = [[ct_machinegun_front]],
--				length             = 7,
--				sidetexture        = [[ct_machinegun_side]],
--				size               = 2,
--				sizegrowth         = 1,
--				ttl                = 2,
--			},
--		},

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
				[1]  = 1,
				[2]  = 0.8,
				[3]  = 0,
			},
		},
	},
}
