--------------------------------------------------------------------------------
 
local morphDefs = {
 
  bflagship = {
    {
      into = 'bflagshipbase',
      metal = 0,
      energy = 0,
      time = 5,
    },
    {
      into = 'bbattleflagship',
      metal = 4000,
      energy = 4000,
      time = 120,
    }
  },
 
  bflagshipbase = {
    {
      into = 'bflagship',
      metal = 0,
      energy = 0,
      time = 5,
    },
  },

-----
 
  bsupplydepot = {
    {
      into = 'bsupplydepotmobile',
      metal = 0,
      energy = 0,
      time = 4,
    },
  },
 
  bsupplydepotmobile = {
    {
      into = 'bsupplydepot',
      metal = 0,
      energy = 0,
      time = 4,
    },
  },

-----
 
  bmechcruiser = {
    {
      into = 'bmechcruiserfactory',
      metal = 0,
      energy = 100,
      time = 5,
    },
    {
      into = 'badvmechcruiser',
      metal = 1200,
      energy = 1200,
      time = 60,
    },
  },
 
  bmechcruiserfactory = {
    {
      into = 'bmechcruiser',
      metal = 0,
      energy = 100,
      time = 5,
    },
    {
      into = 'badvmechcruiserfactory',
      metal = 1200,
      energy = 1200,
      time = 60,
    },
  },

-----
 
  btankcruiser = {
    {
      into = 'btankcruiserfactory',
      metal = 0,
      energy = 100,
      time = 5,
    },
    {
      into = 'badvtankcruiser',
      metal = 1200,
      energy = 1200,
      time = 60,
    },
  },
 
  btankcruiserfactory = {
    {
      into = 'btankcruiser',
      metal = 0,
      energy = 100,
      time = 5,
    },
    {
      into = 'badvtankcruiserfactory',
      metal = 1200,
      energy = 1200,
      time = 60,
    },
  },

-----
 
  baircruiser = {
    {
      into = 'baircruiserfactory',
      metal = 0,
      energy = 100,
      time = 5,
    },
  },
 
  baircruiserfactory = {
    {
      into = 'baircruiser',
      metal = 0,
      energy = 100,
      time = 5,
    },
  },

-----
 
  badvmechcruiser = {
    {
      into = 'badvmechcruiserfactory',
      metal = 0,
      energy = 0,
      time = 5,
    },
  },
 
  badvmechcruiserfactory = {
    {
      into = 'badvmechcruiser',
      metal = 0,
      energy = 0,
      time = 5,
    },
  },

-----
 
  badvtankcruiser = {
    {
      into = 'badvtankcruiserfactory',
      metal = 0,
      energy = 0,
      time = 5,
    },
  },
 
  badvtankcruiserfactory = {
    {
      into = 'badvtankcruiser',
      metal = 0,
      energy = 0,
      time = 5,
    },
  },

-----

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

-----

  kdroneengineer = {
    {
      into = 'kdroneminingtower',
      metal = 0,
      energy = 50,
      time = 5,
    },
  },
 
  kdroneminingtower = {
    {
      into = 'kdroneengineer',
      metal = 0,
      energy = 50,
      time = 5,
    },
  },
 }
 
 
return morphDefs
 
--------------------------------------------------------------------------------