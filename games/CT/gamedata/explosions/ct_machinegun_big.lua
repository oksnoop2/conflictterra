--ct_machinegun_big
--Larger machine gun muzzle flare
--by Sanada

return {
  ["ct_machinegun_big"] = {
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
        frontoffset        = 0,
        fronttexture       = [[ct_machinegun_front]],
        length             = 12,
        sidetexture        = [[ct_machinegun_side]],
        size               = 4,
        sizegrowth         = 1,
        ttl                = 3,
      },
    },
  },
}