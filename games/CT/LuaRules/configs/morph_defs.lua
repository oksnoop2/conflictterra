--------------------------------------------------------------------------------

-- Example:
--  bprimarycruiser = {
--    {
--      into = 'bprimarycruiserbase',
--      metal = 0,
--      energy = 0,
--      time = 5,
--      texture = 'bprimarycruiserbase.png',			--Button image
--      text = 'Deploy into the Mobile Headquarters',	--Tooltip text
--      name = 'Deploy',								--Text over button
--    },
--  },

-------------------------------------------------------------------------------- 
local morphDefs = {
 
  bprimarycruiser = {
    {
      into = 'bprimarycruiserbase',
      metal = 0,
      energy = 0,
      time = 5,
      text = 'Deploy into the Mobile Headquarters',
      name = 'Deploy',
    },
  },
 
  bprimarycruiserbase = {
    {
      into = 'bprimarycruiser',
      metal = 0,
      energy = 0,
      time = 5,
	  text = 'Mobilize into the Oda Class Cruiser',
      name = 'Mobilize',
    },
  },

-----
 
  bsupplydepot = {
    {
      into = 'bsupplydepotmobile',
      metal = 0,
      energy = 0,
      time = 4,
	  text = 'Mobilize into the Mobilized Resource Ship',
      name = 'Mobilize',	  
    },
  },
 
  bsupplydepotmobile = {
    {
      into = 'bsupplydepot',
      metal = 0,
      energy = 0,
      time = 4,
	  text = 'Deploy into the Resource Drop Zone',
      name = 'Deploy',	  
    },
  },

-----
 
  bmechcruiser = {
    {
      into = 'bmechcruiserfactory',
      metal = 0,
      energy = 0,
      time = 5,
	  text = 'Deploy the Saito Class Cruiser',
      name = 'Deploy',	  
    },
  },
 
  bmechcruiserfactory = {
    {
      into = 'bmechcruiser',
      metal = 0,
      energy = 0,
      time = 5,
	  text = 'Mobilize into the Saito Class Cruiser',
      name = 'Mobilize',	  
    },
  },

-----
 
  btankcruiser = {
    {
      into = 'btankcruiserfactory',
      metal = 0,
      energy = 0,
      time = 5,
	  text = 'Deploy the Mori Class Cruiser',
      name = 'Deploy',	  
    },
  },
 
  btankcruiserfactory = {
    {
      into = 'btankcruiser',
      metal = 0,
      energy = 0,
      time = 5,
	  text = 'Mobilize into the Mori Class Cruiser',
      name = 'Mobilize',	  
    },
  },

-----
 
  baircruiser = {
    {
      into = 'baircruiserfactory',
      metal = 0,
      energy = 0,
      time = 5,
	  text = 'Deploy the Azai Class Cruiser',
      name = 'Deploy',	  
    },
  },
 
  baircruiserfactory = {
    {
      into = 'baircruiser',
      metal = 0,
      energy = 0,
      time = 5,
	  text = 'Mobilize into the Azai Class Cruiser',
      name = 'Mobilize',	  
    },
  },

-----

  kdroneengineer = {
    {
      into = 'kdroneminingtower',
      metal = 0,
      energy = 50,
      time = 5,
	  text = 'Transform into the Drone Mining Tower',
      name = 'Transform',	  
    },
  },
 
  kdroneminingtower = {
    {
      into = 'kdroneengineer',
      metal = 0,
      energy = 50,
      time = 5,
	  text = 'Transform into the Drone Builder',
      name = 'Transform',	  
    },
  },
 }
 
 
return morphDefs
 
--------------------------------------------------------------------------------