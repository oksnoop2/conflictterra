--------------------------------------------------------------------------------
 
local morphDefs = {
 
  bprimarycruiser = {
    {
      into = 'bprimarycruiserbase',
      metal = 0,
      energy = 0,
      time = 5,
    },
  },
 
  bprimarycruiserbase = {
    {
      into = 'bprimarycruiser',
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
  },
 
  bmechcruiserfactory = {
    {
      into = 'bmechcruiser',
      metal = 0,
      energy = 100,
      time = 5,
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
  },
 
  btankcruiserfactory = {
    {
      into = 'btankcruiser',
      metal = 0,
      energy = 100,
      time = 5,
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