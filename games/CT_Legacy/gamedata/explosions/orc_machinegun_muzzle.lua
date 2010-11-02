--orc_machinegun_muzzle

return {
	["orc_machinegun_muzzle"] = {
		bitmapmuzzleflame = {
			ground             = true,
			air                = true,
			water              = true,
			class              = [[CBitmapMuzzleFlame]],
			count              = 1,
			underwater         = 1,
			properties = {
				colormap           = [[1 1 1 0.01	    1 0.8 0 0.01     0 0 0 0.01]], --Colour map progress from one to next. Colors in RGBA
				dir                = [[dir]],
				frontoffset        = 0,
				fronttexture       = [[orc_machinegun_front]],
				length             = 11,
				sidetexture        = [[orc_machinegun_side]],
				size               = 3,
				sizegrowth         = 1,
				ttl                = 2,
			},
		},
	},
}
