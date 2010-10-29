--digdig changed to look like firetrail of a meteor by knorke
--wow this looks ugly
return {
  ["fire"] = {
    dirt = {
      air                = true,
      count              = 2,
      ground             = true,
      properties = {
        color              = [[.3, .15, .02]],        
		lifetime           = 10,
        pos                = [[0, 0, 0]],
        size               = 80,
        sizeexpansion      = 10,
        slowdown           = .1,
        speed              = [[0.0025 r, 1 r1.0, 0.0025 r]],
		alwaysVisible = 1,
	  },
    },
  },

  ["firetrail"] = {
    burst = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 2,
      ground             = true,
      water              = true,
      properties = {
        delay              = [[0 i5]],
        explosiongenerator = [[custom:fire]],
        pos                = [[0, 0, 0]],
      },
    },
  },

}

