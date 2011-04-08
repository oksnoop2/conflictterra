--orc_machinegun_muzzle

return {
	["experiment_muzzle"] = {
		bitmapmuzzleflame = {
			ground             = true,
			air                = true,
			water              = true,
			class              = [[CBitmapMuzzleFlame]],
			count              = 1,
			underwater         = 1,
			properties = {
				colormap           = [[0 0 1 0.01	    1 0 1 0.01     1 0 0 0.01]], --Colour map progress from one to next. Colors in RGBA
				dir                = [[dir]],
				frontoffset        = 0,
				fronttexture       = [[experiment_front]],
				length             = 50,
				sidetexture        = [[experiment_side]],
				size               = 20,
				sizegrowth         = 5,
				ttl                = 20,
			},
		},
	},
}
