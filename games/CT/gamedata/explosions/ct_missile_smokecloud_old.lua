	--ct_missile_smokecloud_old
	--Smoke cloud "muzzle flare" for missile and rocket attacks (old, MuzzleFlare)
	--by Sanada

	return {
		["ct_missile_smokecloud_old"] = {
			bitmapmuzzleflame = {
				ground             = true,
				air                = true,
				water              = true,
				class              = [[CBitmapMuzzleFlame]],
				count              = 1,
				underwater         = 1,
				properties = {
					colormap           = [[0.9 0.9 0.9 1	    0.8 0.8 0.8 1     0.8 0.8 0.8 1     0.7 0.7 0.7 1     0.6 0.6 0.6 1     0.5 0.5 0.5 0.9     0.4 0.4 0.4 0.8     0.3 0.3 0.3 0.7     0.2 0.2 0.2 0.6     0.1 0.1 0.1 0.5]], --Colour map progress from one to next. Colors in RGBA
					dir                = [[dir]],
					frontoffset        = 0.5,
					fronttexture       = [[ct_smokecloud]],
					length             = 16,
					sidetexture        = [[ct_missile_smokecloud_side]],
					size               = 6,
					sizegrowth         = 1,
					ttl                = 20,
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
