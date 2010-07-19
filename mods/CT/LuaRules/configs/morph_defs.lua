--------------------------------------------------------------------------------

local morphDefs = {

  bflagship2 = {
    {
      into = 'bflagshipbase',
      metal = 0,
      energy = 0,
      time = 5,
    },
    {
      into = 'bbattleflagship',
      metal = 9600,
      energy = 12000,
      time = 120,
    },
  },

  bflagshipbase = {
    {
      into = 'bflagship2',
      metal = 0,
      energy = 0,
      time = 5,
    },
  },

  bmex = {
    {
      into = 'badvmex',
      metal = 400,
      energy = 500,
      time = 60,
    },
  },

  baatruck = {
    {
      into = 'baatruckturret',
      metal = 0,
      energy = 0,
      time = 2,
    },
  },

  baatruckturret = {
    {
      into = 'baatruck',
      metal = 0,
      energy = 0,
      time = 2,
    },
  },

  bempcannon = {
    {
      into = 'bempcannonturret',
      metal = 0,
      energy = 0,
      time = 3,
    },
  },

  bempcannonturret = {
    {
      into = 'bempcannon',
      metal = 0,
      energy = 0,
      time = 3,
    },
  },

  bmetaltruck = {
    {
      into = 'bmetaltruckdepot',
      metal = 0,
      energy = 0,
      time = 2,
    },
  },

  bmetaltruckdepot = {
    {
      into = 'bmetaltruck',
      metal = 0,
      energy = 0,
      time = 2,
    },
  },

  benergytruck = {
    {
      into = 'benergytruckdepot',
      metal = 0,
      energy = 0,
      time = 2,
    },
  },

  benergytruckdepot = {
    {
      into = 'benergytruck',
      metal = 0,
      energy = 0,
      time = 2,
    },
  },

  bmetalsupplyship = {
    {
      into = 'bmetalsupplyshipdepot',
      metal = 0,
      energy = 0,
      time = 4,
    },
  },

  bmetalsupplyshipdepot = {
    {
      into = 'bmetalsupplyship',
      metal = 0,
      energy = 0,
      time = 4,
    },
  },

  benergysupplyship = {
    {
      into = 'benergysupplyshipdepot',
      metal = 0,
      energy = 0,
      time = 4,
    },
  },

  benergysupplyshipdepot = {
    {
      into = 'benergysupplyship',
      metal = 0,
      energy = 0,
      time = 4,
    },
  },

  bmechfactory = {
    {
      into = 'badvmechfactory',
      metal = 800,
      energy = 1000,
      time = 60,
    },
  },

  btankfactory = {
    {
      into = 'badvtankfactory',
      metal = 800,
      energy = 1000,
      time = 60,
    },
  },

  bairport = {
    {
      into = 'badvairport',
      metal = 800,
      energy = 1000,
      time = 60,
    },
  },

  bshipyard = {
    {
      into = 'badvshipyard',
      metal = 800,
      energy = 1000,
      time = 60,
    },
  },

  bsubpens = {
    {
      into = 'badvsubpens',
      metal = 800,
      energy = 1000,
      time = 60,
    },
  },

  blanddefship = {
    {
      into = 'blanddefmobileship',
      metal = 0,
      energy = 0,
      time = 5,
    },
  },

  blanddefmobileship = {
    {
      into = 'blanddefship',
      metal = 0,
      energy = 0,
      time = 5,
    },
  },

  bairdefship = {
    {
      into = 'bairdefmobileship',
      metal = 0,
      energy = 0,
      time = 5,
    },
  },

  bairdefmobileship = {
    {
      into = 'bairdefship',
      metal = 0,
      energy = 0,
      time = 5,
    },
  },

  bnavydefship = {
    {
      into = 'bnavydefmobileship',
      metal = 0,
      energy = 0,
      time = 5,
    },
  },

  bnavydefmobileship = {
    {
      into = 'bnavydefship',
      metal = 0,
      energy = 0,
      time = 5,
    },
  },
}


return morphDefs

--------------------------------------------------------------------------------