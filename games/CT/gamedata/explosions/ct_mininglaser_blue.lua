    --ct_mininglaser_blue
    --Blue mining laser
    --by Sanada
    
    --yanom: this file controls the long thin "laser" beam.

    return {
        ["ct_mininglaser_blue"] = {
            bitmapmuzzleflame = {
                ground             = true,
                air                = true,
                water              = true,
                class              = [[CBitmapMuzzleFlame]],
                count              = 1,
                underwater         = 1,
                properties = {
                    colormap           = [[0.2 0.2 1 0.5        0.2 0.2 1 0.5]], --Colour map progress from one to next. Colors in RGBA
                    dir                = [[dir]],
                    frontoffset        = 0,
                    fronttexture       = [[ct_machinegun_front]],
                    length             = 45,
                    sidetexture        = [[ct_bigbeam]],
                    size               = 0.5,
                    sizegrowth         = 1,
                    ttl                = 10,
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
                    [1]  = 0,
                    [2]  = 0,
                    [3]  = 0.8,
                },
            },
        },
    }
